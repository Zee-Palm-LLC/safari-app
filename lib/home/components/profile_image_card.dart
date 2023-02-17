import 'package:flutter/material.dart';

class ProfileImageCard extends StatelessWidget {
  final String imageSrc;
  const ProfileImageCard({super.key, required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(imageSrc), fit: BoxFit.cover)),
    );
  }
}
