import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/core/theme/app_dimensions.dart';
import 'package:foodie/features/profile/data/models/profile_page_model.dart';
import 'package:foodie/features/profile/presentation/providers/profile_notifier.dart';
import 'package:foodie/features/profile/presentation/widgets/profile_avatar_picker.dart';
import 'package:image_picker/image_picker.dart';

class Step1Identity extends ConsumerStatefulWidget {
  final ProfilePageModel pageData;
  final GlobalKey<FormState> formKey;

  const Step1Identity({
    super.key,
    required this.pageData,
    required this.formKey,
  });

  @override
  ConsumerState<Step1Identity> createState() => Step1IdentityState();
}

class Step1IdentityState extends ConsumerState<Step1Identity> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();

  String? _imagePath;

  bool validate() {
    return widget.formKey.currentState?.validate() ?? false;
  }

  @override
  void initState() {
    super.initState();
    _nameFocusNode.addListener(() {
      if (!_nameFocusNode.hasFocus) {
        final generated = _generateUsername(_nameController.text);
        if (generated.isNotEmpty && _usernameController.text.isEmpty) {
          setState(() {
            _usernameController.text = generated;
          });
          ref.read(profileProvider.notifier).updateUserName(generated);
        }
      }
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _usernameController.dispose();
    _nameFocusNode.dispose();
    super.dispose();
  }

//Validate name
  String? _validateName(String? value) {
    //check if name is not empty
    if (value == null || value.trim().isEmpty) return 'Name is required';
    //check is name is less than 1
    if (value.trim().length <= 1) return 'Name must be atleast 2 cahracters';
    return null;
  }

  //Validate username
  String? _validateUsername(String? value) {
    //check if username is not empty
    if (value == null || value.trim().isEmpty) return 'Username is required';
    //Check if username contains space
    if (value.contains(' ')) return 'Username cannot contain space';
    //Chek if username has matching characters
    if (!RegExp(r'^[a-z0-9._]+$').hasMatch(value)) {
      return 'Lowercase letter, numbers . and _ only';
    }
    return null;
  }

  // Genearate username from name(Can be edited)
  String _generateUsername(String name) {
    return name
        .trim()
        .toLowerCase()
        .replaceAll(' ', '.')
        .replaceAll(RegExp(r'[^a-z0-9._]'), '');
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() => _imagePath = image.path);
    }
  }

  Future<void> _takePhoto() async {
    //
    final picker = ImagePicker();

    final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() => _imagePath = image.path);
      ref.read(profileProvider.notifier).updateAvatarPath(image.path);
    }
  }

  void _removePhoto() {
    setState(() => _imagePath = null);
  }

  void _showAvatarOptions() {
    showModalBottomSheet(
      context: context,
      builder: (_) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from Gallery'),
              onTap: () {
                Navigator.pop(context);
                _pickImage();
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take Photo'),
              onTap: () {
                Navigator.pop(context);
                _takePhoto();
              },
            ),
            if (_imagePath != null)
              ListTile(
                leading: const Icon(Icons.delete, color: Colors.red),
                title: const Text('Remove Photo',
                    style: TextStyle(color: Colors.red)),
                onTap: () {
                  Navigator.pop(context);
                  _removePhoto();
                },
              ),
          ],
        ),
      ),
    );
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.pageData.title,
              style: textTheme.titleMedium,
            ),
            SizedBox(
              height: AppDimensions.spaceSM,
            ),
            Text(widget.pageData.subtitle),
            SizedBox(
              height: AppDimensions.spaceLG,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 100,
                  width: 100,
                  child: ProfileAvatarPicker(
                    onTap: _showAvatarOptions,
                    imagePath: _imagePath,
                  )),
            ),
            SizedBox(
              height: AppDimensions.spaceMD,
            ),
            Form(
                key: widget.formKey,
                child: Column(
                  children: [
                    TextFormField(
                      textCapitalization: TextCapitalization.words,
                      focusNode: _nameFocusNode,
                      validator: _validateName,
                      controller: _nameController,
                      onChanged: (value) {
                        ref.read(profileProvider.notifier).updateName(value);
                      },
                      decoration:
                          InputDecoration(hintText: 'John Doe', filled: false),
                    ),
                    SizedBox(
                      height: AppDimensions.spaceMD,
                    ),
                    TextFormField(
                      validator: _validateUsername,
                      controller: _usernameController,
                      onChanged: (value) {
                        ref
                            .read(profileProvider.notifier)
                            .updateUserName(value);
                      },
                      decoration:
                          InputDecoration(hintText: 'johndoe', filled: false),
                    ),
                  ],
                )),
            SizedBox(
              height: AppDimensions.spaceXXS,
            ),
            Text('This will be visible to restaurants')
          ],
        ),
      ),
    );
  }
}
