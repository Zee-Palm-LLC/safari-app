import 'package:flutter/material.dart';
import 'package:safari_app/models/tour_model.dart';

class TourImagesCard extends StatelessWidget {
  final Tour tour;
  final int index;
  const TourImagesCard({super.key, required this.tour, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: AssetImage(tour.images[index]), fit: BoxFit.cover)),
    );
  }
}
