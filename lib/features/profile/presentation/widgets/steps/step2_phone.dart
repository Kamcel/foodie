import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/core/widgets/app_button.dart';
import 'package:foodie/core/widgets/checkbox_tile.dart';
import 'package:foodie/features/auth/data/models/otp_args.dart';
import 'package:foodie/features/profile/presentation/providers/profile_notifier.dart';
import 'package:foodie/features/profile/presentation/widgets/information.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input_v2/intl_phone_number_input.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_dimensions.dart';
import '../../../data/models/profile_page_model.dart';

class Step2Phone extends ConsumerStatefulWidget {
  final ProfilePageModel pageData;

  const Step2Phone({
    super.key,
    required this.pageData,
  });

  @override
  ConsumerState<Step2Phone> createState() => _Step2PhoneState();
}

class _Step2PhoneState extends ConsumerState<Step2Phone> {
  PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'NG');
  bool _isValid = false;
  bool _enableWhatsapp = false;
  bool _isPhoneVerified = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(AppDimensions.spaceSM),
        decoration: BoxDecoration(
            color: colors.onSurface.withValues(alpha: .1),
            borderRadius: BorderRadius.circular(AppDimensions.radiusMD)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(widget.pageData.title, style: textTheme.titleMedium),

              const SizedBox(height: AppDimensions.spaceSM),

              // Subtitle
              Text(widget.pageData.subtitle),

              const SizedBox(height: AppDimensions.spaceLG),

              // Phone number input
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  setState(() {
                    _phoneNumber = number;
                  });
                  if (number.phoneNumber != null) {
                    ref
                        .read(profileProvider.notifier)
                        .updatePhone(number.phoneNumber!);
                  }
                },
                onInputValidated: (bool value) {
                  setState(() {
                    _isValid = value;
                  });
                },
                selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    setSelectorButtonAsPrefixIcon: true,
                    showFlags: true,
                    trailingSpace: false,
                    leadingPadding: 8),
                initialValue: _phoneNumber,
                autoValidateMode: AutovalidateMode.onUserInteraction,
                formatInput: true,
                inputDecoration: InputDecoration(
                  hintText: '802 345 6789',
                  filled: false,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radiusMD),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
                    borderSide: BorderSide(
                      color:
                          _isValid ? AppColors.success : colors.outlineVariant,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
                    borderSide: BorderSide(
                      color: _isValid ? AppColors.success : colors.primary,
                      width: 2,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
                    borderSide: BorderSide(color: colors.error, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppDimensions.radiusSM),
                    borderSide: BorderSide(color: colors.error, width: 2),
                  ),
                ),
              ),
              if (_isValid) ...[
                const SizedBox(
                  height: AppDimensions.spaceMD,
                ),
                AppButton(
                    label: 'Verify Phone Number',
                    isEnabled: true,
                    isLoading: false,
                    onPressed: () async {
                      final verified = await context.pushNamed('otp-verified',
                          extra: OtpArgs(
                              flow: OtpFlow.phoneVerification,
                              destination: _phoneNumber.phoneNumber ?? '',
                              destinationLabel: 'your phone'));

                      if (verified == true) {
                        setState(() => _isPhoneVerified = true);
                      }
                    }),
                if (_isPhoneVerified) ...[
                  const SizedBox(
                    height: AppDimensions.spaceSM,
                  ),
                  Row(children: [
                    Icon(Icons.check_circle, color: AppColors.success),
                    const SizedBox(width: AppDimensions.spaceXS),
                    Text('Phone verified')
                  ])
                ]
              ],

              const SizedBox(height: AppDimensions.spaceLG),

              // Privacy information
              Information(
                title: 'Privacy Protected',
                description:
                    'Your number is only shared with your delivery driver during active orders',
                icon: const Icon(
                  FontAwesomeIcons.shield,
                  color: AppColors.onInfoContainer,
                ),
                containerColor: AppColors.infoContainer.withValues(alpha: 0.7),
                onContainerColor: AppColors.onInfoContainer,
              ),

              const SizedBox(height: AppDimensions.spaceMD),

              // WhatsApp option
              CheckboxTile(
                value: _enableWhatsapp,
                onChanged: (v) {
                  setState(() {
                    _enableWhatsapp = v;
                  });
                  ref.read(profileProvider.notifier).updateWhatsapp(v);
                },
                title: 'Enable WhatsApp updates',
                subtitle: 'Get order tracking via WhatsApp',
                trailing: _buildTrailingIcon(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrailingIcon() {
    return const Icon(
      FontAwesomeIcons.whatsapp,
      size: 32,
    );
  }
}
