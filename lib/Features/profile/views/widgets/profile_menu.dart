import 'package:e_commerce_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    required this.onPress,
  });

  final String text, icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
          onPressed: onPress,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: const Color(0xFFF5F6F9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 22,
                colorFilter:
                    const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 16,
              )
            ],
          )),
    );
  }
}