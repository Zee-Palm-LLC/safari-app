import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safari_app/constants/assets.dart';
import 'package:safari_app/models/tour_model.dart';

import 'custom_play_icon.dart';

class AnimalCard extends StatelessWidget {
  final Tour tour;
  final VoidCallback onTap;
  const AnimalCard({super.key, required this.tour, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(tour.tourImage),
            fit: BoxFit.cover,
          )),
      child: Container(
        color: Colors.black.withOpacity(0.1),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const CustomPlayIcon(),
            const Spacer(),
            Text(
              tour.tourName,
              style: GoogleFonts.acme(color: Colors.white, fontSize: 40),
            ),
            Text(
              'Tour',
              style: GoogleFonts.acme(color: Colors.white, fontSize: 40),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(CustomAssets.kUserImage),
                ),
                const SizedBox(width: 5),
                CircleAvatar(
                  backgroundImage: AssetImage(CustomAssets.kUserImage),
                ),
                const SizedBox(width: 5),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Text(
                    "10+",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "${tour.events} events   -",
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 5),
                Text(
                  "${tour.places} places avaliable",
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    fixedSize: Size(Get.width, 60)),
                child: const Text(
                  "Choose Dates",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
