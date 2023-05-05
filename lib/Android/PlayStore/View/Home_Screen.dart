import 'package:flutter/material.dart';
import 'package:outcaster/Android/PlayStore/Provider/app_provider.dart';
import 'package:outcaster/Android/PlayStore/View/Game_Screen2.dart';
import 'package:outcaster/Android/PlayStore/View/game_screen.dart';
import 'package:provider/provider.dart';

Widget App(String? image,String? name)
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("$image",fit: BoxFit.fill,)),
      ),
      SizedBox(height: 7),
      Text("$name",style: TextStyle(fontSize: 14,color: Colors.black),),
      SizedBox(height: 5),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("4.2",style: TextStyle(fontSize: 12,color: Colors.black),),
          Icon(Icons.star,color: Colors.black,size: 12,)
        ],
      )
    ],
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
            GameScreen(),
            GameScreen2(),
            GameScreen2(),
            GameScreen(),
          ],
        ),
      ),
    );
  }
}
