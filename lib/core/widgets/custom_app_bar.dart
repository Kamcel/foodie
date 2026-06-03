import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/core/router/routes.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final VoidCallback? onBack;
  final bool showSkip;
  final VoidCallback? onSkip;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBack = true,
    this.onBack,
    this.actions,
    this.showSkip = false,
    this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final List<Widget> allActions = [];

    if (showSkip) {
      allActions.add(TextButton(
          onPressed: onSkip, child: Text('Skip', style: textTheme.bodyLarge)));
    }
    if (actions != null) {
      allActions.addAll(actions!);
    }
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showBack ? _buildBackButton(context) : null,
      title: Text(title, style: textTheme.displayMedium),
      actions: allActions.isNotEmpty ? allActions : null,
      leadingWidth: 100,
    );
  }

  Widget _buildBackButton(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return TextButton(
        onPressed: onBack ?? () {
          if (Navigator.of(context).canPop()) {
            context.pop();
          } else {
            context.go(Routes.restaurantScreen);
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              FontAwesomeIcons.chevronLeft,
              color: colors.primary,
            ),
            const SizedBox(
              width: AppDimensions.spaceXS,
            ),
            Text(
              'Back',
              style: textTheme.bodyLarge,
            )
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
