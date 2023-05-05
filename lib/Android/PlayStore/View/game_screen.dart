import 'package:flutter/material.dart';
import 'package:outcaster/Android/PlayStore/Model/app_model.dart';
import 'package:outcaster/Android/PlayStore/Provider/app_provider.dart';
import 'package:outcaster/Android/PlayStore/View/Home_Screen.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  AppProvider? pt;
  AppProvider? pf;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<AppProvider>(context,listen: false);
    pt = Provider.of<AppProvider>(context,listen: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommended for you",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward,color: Colors.grey,)
                ],
              ),
            ),
            Container(
              height: 170,
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: () {
                    AppModel a =AppModel(name:"${pf!.AppList[index].name}",img: "${pf!.AppList[index].img}");
                    Navigator.pushNamed(context, 'data',arguments: a);
                  },child: App("${pf!.AppList[index].img}", "${pf!.AppList[index].name}")),
                );
              },itemCount:pf!.AppList.length,
              scrollDirection: Axis.horizontal
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Suggested for you",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward,color: Colors.grey,)
                ],
              ),
            ),
            Container(
              height: 170,
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: () {
                    AppModel a =AppModel(name:"${pf!.AppList[index].name}",img: "${pf!.AppList[index].img}");
                    Navigator.pushNamed(context, 'data',arguments: a);
                  },child: App("${pf!.AppList[index].img}", "${pf!.AppList[index].name}")),
                );
              },itemCount:pf!.AppList.length,
                  scrollDirection: Axis.horizontal
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Newly-launched games",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward,color: Colors.grey,)
                ],
              ),
            ),
            Container(
              height: 170,
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: () {
                    AppModel a =AppModel(name:"${pf!.AppList[index].name}",img: "${pf!.AppList[index].img}");
                    Navigator.pushNamed(context, 'data',arguments: a);
                  },child: App("${pf!.AppList[index].img}", "${pf!.AppList[index].name}")),
                );
              },itemCount:pf!.AppList.length,
                  scrollDirection: Axis.horizontal
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular games",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward,color: Colors.grey,)
                ],
              ),
            ),
            Container(
              height: 170,
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: () {
                    AppModel a =AppModel(name:"${pf!.AppList[index].name}",img: "${pf!.AppList[index].img}");
                    Navigator.pushNamed(context, 'data',arguments: a);
                  },child: App("${pf!.AppList[index].img}", "${pf!.AppList[index].name}")),
                );
              },itemCount:pf!.AppList.length,
                  scrollDirection: Axis.horizontal
              ),
            )
          ],
        ),
      ),
    );
  }
}
