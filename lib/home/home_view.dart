import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safari_app/constants/assets.dart';
import 'package:safari_app/detailPage/detail_page_view.dart';
import 'package:safari_app/models/continent_model.dart';
import 'package:safari_app/models/tour_model.dart';

import 'components/animal_card.dart';
import 'components/continent_card.dart';
import 'components/profile_image_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedContinent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.black),
          )
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Safar\nTours  2019",
                  style: GoogleFonts.acme(
                      fontSize: 50, fontWeight: FontWeight.w500),
                ),
                ProfileImageCard(
                  imageSrc: CustomAssets.kUserImage,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 60,
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 24),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return ContinentCard(
                    isSelected: selectedContinent == index ? true : false,
                    continent: dummyContinents[index],
                    onTap: () {
                      setState(() {
                        selectedContinent = index;
                      });
                    },
                  );
                }),
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: dummyContinents.length),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 400,
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 24),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return AnimalCard(
                    tour: dummyTourList[index],
                    onTap: () {
                      Get.to(() => DetailPageView(tour: dummyTourList[index]));
                    },
                  );
                }),
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: dummyTourList.length),
          ),
        ],
      ),
    );
  }
}
