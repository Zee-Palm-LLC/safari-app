// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:safari_app/constants/assets.dart';

class ContinentModel {
  String name;
  String icon;
  String noOfSafaries;
  ContinentModel({
    required this.name,
    required this.icon,
    required this.noOfSafaries,
  });
}

List<ContinentModel> dummyContinents = [
  ContinentModel(
      name: 'AFRICA', icon: CustomAssets.kAfrice, noOfSafaries: "18"),
  ContinentModel(
      name: 'AUSTRALIA', icon: CustomAssets.kAustralia, noOfSafaries: "10")
];
