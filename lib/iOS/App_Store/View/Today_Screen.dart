import 'package:flutter/cupertino.dart';
import 'package:outcaster/iOS/App_Store/Provider/app_provider.dart';
import 'package:provider/provider.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {

  AppStoreProvider? pt;
  AppStoreProvider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<AppStoreProvider>(context,listen: true);
    pf = Provider.of<AppStoreProvider>(context,listen: false);
    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "WEDNESDAY,YESTERDAY 12",
              style: TextStyle(fontSize: 15, color: CupertinoColors.inactiveGray),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: CupertinoColors.black),),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                  ),
                  child: Image.asset("assets/images/ap1.jpg"),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return  Container(
                height:500,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("${pf!.FList[index]}",fit: BoxFit.fill,)),
              );
            },
              itemCount: pf!.FList.length,
            ),
          )
        ],
      ),
    );
  }
}
