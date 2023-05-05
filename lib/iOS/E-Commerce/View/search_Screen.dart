import 'package:flutter/cupertino.dart';
import 'package:outcaster/iOS/E-Commerce/Provider/eProvider.dart';
import 'package:outcaster/iOS/E-Commerce/View/ecommerce.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Eprovider? pt;
  Eprovider? pf;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<Eprovider>(context, listen: false);
    pt = Provider.of<Eprovider>(context, listen: true);
    return CupertinoPageScaffold(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Container(margin:EdgeInsets.all(10),child: CupertinoSearchTextField()),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return MyUi(index);
              },
              itemCount: pf!.EList.length,
            ),
          )
        ],
      ),
    );
  }
  Widget MyUi(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 200,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("${pf!.EList[index].img}",fit: BoxFit.fill),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${pf!.EList[index].name}"),
                    Text("${pf!.EList[index].pr}",style: TextStyle(color: CupertinoColors.inactiveGray,fontSize: 15),),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.add_circled,
              color: CupertinoColors.link,
            ),
          ),
        ],
      ),
    );

    //   CupertinoListTile(
    //   leading: Container(
    //     height: 100,
    //     width: 100,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //     child: Image.asset("${pf!.EList[index].img}",fit: BoxFit.fill),
    //   ),
    //   title:
    //   subtitle:
    //   trailing:
    // );
  }
}
