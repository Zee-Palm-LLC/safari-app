// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:safari_app/constants/assets.dart';

class Tour {
  String tourName;
  String events;
  String places;
  String tourImage;
  String description;
  List<String> images;
  List<String> tourDates;
  Tour(
      {required this.tourName,
      required this.events,
      required this.places,
      required this.tourDates,
      required this.images,
      required this.tourImage,
      required this.description});
}

List<Tour> dummyTourList = [
  Tour(
      tourName: 'Zebra',
      events: '4',
      places: '142',
      tourDates: ['15th August', '25th September'],
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      tourImage: CustomAssets.kZebra,
      images: [
        CustomAssets.kZebra,
        CustomAssets.kZebra1,
        CustomAssets.kZebra2,
        CustomAssets.kZebra2
      ]),
  Tour(
      tourName: 'Elephant',
      events: '7',
      tourDates: ['1st August', '5th September'],
      images: [
        CustomAssets.kElephant,
        CustomAssets.kElephant1,
        CustomAssets.kElephant2,
        CustomAssets.kElephant1
      ],
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      places: '102',
      tourImage: CustomAssets.kElephant)
];
