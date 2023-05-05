import 'package:flutter/cupertino.dart';
import 'package:outcaster/iOS/E-Commerce/Provider/eProvider.dart';
import 'package:provider/provider.dart';

Eprovider? pt;
Eprovider? pf;

class Ecommerce extends StatefulWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  State<Ecommerce> createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {


  @override
  Widget build(BuildContext context) {
    pf = Provider.of<Eprovider>(context, listen: false);
    pt = Provider.of<Eprovider>(context, listen: true);
    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Cupertino Store",
              style: TextStyle(
                  fontSize: 25,
                  color: CupertinoColors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              height: 500,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return MyUi(index);
                },
                itemCount: pf!.EList.length,
              ),
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
