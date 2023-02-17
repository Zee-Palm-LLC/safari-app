import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safari_app/constants/assets.dart';
import 'package:safari_app/models/continent_model.dart';

class ContinentCard extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final ContinentModel continent;
  const ContinentCard(
      {super.key,
      required this.isSelected,
      required this.onTap,
      required this.continent});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.brown.shade300
              : Colors.brown.shade300.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white.withOpacity(0.1)),
              child: SvgPicture.asset(
                continent.icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              continent.name,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : Colors.brown),
            ),
            const SizedBox(width: 20),
            Text(
              continent.noOfSafaries,
              style: TextStyle(
                  fontSize: 14,
                  color: isSelected ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
