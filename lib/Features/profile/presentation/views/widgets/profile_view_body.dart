import 'package:flutter/material.dart';

import 'profile_picture.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfilePicture(),
      ],
    );
  }
}
