import 'package:flutter/material.dart';
import 'package:outcaster/Android/PlayStore/Provider/app_provider.dart';
import 'package:outcaster/Android/PlayStore/View/App_Screen.dart';
import 'package:outcaster/Android/PlayStore/View/Home_Screen.dart';
import 'package:outcaster/Android/PlayStore/View/Home_Screen2.dart';
import 'package:provider/provider.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  AppProvider? pt;
  AppProvider? pf;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<AppProvider>(context,listen: false);
    pt = Provider.of<AppProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: pt!.i,
          children: [
            HomeScreen(),
            HomeScreen1(),
            HomeScreen(),
            HomeScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: pt!.i,
          type:BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green[900],
          unselectedItemColor: Colors.black,
          onTap: (value) {
            pf!.ChangeIndex(value);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.sports_esports),label: "Games"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded),label: "Apps"),
            BottomNavigationBarItem(icon: Icon(Icons.local_movies_outlined),label: "Movies & Tv"),
            BottomNavigationBarItem(icon: Icon(Icons.book),label: "Books"),
          ],
        ),
      ),
    );
  }
}
