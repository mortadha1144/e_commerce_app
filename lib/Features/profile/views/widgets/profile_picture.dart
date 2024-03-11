import 'dart:io';

import 'package:e_commerce_app/core/data/providers/upload_image_provider.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/cashed_image.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/features/auth/providers/user_provider.dart';
import 'package:e_commerce_app/features/profile/providers/update_user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicture extends HookConsumerWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userImage = ref.watch(userProvider)?.image;
    final isLoading = ref.watch(uploadImageProvider).isLoading ||
        ref.watch(updateUserProvider).isLoading;
    final profileImageFile = useState<XFile?>(null);
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          isLoading
              ? const CustomLoadingIndicator()
              : profileImageFile.value != null
                  ? CircleAvatar(
                      backgroundImage:
                          FileImage(File(profileImageFile.value!.path)),
                      radius: 100,
                    )
                  : CashedImage(
                      imageUrl: userImage,
                      placeholder: Assets.assetsImagesUserPlaceholder,
                      borderRadius: BorderRadius.circular(100),
                    ),
          Positioned(
            bottom: 0,
            right: -12,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.white)),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFFF5F6F9)),
                onPressed: () async {
                  final image = await ImagePicker().pickImage(
                    source: ImageSource.gallery,
                    imageQuality: 50,
                  );

                  if (image != null) {
                    final uploadImage =
                        await ref.read(uploadImageProvider.notifier).run(
                              File(image.path),
                            );
                    uploadImage.whenOrNull(
                      data: (uploadedImage) async {
                        final user = UserEdit(image: uploadedImage);
                        final updatedUser = await ref
                            .read(updateUserProvider.notifier)
                            .run(user);
                        updatedUser.whenOrNull(
                          data: (user) {
                            profileImageFile.value = image;
                            context.showSuccessSnackBar(
                                'Profile picture updated successfully');
                          },
                          error: (error) {
                            context.showErrorMessage(error);
                          },
                        );
                      },
                      error: (error) {
                        context.showErrorMessage(error);
                      },
                    );
                  }
                },
                child: SvgPicture.asset(Assets.assetsIconsCameraIcon),
              ),
            ),
          )
        ],
      ),
    );
  }
}
