import 'package:flutter/material.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:go_router/go_router.dart';

// SingleTickerProviderStateMixin gives our AnimationController its heartbeat.
// The "with" keyword is how you attach a mixin to a class in Dart.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // Declare the controller at the class level so all methods can access it.
  // It's late because we can't initialise it here — we need "this" (the
  // vsync parameter below), which only exists once the object is built.
  late final AnimationController _controller;

  // This is the curved version of the animation — it transforms the straight
  // 0.0→1.0 count into a gentle easeIn curve for a more natural feel.
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState(); // always call super first in initState

    // Create the clock. Duration is how long the fade takes.
    // vsync: this — "this" refers to our State class, which now has
    // a ticker thanks to SingleTickerProviderStateMixin.
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    // Wrap the controller in a curve so the fade feels natural.
    // Think of Curves.easeIn like easing into a chair — starts slow,
    // then settles smoothly into the final state.
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // .forward() starts the clock running from 0.0 to 1.0.
    // Without this line the animation just sits at 0.0 and nothing happens.
    _controller.forward();

    // After 3 seconds total, navigate away.
    // The logo has fully faded in well before this — the extra time
    // gives the user a moment to see the logo before moving on.
    Future.delayed(const Duration(seconds: 3), () {
      // Always check mounted before using context after an async gap.
      // The user could theoretically navigate away before 3 seconds is up.
      if (mounted) {
        context.go(Routes.restaurantScreen);
      }
    });
  }

  @override
  void dispose() {
    // This is critical. When the splash screen leaves the tree,
    // we must stop and clean up the controller to free memory.
    // Forgetting this is one of the most common Flutter memory leaks.
    _controller.dispose();
    super.dispose(); // always call super last in dispose
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.surface,
      body: Center(
        // FadeTransition listens to _fadeAnimation and automatically
        // repaints its child as the opacity value changes from 0.0 to 1.0.
        // This is more efficient than using setState because it bypasses
        // the normal rebuild cycle and updates only the opacity.
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Image.asset(
            'assets/images/logo.png',
            height: AppDimensions.imageXL,
            width: AppDimensions.imageXL,
            // contain preserves the full logo without cropping any edges
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
