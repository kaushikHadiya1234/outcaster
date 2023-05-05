import 'package:flutter/cupertino.dart';
import 'package:outcaster/iOS/E-Commerce/Provider/eProvider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController txtname = TextEditingController(text: "Name");
  TextEditingController txtmail = TextEditingController(text: "Email");
  TextEditingController txtloc = TextEditingController(text: "location");

  Eprovider? pt;
  Eprovider? pf;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<Eprovider>(context, listen: false);
    pt = Provider.of<Eprovider>(context, listen: true);
    return CupertinoPageScaffold(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            "Shopping Cart",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: CupertinoColors.black),
          ),
          CupertinoTextField(
            controller: txtname,
            decoration: BoxDecoration(),
            prefix: Icon(
              CupertinoIcons.person,
              color: CupertinoColors.inactiveGray,
            ),
          ),
          Container(height: 1, color: CupertinoColors.inactiveGray),
          CupertinoTextField(
            controller: txtmail,
            decoration: BoxDecoration(),
            prefix: Icon(
              CupertinoIcons.mail,
              color: CupertinoColors.inactiveGray,
            ),
          ),
          Container(
              height: 1, color: CupertinoColors.inactiveGray.withOpacity(0.5)),
          CupertinoTextField(
            controller: txtloc,
            decoration: BoxDecoration(),
            prefix: Icon(
              CupertinoIcons.location_solid,
              color: CupertinoColors.inactiveGray,
            ),
          ),
          Container(height: 1, color: CupertinoColors.inactiveGray),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    CupertinoIcons.time,
                    color: CupertinoColors.inactiveGray,
                  ),
                  Text(
                    "Dilevary Time",
                    style: TextStyle(
                        fontSize: 20, color: CupertinoColors.inactiveGray),
                  ),
                ],
              ),
              Text(
                "${pt!.time.day} / ${pt!.time.month} / ${pt!.time.year}  ${pt!.time.hour} : ${pt!.time.minute}",
                style:
                    TextStyle(color: CupertinoColors.systemGrey3, fontSize: 20),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 220,
              child: CupertinoDatePicker(
                onDateTimeChanged: (value) {
                  DateTime? temp;
                  temp = value;
                  pf!.Changedate(temp);
                },
                mode: CupertinoDatePickerMode.dateAndTime,
                initialDateTime: DateTime.now(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 500,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return MyUi1(index);
                },
                itemCount: pf!.EList.length,
              ),
            ),
          ),
          Container(
            height: 110,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Shipping \$21",style: TextStyle(color: CupertinoColors.inactiveGray,fontSize: 18),),
                Text("Text \$10",style: TextStyle(color: CupertinoColors.inactiveGray,fontSize: 18),),
                Text("Total \$261",style: TextStyle(color: CupertinoColors.black,fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget MyUi1(int index) {
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
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                      Image.asset("${pf!.EList[index].img}", fit: BoxFit.fill),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${pf!.EList[index].name}"),
                    Text(
                      "${pf!.EList[index].pr}",
                      style: TextStyle(
                          color: CupertinoColors.inactiveGray, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${pf!.EList[index].pr}",
              style:
                  TextStyle(color: CupertinoColors.inactiveGray, fontSize: 20),
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
