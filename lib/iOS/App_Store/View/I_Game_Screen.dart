import 'package:flutter/cupertino.dart';
import 'package:outcaster/iOS/App_Store/Provider/app_provider.dart';
import 'package:provider/provider.dart';

class IGameScreen extends StatefulWidget {
  const IGameScreen({Key? key}) : super(key: key);

  @override
  State<IGameScreen> createState() => _IGameScreenState();
}

class _IGameScreenState extends State<IGameScreen> {
  AppStoreProvider? pt;
  AppStoreProvider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<AppStoreProvider>(context, listen: true);
    pf = Provider.of<AppStoreProvider>(context, listen: false);
    return CupertinoPageScaffold(
      child: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Game",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset("assets/images/ap1.jpg"),
                )
              ],
            ),
          ),
          Container(
            height: 350,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New Game",
                            style: TextStyle(color: CupertinoColors.activeBlue),
                          ),
                          Text(
                            "Warhammer AoS:Realm War",
                            style: TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Complete in thrilling battels",
                            style: TextStyle(
                                color: CupertinoColors.inactiveGray,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 270,
                      width: 370,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("${pf!.FList[index]}",fit: BoxFit.fill,)),
                    )
                  ],
                );
              },
              itemCount: pf!.FList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Discover AR Gaming",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: CupertinoColors.black),),
                Text("See All",style: TextStyle(fontSize:17,color: CupertinoColors.link ),)
              ],
            ),
          ),
          Container(
            height: 150,
            alignment: Alignment.centerLeft,
            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right:50.0),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('${pf!.AppList[index].img}',fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${pf!.AppList[index].name}",style: TextStyle(fontSize: 20),),
                        Text("Ultimate AR Pool",style: TextStyle(fontSize: 19,color: CupertinoColors.inactiveGray),),
                        SizedBox(height: 15),
                        Container(
                          height: 30,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: CupertinoColors.activeBlue.withOpacity(0.25)
                          ),
                          child: Text("Get",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold),),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
              itemCount: pf!.AppList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            height: 150,
            alignment: Alignment.centerLeft,
            child: ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right:50.0),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset('${pf!.AppList[index].img}',fit: BoxFit.fill,)),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${pf!.AppList[index].name}",style: TextStyle(fontSize: 20),),
                        Text("Ultimate AR Pool",style: TextStyle(fontSize: 19,color: CupertinoColors.inactiveGray),),
                        SizedBox(height: 15),
                        Container(
                          height: 30,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: CupertinoColors.activeBlue.withOpacity(0.25)
                          ),
                          child: Text("Get",style: TextStyle(color: CupertinoColors.activeBlue,fontWeight: FontWeight.bold),),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
              itemCount: pf!.AppList.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

}

