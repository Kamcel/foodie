import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/core/theme/app_colors.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/profile/data/models/profile_page_model.dart';
import 'package:foodie/features/profile/presentation/providers/profile_notifier.dart';
import 'package:foodie/features/profile/presentation/widgets/information.dart';

class Step5WorkAddress extends ConsumerStatefulWidget {
  final ProfilePageModel pageData;
  final VoidCallback onSkip;

  const Step5WorkAddress(
      {super.key, required this.pageData, required this.onSkip});

  @override
  ConsumerState<Step5WorkAddress> createState() => _Step5WorkAddress();
}

class _Step5WorkAddress extends ConsumerState<Step5WorkAddress> {
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _cityNameController = TextEditingController();
  final TextEditingController _zipCodeController = TextEditingController();
  final TextEditingController _streetAddressController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _companyController.dispose();
    _cityNameController.dispose();
    _zipCodeController.dispose();
    _streetAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(AppDimensions.spaceSM),
      decoration: BoxDecoration(
          color: colors.onSurface.withValues(alpha: .1),
          borderRadius: BorderRadius.circular(AppDimensions.radiusMD)),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.pageData.title,
                    style: textTheme.titleMedium,
                  ),
                  TextButton(
                      onPressed: widget.onSkip,
                      child: Text(
                        'Skip',
                        style: textTheme.bodyLarge
                            ?.copyWith(color: colors.primary),
                      ))
                ],
              ),
              SizedBox(
                height: AppDimensions.spaceXXS,
              ),

              // Subtitle
              Text(widget.pageData.subtitle),
              SizedBox(
                height: AppDimensions.spaceLG,
              ),
              // Company Name
              TextFormField(
                controller: _companyController,
                onChanged: (value) {
                  ref.read(profileProvider.notifier).updateWorkName(value);
                },
                decoration:
                    InputDecoration(hintText: 'Acme Inc.', filled: false),
              ),

              const SizedBox(height: AppDimensions.spaceLG),

              //Row of State and Zip code ──────────────────────────────
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // State
                    Expanded(
                      child: TextFormField(
                        controller: _cityNameController,
                        onChanged: (value) {
                          ref
                              .read(profileProvider.notifier)
                              .updateWorkState(value);
                        },
                        decoration:
                            InputDecoration(hintText: 'Abuja', filled: false),
                      ),
                    ),

                    const SizedBox(width: AppDimensions.spaceSM),

                    // Zip code
                    Expanded(
                      child: TextFormField(
                        decoration:
                            InputDecoration(hintText: '94102', filled: false),
                        controller: _zipCodeController,
                        onChanged: (value) {
                          ref
                              .read(profileProvider.notifier)
                              .updateZipcode(value);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppDimensions.spaceMD,
              ),
              // Street Address
              TextFormField(
                controller: _streetAddressController,
                onChanged: (value) {
                  ref.read(profileProvider.notifier).updateWorkAddress(value);
                },
                decoration: InputDecoration(
                    hintText: '456 Market Street, Floor 5', filled: false),
              ),
              const SizedBox(height: AppDimensions.spaceMD),
              // Privacy information
              Information(
                title: 'Lunch Rush Ready',
                description:
                    'Adding a work address unlocks scheduled lunch deliveries and office group orders.',
                icon: const Icon(
                  FontAwesomeIcons.clock,
                  color: AppColors.tertiary,
                ),
                containerColor: AppColors.tertiary.withValues(alpha: 0.07),
                onContainerColor: AppColors.tertiary,
              ),

              const SizedBox(height: AppDimensions.spaceMD),
            ],
          ),
        ),
      ),
    );
  }
}
