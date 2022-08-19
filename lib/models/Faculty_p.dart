import 'package:flutter/cupertino.dart';

class DataModel {
  final String title;
  final String imageName;
  final String price;
  DataModel(
    this.title,
    this.imageName,
    this.price,
  );
}

List<DataModel> dataList = [
  DataModel("Dr. Mandeep Singh", "assets/pics/md singh thapar.jpeg",''),
  DataModel("Dr. Hemdutt Joshi", "assets/pics/DSC_1680.JPG", ''),
  DataModel("Dr. Devendar kumar", "assets/pics/1659105743133.JPG", ''),
  DataModel("Dr. Gitanjali Chandwani Manocha", "assets/pics/IMG-20220731-WA0003.jpg", ''),
];
