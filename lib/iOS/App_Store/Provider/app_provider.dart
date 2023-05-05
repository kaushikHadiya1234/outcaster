import 'package:flutter/cupertino.dart';
import 'package:outcaster/iOS/App_Store/Model/app_model.dart';

class AppStoreProvider extends ChangeNotifier
{
  List<String> FList = [
    "assets/images/ap2.jpg",
    "assets/images/ap3.jpg",
    "assets/images/ap4.jpg",
    "assets/images/ap5.jpg",
    "assets/images/ap6.jpg",
    "assets/images/ap7.jpg",
  ];

  List<AppModel> AppList = [
    AppModel(img: "assets/images/g1.jpg",name: "Mini Militia"),
    AppModel(img: "assets/images/g2.jpg",name: "Candy Cursh"),
    AppModel(img: "assets/images/g3.jpg",name: "Subway Surfers"),
    AppModel(img: "assets/images/g4.jpg",name: "Free Fire MAX"),
    AppModel(img: "assets/images/g5.jpg",name: "Hill Climb"),
    AppModel(img: "assets/images/g6.jpg",name: "Asphalt Nitro"),
    AppModel(img: "assets/images/g7.jpg",name: "Angry Birds"),
  ];

  List<AppModel> AppList1 = [
    AppModel(img: "assets/images/a1.jpg",name: "Facebook"),
    AppModel(img: "assets/images/a2.jpg",name: "Paytm:Seacure\nUPI Payments"),
    AppModel(img: "assets/images/a3.jpg",name: "Spotify:Music &\nPodcasts"),
    AppModel(img: "assets/images/a4.jpg",name: "Angel One:\nStocks,Mutual"),
    AppModel(img: "assets/images/a5.jpg",name: "OYO:Hotel\nBooking App"),
    AppModel(img: "assets/images/a6.jpg",name: "Microsoft Edge"),
    AppModel(img: "assets/images/a7.jpg",name: "Snapseed"),
    AppModel(img: "assets/images/a8.jpg",name: "Photoshop"),
  ];

}