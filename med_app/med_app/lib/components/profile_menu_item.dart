import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem({
    super.key,
    required this.iconAssetPath,
    required this.label
  });
  String iconAssetPath;
  String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(iconAssetPath),
          const SizedBox(width: 20,),
          Text(label, style: const TextStyle(
            fontFamily: "Montserrat",
            fontSize: 17,
            height: 24/17,
            fontWeight: FontWeight.w400,
            letterSpacing: 0
          ),)
        ],
      ),
    );
  }
}