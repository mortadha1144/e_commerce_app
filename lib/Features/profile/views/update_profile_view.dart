import 'dart:io';

import 'package:e_commerce_app/features/auth/views/widgets/custom_suffix_icon.dart';
import 'package:e_commerce_app/features/profile/providers/update_user_provider.dart';
import 'package:e_commerce_app/features/profile/providers/upload_profile_image_provider.dart';
import 'package:e_commerce_app/features/profile/views/widgets/profile_picture.dart';
import 'package:e_commerce_app/core/utils/constants/assets.dart';
import 'package:e_commerce_app/core/utils/extensions.dart';
import 'package:e_commerce_app/core/utils/hook/form_key.dart';
import 'package:e_commerce_app/core/utils/snackbar.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_button.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/utils/widgets/form_body.dart';
import 'package:e_commerce_app/features/auth/data/models/user_model.dart';
import 'package:e_commerce_app/features/auth/providers/user_provider.dart';
import 'package:e_commerce_app/validator/extension.dart';
import 'package:e_commerce_app/validator/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfileView extends HookConsumerWidget {
  const UpdateProfileView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final formKey = useFormKey();
    final displayNameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final addressController = useTextEditingController();
    final profileImageFile = useState<XFile?>(null);
    final userEdit = useState<UserEdit>(UserEdit());

    useEffect(() {
      displayNameController.text = user?.displayName ?? '';
      phoneNumberController.text = user?.phoneNumber ?? '';
      addressController.text = user?.address ?? '';
      return null;
    }, []);

    bool isLoading = ref.watch(updateUserProvider).isLoading ||
        ref.watch(uploadProfileImageProvider).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Profile'),
      ),
      body: FormBody(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        formKey: formKey,
        children: [
          ProfilePicture(
            imageUrl: user?.image,
            imageFilePath: profileImageFile.value?.path,
            isLoading: ref.watch(uploadProfileImageProvider).isLoading,
            onImageSelected: (file) async {
              final uploadImage = await ref
                  .read(uploadProfileImageProvider.notifier)
                  .run(File(file.path));
              uploadImage.whenOrNull(
                data: (data) {
                  profileImageFile.value = file;
                  userEdit.value = userEdit.value.copyWith(image: data);
                },
                error: (error) => context.showErrorMessage(error),
              );
            },
          ),
          const Gap(20),
          CustomTextFormField(
            controller: displayNameController,
            keyboardType: TextInputType.name,
            labelText: context.l10n.displayName,
            hintText: context.l10n.displayNameHint,
            suffixIcon: const CustomSuffixIcon(svgIcon: Assets.assetsIconsUser),
            validator: context.validator().required().build(),
          ),
          const Gap(30),
          CustomTextFormField(
            controller: phoneNumberController,
            keyboardType: TextInputType.phone,
            labelText: context.l10n.phoneNumber,
            hintText: context.l10n.phoneNumberHint,
            suffixIcon:
                const CustomSuffixIcon(svgIcon: Assets.assetsIconsPhone),
            validator: context.validator().phone().required().build(),
          ),
          const Gap(30),
          // address
          CustomTextFormField(
            controller: addressController,
            labelText: context.l10n.address,
            hintText: context.l10n.addressHint,
            suffixIcon: const CustomSuffixIcon(
                svgIcon: Assets.assetsIconsLocationpoint),
            validator: context.validator().minLength(5).build(),
          ),
          const Gap(40),
          CustomButton(
            text: 'Update',
            isLoading: ref.watch(updateUserProvider).isLoading,
            onPressed: isLoading
                ? null
                : () async {
                    if (formKey.isNotValid()) return;
                    final updateUser =
                        await ref.read(updateUserProvider.notifier).run(
                              userEdit.value.copyWith(
                                displayName: displayNameController.text,
                                phoneNumber: phoneNumberController.text,
                                address: addressController.text,
                              ),
                            );

                    updateUser.whenOrNull(
                      data: (data) {
                        context.showSuccessSnackBar(
                            'Profile updated successfully');
                        context.pop(true);
                      },
                      error: (error) => context.showErrorMessage(error),
                    );
                  },
          ),
        ],
      ),
    );
  }
}
