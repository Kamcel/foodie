import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileAvatarPicker extends StatelessWidget {
  final String? imagePath;
  final VoidCallback onTap;
  const ProfileAvatarPicker({super.key, this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
            onTap: onTap,
            child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: colors.outline, shape: BoxShape.circle),
                child: imagePath != null
                    ? ClipOval(
                        child: Image.file(
                          File(imagePath!),
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      )
                    : Icon(
                        FontAwesomeIcons.user,
                        size: 60,
                      ))),
        Positioned(
          bottom: -5,
          right: -2,
          child: Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(color: colors.primary, shape: BoxShape.circle),
              child: Icon(
                Icons.camera_alt_outlined,
                color: colors.onPrimary,
              )),
        )
      ],
    );
  }
}
