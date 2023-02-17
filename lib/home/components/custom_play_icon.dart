import 'package:flutter/material.dart';

class CustomPlayIcon extends StatelessWidget {
  const CustomPlayIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: const Icon(
        Icons.play_arrow,
        color: Colors.white,
      ),
    );
  }
}
