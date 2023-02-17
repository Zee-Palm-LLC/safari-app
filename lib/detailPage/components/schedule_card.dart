import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safari_app/constants/assets.dart';
import 'package:safari_app/models/tour_model.dart';

class ScheduleCard extends StatelessWidget {
  final String dates;

  const ScheduleCard({
    super.key,
    required this.dates,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              dates,
              style: GoogleFonts.acme(fontSize: 30, color: Colors.black),
            ),
          ),
          const Spacer(),
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
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25)),
                child: const Text(
                  "10+",
                  style: TextStyle(color: Colors.brown),
                ),
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          text: '65',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                          children: [
                        TextSpan(
                          text: '/70',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ])),
                  const Text(
                    "Places",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
