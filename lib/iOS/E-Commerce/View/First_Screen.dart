import 'package:flutter/cupertino.dart';
import 'package:outcaster/iOS/E-Commerce/View/Cart_Screen.dart';
import 'package:outcaster/iOS/E-Commerce/View/ecommerce.dart';
import 'package:outcaster/iOS/E-Commerce/View/search_Screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  List ScreenList= [
    Ecommerce(),
    SearchScreen(),
    CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CupertinoTabScaffold(
          tabBar:CupertinoTabBar(
            items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Product"),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: "Cart"),
            ],
          ),
          tabBuilder: (context, index) {
            return ScreenList[index];
          },
        )
    );
  }
}
