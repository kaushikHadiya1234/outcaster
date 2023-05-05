import 'package:flutter/cupertino.dart';
import 'package:outcaster/iOS/App_Store/View/IAppScreen.dart';
import 'package:outcaster/iOS/App_Store/View/I_Game_Screen.dart';
import 'package:outcaster/iOS/App_Store/View/Today_Screen.dart';

class IHomeScreen extends StatefulWidget {
  const IHomeScreen({Key? key}) : super(key: key);

  @override
  State<IHomeScreen> createState() => _IHomeScreenState();
}

class _IHomeScreenState extends State<IHomeScreen> {
  List<Widget> ScreenList1 = [
    TodayScreen(),
    IGameScreen(),
    IAppScreen(),
    TodayScreen(),
    TodayScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.app_fill),label: "Today"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.rocket_fill),label: "Games"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.layers_alt_fill),label: "App"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_arrow_down_fill),label: "Update"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
          ],
        ),
        tabBuilder: (context, index) {
          return ScreenList1[index];
        },
      ),
    );
  }
}
