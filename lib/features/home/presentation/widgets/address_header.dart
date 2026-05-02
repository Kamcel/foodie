import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/profile/presentation/providers/profile_notifier.dart';

class AddressHeader extends ConsumerStatefulWidget {
  final VoidCallback onTap;
  const AddressHeader({super.key, required this.onTap});

  @override
  ConsumerState<AddressHeader> createState() => _AddressHeaderState();
}

class _AddressHeaderState extends ConsumerState<AddressHeader> {
  String get _greeting {
    final hour = DateTime.now().hour;
    if (hour < 12) return 'Good Morning';
    if (hour > 12 && hour < 17) return 'Good Afternoon';
    return 'Good Evening';
  }

  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(profileProvider);
    final hasWork = profileState.workAddress.isNotEmpty;
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DELIVERED TO',
                  style: textTheme.titleSmall,
                ),
                SizedBox(
                  height: AppDimensions.spaceXS,
                ),
                Row(
                  children: [
                    Text(
                      profileState.isHomeAddress
                          ? 'My Appartment'
                          : 'My Office',
                      style: textTheme.titleLarge,
                    ),
                    SizedBox(
                      width: AppDimensions.spaceXS,
                    ),
                    if (hasWork)
                      GestureDetector(
                        onTap: () => ref
                            .read(profileProvider.notifier)
                            .toggleDeliveryAddress(),
                        child: Icon(
                          Icons.expand_more,
                          color: colors.primary,
                          size: 40,
                        ),
                      )
                  ],
                )
              ],
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: profileState.avatarPath.isNotEmpty
                  ? FileImage(File(profileState.avatarPath))
                  : null,
              child: profileState.avatarPath.isEmpty
                  ? Icon(
                      Icons.person,
                      size: 30,
                    )
                  : null,
            )
          ],
        ),
        SizedBox(
          height: AppDimensions.spaceMD,
        ),
        Text(
          '$_greeting, ${profileState.name}',
          style: textTheme.titleLarge,
        )
      ],
    );
  }
}
