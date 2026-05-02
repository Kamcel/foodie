// lib/features/profile/presentation/screens/step3_home_address.dart

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/core/models/location_model.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_snackbar.dart';
import 'package:foodie/features/profile/data/models/profile_page_model.dart';
import 'package:foodie/features/profile/presentation/providers/location_notifier.dart';
import 'package:foodie/features/profile/presentation/providers/profile_notifier.dart';
import 'package:foodie/features/profile/presentation/widgets/information.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Step3HomeAddress extends ConsumerStatefulWidget {
  final ProfilePageModel pageData;

  const Step3HomeAddress({
    super.key,
    required this.pageData,
  });

  @override
  ConsumerState<Step3HomeAddress> createState() => _Step3HomeAddressState();
}

class _Step3HomeAddressState extends ConsumerState<Step3HomeAddress> {
  final _streetController = TextEditingController();
  final _instructionController = TextEditingController();
  String? _detectedAddress;
  bool _isLocating = false;

  @override
  void dispose() {
    _streetController.dispose();
    _instructionController.dispose();
    super.dispose();
  }

  String? _validateStreet(String? value) {
    if (value == null || value.trim().isEmpty) return 'Street is required';
    return null;
  }

  Future<void> _useCurrentLocation() async {
    setState(() => _isLocating = true);

    try {
      // Step 1 — check permission
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          AppSnackbar.show(context,
              message: 'Location permission denied', type: SnackbarType.error);
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        AppSnackbar.show(context,
            message:
                'Location permission permanently denied. Enable it in settings.',
            type: SnackbarType.error);
        return;
      }

      // Step 2 — get coordinates
      final position = await Geolocator.getCurrentPosition();

      // Step 3 — convert to address
      final placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        final street = '${place.street ?? ''}';
        final fullAddress =
            '${place.street}, ${place.locality}, ${place.administrativeArea}, ${place.country}';

        setState(() {
          _detectedAddress = fullAddress;
          _streetController.text = street;
        });

        // Save street to notifier
        ref.read(profileProvider.notifier).updateStreet(street);
      }
    } catch (e) {
      AppSnackbar.show(context,
          message: 'Could not get location. Try again.',
          type: SnackbarType.error);
    } finally {
      setState(() => _isLocating = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final locationState = ref.watch(locationProvider);
    final notifier = ref.read(locationProvider.notifier);

    return Container(
      padding: const EdgeInsets.all(AppDimensions.spaceSM),
      decoration: BoxDecoration(
        color: colors.onSurface.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Title + Subtitle ────────────────────────────────
            Text(widget.pageData.title, style: textTheme.titleMedium),
            const SizedBox(height: AppDimensions.spaceXS),
            Text(widget.pageData.subtitle),
            const SizedBox(height: AppDimensions.spaceMD),

            // ── Use Current Location Button ──────────────────────
            GestureDetector(
              onTap: () {
                // TODO: implement GPS location
              },
              child: GestureDetector(
                onTap: _isLocating ? null : _useCurrentLocation,
                child: DottedBorder(
                  color: colors.primary,
                  strokeWidth: 2,
                  dashPattern: const [6, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(AppDimensions.radiusSM),
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spaceXXL,
                    vertical: AppDimensions.spaceMD,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_isLocating)
                        const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        )
                      else
                        Icon(
                          FontAwesomeIcons.locationCrosshairs,
                          color: colors.primary,
                        ),
                      const SizedBox(width: AppDimensions.spaceSM),
                      Text(
                        _isLocating
                            ? 'Detecting location...'
                            : 'Use Current Location',
                        style: textTheme.bodyLarge?.copyWith(
                          color: colors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: AppDimensions.spaceSM,
            ),
            if (_detectedAddress != null) ...[
              Container(
                padding: const EdgeInsets.all(AppDimensions.spaceMD),
                decoration: BoxDecoration(
                  color: colors.primaryContainer,
                  borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: colors.primary),
                    const SizedBox(
                      width: AppDimensions.spaceXS,
                    ),
                    Expanded(
                        child: Text(
                      _detectedAddress!,
                      style: textTheme.bodySmall,
                    ))
                  ],
                ),
              )
            ],

            const SizedBox(height: AppDimensions.spaceSM),

            // ── Or divider ───────────────────────────────────────
            const Align(
              alignment: Alignment.center,
              child: Text('or enter manually'),
            ),

            const SizedBox(height: AppDimensions.spaceMD),

            // ── Country + State Row ──────────────────────────────
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Country
                  Expanded(
                    child: DropdownButtonFormField<LocationModel>(
                      initialValue: locationState.selectedCountry,
                      isExpanded: true,
                      hint: Text(
                        locationState.isLoadingCountries
                            ? 'Loading...'
                            : 'Country',
                        overflow: TextOverflow.ellipsis,
                      ),
                      items: locationState.countries.map((country) {
                        return DropdownMenuItem<LocationModel>(
                          value: country,
                          child: Text(
                            country.name,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: locationState.isLoadingCountries
                          ? null
                          : (country) {
                              if (country != null) {
                                notifier.selectCountry(country);
                                ref
                                    .read(profileProvider.notifier)
                                    .updateCountry(country);
                              }
                            },
                    ),
                  ),

                  const SizedBox(width: AppDimensions.spaceSM),

                  // State
                  Expanded(
                    child: DropdownButtonFormField<LocationModel>(
                      initialValue: locationState.selectedState,
                      isExpanded: true,
                      hint: Text(
                        locationState.isLoadingStates ? 'Loading...' : 'State',
                        overflow: TextOverflow.ellipsis,
                      ),
                      items: locationState.states.map((state) {
                        return DropdownMenuItem<LocationModel>(
                          value: state,
                          child: Text(
                            state.name,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      }).toList(),
                      onChanged: (locationState.selectedCountry == null ||
                              locationState.isLoadingStates)
                          ? null
                          : (state) {
                              if (state != null) {
                                notifier.selectState(state);
                                ref
                                    .read(profileProvider.notifier)
                                    .updateState(state);
                              }
                            },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppDimensions.spaceMD),

            // ── City full width ──────────────────────────────────
            DropdownButtonFormField<LocationModel>(
              initialValue: locationState.selectedCity,
              isExpanded: true,
              hint: Text(
                locationState.isLoadingCities
                    ? 'Loading cities...'
                    : 'Select City',
                overflow: TextOverflow.ellipsis,
              ),
              items: locationState.cities.map((city) {
                return DropdownMenuItem<LocationModel>(
                  value: city,
                  child: Text(
                    city.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              }).toList(),
              onChanged: (locationState.selectedState == null ||
                      locationState.isLoadingCities)
                  ? null
                  : (city) {
                      if (city != null) {
                        notifier.selectCity(city);
                        ref.read(profileProvider.notifier).updateCity(city);
                      }
                    },
            ),

            const SizedBox(height: AppDimensions.spaceMD),

            // ── Street Address ───────────────────────────────────
            TextFormField(
              validator: _validateStreet,
              onChanged: (value) {
                ref.read(profileProvider.notifier).updateStreet(value);
              },
              controller: _streetController,
              decoration: InputDecoration(
                labelText: 'Street Address',
                filled: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
                ),
              ),
            ),

            const SizedBox(height: AppDimensions.spaceMD),

            // ── Delivery Instructions ────────────────────────────
            TextFormField(
              controller: _instructionController,
              maxLines: 3,
              decoration: InputDecoration(
                filled: false,
                labelText: 'Delivery Instructions (Optional)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
                ),
              ),
            ),

            const SizedBox(height: AppDimensions.spaceMD),

            // ── Info Card ────────────────────────────────────────
            Information(
              title: 'Save as "Home" for quick reordering',
              icon: const Icon(FontAwesomeIcons.star),
              containerColor: AppColors.warningContainer,
              onContainerColor: AppColors.onWarningContainer,
            ),
          ],
        ),
      ),
    );
  }
}
