import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safari_app/constants/assets.dart';
import 'package:safari_app/home/components/custom_play_icon.dart';
import 'package:safari_app/models/tour_model.dart';

import 'components/schedule_card.dart';
import 'components/tour_image_card.dart';

class DetailPageView extends StatelessWidget {
  final Tour tour;
  const DetailPageView({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(tour.tourImage), fit: BoxFit.cover)),
        child: Container(
          width: Get.width,
          height: Get.height,
          color: Colors.black.withOpacity(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: CustomPlayIcon(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  '${tour.tourName} Tour',
                  style: GoogleFonts.acme(fontSize: 50, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  tour.description,
                  style: GoogleFonts.acme(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 70,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemBuilder: (context, index) {
                      if (index == 3) {
                        return Container(
                          height: 70,
                          width: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text("10+",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600)),
                        );
                      }
                      return TourImagesCard(
                        index: index,
                        tour: tour,
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: tour.images.length > 3 ? 4 : tour.images.length),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 230,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(left: 24),
                    itemBuilder: (context, index) {
                      return ScheduleCard(
                        dates: tour.tourDates[index],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                    itemCount: tour.tourDates.length),
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}
