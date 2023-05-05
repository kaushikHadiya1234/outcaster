import 'package:flutter/cupertino.dart';
import 'package:outcaster/iOS/E-Commerce/Model/Emodel.dart';

class Eprovider extends ChangeNotifier
{
  List<EModel> EList = [
    EModel(img: "assets/images/ie1.jpg",name: 'One plus',pr: '\$50'),
    EModel(img: "assets/images/ie2.jpg",name: 'Bag',pr: '\$10'),
    EModel(img: "assets/images/ie3.jpg",name: 'Shirt',pr: '\$20'),
    EModel(img: "assets/images/ie4.jpg",name: 'Smart Watch',pr: '\$50'),
    EModel(img: "assets/images/ie5.jpg",name: 'Ac',pr: '\$70'),
    EModel(img: "assets/images/ie6.jpg",name: 'Bluetooth',pr: '\$30'),
  ];

  DateTime time = DateTime.now();

  void Changedate(DateTime d1)
  {
    time = d1 ;
    notifyListeners();
  }
}