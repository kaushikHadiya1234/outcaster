import 'package:flutter/material.dart';
import 'package:outcaster/Android/PlayStore/Provider/app_provider.dart';
import 'package:outcaster/Android/PlayStore/View/Game_Screen2.dart';
import 'package:provider/provider.dart';

class AppScreen2 extends StatefulWidget {
  const AppScreen2({Key? key}) : super(key: key);

  @override
  State<AppScreen2> createState() => _AppScreen2State();
}

class _AppScreen2State extends State<AppScreen2> {
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
              height: 740,
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AppCart(index +1, "${pf!.AppList1[index].img}", "${pf!.AppList1[index].name}"),
                );
              },itemCount:pf!.AppList1.length,
                physics: BouncingScrollPhysics(),
              ),
            ),
            Container(
              height: 750,
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AppCart(index +9, "${pf!.AppList1[index].img}", "${pf!.AppList1[index].name}"),
                );
              },itemCount:pf!.AppList1.length,
                physics: BouncingScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
