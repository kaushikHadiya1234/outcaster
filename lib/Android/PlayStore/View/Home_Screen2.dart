import 'package:flutter/material.dart';
import 'package:outcaster/Android/PlayStore/Provider/app_provider.dart';
import 'package:outcaster/Android/PlayStore/View/App_Screen.dart';
import 'package:outcaster/Android/PlayStore/View/App_Screen2.dart';
import 'package:provider/provider.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  AppProvider? pt;
  AppProvider? pf;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<AppProvider>(context,listen: false);
    pt = Provider.of<AppProvider>(context,listen: true);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.grey)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.grey)),
                suffixIcon: Icon(Icons.mic,color: Colors.black,),
                prefixIcon: Icon(Icons.menu,color: Colors.black,),
                hintText: "Search for app & Games",
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.green,
            tabs: [
              Tab(child: Text("For you",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
              Tab(child: Text("Top Cart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
              Tab(child: Text("Chidren",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
              Tab(child: Text("Categorie",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AppScreen(),
            AppScreen2(),
            AppScreen2(),
            AppScreen(),
          ],
        ),
      ),
    );
  }
}
