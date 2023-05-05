import 'package:flutter/material.dart';
import 'package:outcaster/Android/PlayStore/Model/app_model.dart';
import 'package:outcaster/Android/PlayStore/Provider/app_provider.dart';
import 'package:provider/provider.dart';
Widget AppCart(int? index,String? image,String? name)
{
  return Row(
    children: [
      Text("$index",style: TextStyle(fontSize: 15),),
      SizedBox(width: 10),
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("$image",fit: BoxFit.fill,)),
      ),
      SizedBox(width: 15),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$name"),
          Text("Action-Casual-Offline"),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("4.2",style: TextStyle(fontSize: 12,color: Colors.black),),
              Icon(Icons.star,color: Colors.black,size: 12,),
              SizedBox(width: 10),
              Text("90 MB"),
            ],
          )
        ],
      )
    ],
  );
}
class GameScreen2 extends StatefulWidget {
  const GameScreen2({Key? key}) : super(key: key);

  @override
  State<GameScreen2> createState() => _GameScreen2State();
}

class _GameScreen2State extends State<GameScreen2> {

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
            Container(
              height: 630,
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(onTap: () {
                    AppModel a =AppModel(name:"${pf!.AppList[index].name}",img: "${pf!.AppList[index].img}");
                    Navigator.pushNamed(context, 'data',arguments: a);
                  },child: AppCart(index +1, "${pf!.AppList[index].img}", "${pf!.AppList[index].name}")),
                );
              },itemCount:pf!.AppList.length,
                physics: BouncingScrollPhysics(),
              ),
            ),
            Container(
              height: 650,
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(onTap: () {
                    AppModel a =AppModel(name:"${pf!.AppList[index].name}",img: "${pf!.AppList[index].img}");
                    Navigator.pushNamed(context, 'data',arguments: a);
                  },child: AppCart(index +8, "${pf!.AppList[index].img}", "${pf!.AppList[index].name}")),
                );
              },itemCount:pf!.AppList.length,
                physics: BouncingScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
