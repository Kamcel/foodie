import 'package:flutter/material.dart';
import 'package:foodie/features/tracking/data/models/tracking.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key, required Tracking orderId});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
