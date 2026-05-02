import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/widgets/app_snackbar.dart';
import 'package:foodie/core/widgets/custom_app_bar.dart';
import 'package:foodie/features/profile/data/constants/profile_constant.dart';
import 'package:foodie/features/profile/presentation/providers/profile_notifier.dart';
import 'package:foodie/features/profile/presentation/widgets/steps/step1_identity.dart';
import 'package:foodie/features/profile/presentation/widgets/steps/step2_phone.dart';
import 'package:foodie/features/profile/presentation/widgets/steps/step3_home_address.dart';
import 'package:foodie/features/profile/presentation/widgets/steps/step4_dietary.dart';
import 'package:foodie/features/profile/presentation/widgets/steps/step5_work_address.dart';
import 'package:foodie/features/profile/presentation/widgets/steps/step6_cusines.dart';
import 'package:go_router/go_router.dart';

class ProfileSetupScreen extends ConsumerStatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  ConsumerState<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends ConsumerState<ProfileSetupScreen> {
  final PageController _pageController = PageController();
  int _currentStep = 0;
  int _currentPage = 0;
  final int _totalPage = 6;
  final _formKeys = List.generate(6, (_) => GlobalKey<FormState>());

  void _validateAndProceed() {
    final profileState = ref.read(profileProvider);

    //general skip

    // Step 1- name and username must both be filled
    if (_currentPage == 0) {
      if (profileState.name.trim().isEmpty ||
          profileState.userName.trim().isEmpty) {
        AppSnackbar.show(
          context,
          message: 'Please enter your name and username',
          type: SnackbarType.error,
        );
        return;
      }
    }

    //Step 2- phone and whatsapp validation
    if (_currentPage == 1) {
      if (profileState.phone.isEmpty == true) {
        AppSnackbar.show(context,
            message: 'Phone number cannot be empty', type: SnackbarType.error);
        return;
      }
    }

    //Step 3 - location
    if (_currentPage == 2) {
      if (profileState.selectCountry == null ||
          profileState.selectState == null ||
          profileState.selectCity == null) {
        AppSnackbar.show(context,
            message: 'Please select your country, state, city',
            type: SnackbarType.error);
        //TODO: Add return null is api is ready
        //return null;
      }
      if (profileState.street.trim().isEmpty) {
        AppSnackbar.show(context,
            message: 'Please enter your street address',
            type: SnackbarType.error);
        return null;
      }
    }

    //Step 6 - Favorite Cuisine
    if (_currentPage == 5) {
      if (profileState.cuisines.length < 3) {
        AppSnackbar.show(context,
            message: 'Please select atleast 3 cuisines',
            type: SnackbarType.error);
      }
    }

    if (_currentPage < _totalPage - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }

    if (_currentPage == _totalPage - 1) {
      ref.read(profileProvider.notifier).saveProfile();
      context.goNamed('upcoming');
    }
  }

  void _nextPage() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final steps = [
      Step1Identity(
        pageData: profilePageData[0],
        formKey: _formKeys[0],
      ),
      Step2Phone(
        pageData: profilePageData[1],
      ),
      Step3HomeAddress(
        pageData: profilePageData[2],
      ),
      Step4Dietary(
        pageData: profilePageData[3],
      ),
      Step5WorkAddress(
        pageData: profilePageData[4],
        onSkip: _nextPage,
      ),
      Step6Cusines(
        pageData: profilePageData[5],
      )
    ];

    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: colors.surface,
      appBar: CustomAppBar(
        title: '',
        showBack: false,
        showSkip: true,
        onSkip: () {
          ref.read(profileProvider.notifier).saveProfile();
          context.goNamed('upcoming'); //TODO: wire to home when page is ready
        },
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spaceMD),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: List.generate((_totalPage * 2) - 1, (index) {
                if (index.isOdd) return const SizedBox(width: 8);
                final int stepIndex = index ~/ 2;
                final bool isActive = stepIndex <= _currentStep;
                return Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: isActive
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.outlineVariant,
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            Text(
              'Step ${_currentPage + 1}  of $_totalPage',
              style: textTheme.bodyMedium,
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            Text(
              'Create your Profile',
              style: textTheme.displayLarge,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            Expanded(
              child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                      _currentStep = index;
                    });
                  },
                  children: steps),
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            Row(
              children: [
                if (_currentPage > 0) ...[
                  Expanded(
                    flex: 1,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppDimensions.spaceMD)),
                        onPressed: _previousPage,
                        child: Text('Back')),
                  ),
                  const SizedBox(
                    width: AppDimensions.spaceSM,
                  ),
                ],
                Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppDimensions.spaceMD),
                            backgroundColor: colors.primary,
                            foregroundColor: colors.onPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    AppDimensions.radiusMD))),
                        onPressed: _validateAndProceed,
                        child: Text(_currentPage == _totalPage - 1
                            ? 'Finish'
                            : 'Continue')))
              ],
            )
          ],
        ),
      )),
    );
  }
}
