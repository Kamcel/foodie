import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/orders/data/models/order.dart';
import 'package:latlong2/latlong2.dart';

class TrackingScreen extends StatefulWidget {
  final Order order;

  const TrackingScreen({super.key, required this.order});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  // 📍 Simulated Coordinates (Using coordinates for Lagos, Nigeria as a baseline)
  final LatLng _restaurantLocation = const LatLng(6.5244, 3.3792); 
  final LatLng _deliveryLocation = const LatLng(6.5350, 3.3900);   

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Track Order - ${widget.order.id}'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          // ── 1. THE INTERACTIVE OPEN STREET MAP LAYER ────────
          FlutterMap(
            options: MapOptions(
              initialCenter: _restaurantLocation, // Focus on the food origin
              initialZoom: 14.0,
            ),
            children: [
              // Pulls free open-source map graphics tiles
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.kamcel.foodie',
              ),
              
              // ── 2. THE ROUTE POLYLINE (The Road Path) ────────
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: [_restaurantLocation, _deliveryLocation],
                    strokeWidth: 5.0,
                    color: colors.primary, // Uses your theme accent color
                  ),
                ],
              ),

              // ── 3. MAP MARKERS (Pins) ────────────────────────
              MarkerLayer(
                markers: [
                  // Restaurant Pin
                  Marker(
                    point: _restaurantLocation,
                    width: 40,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: colors.primaryContainer,
                        shape: BoxShape.circle,
                        border: Border.all(color: colors.primary, width: 2),
                      ),
                      child: Icon(Icons.restaurant, color: colors.primary, size: 20),
                    ),
                  ),
                  // Delivery Destination Pin
                  Marker(
                    point: _deliveryLocation,
                    width: 40,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: colors.errorContainer,
                        shape: BoxShape.circle,
                        border: Border.all(color: colors.error, width: 2),
                      ),
                      child: Icon(Icons.pin_drop, color: colors.error, size: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // ── 4. FLOATING RIDER STATUS CARD ───────────────────
          Positioned(
            bottom: AppDimensions.spaceLG,
            left: AppDimensions.spaceMD,
            right: AppDimensions.spaceMD,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppDimensions.radiusLG),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppDimensions.spaceMD),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: colors.surfaceContainerHighest,
                      child: Icon(Icons.directions_bike, color: colors.primary),
                    ),
                    const SizedBox(width: AppDimensions.spaceMD),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            widget.order.riderName ?? 'Rider Assigned',
                            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'On the way with your order',
                            style: textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: colors.primaryContainer,
                        borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
                      ),
                      child: Text(
                        widget.order.estimatedDeliveryTime ?? 'Calculating...',
                        style: textTheme.bodyMedium?.copyWith(
                          color: colors.onPrimaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
