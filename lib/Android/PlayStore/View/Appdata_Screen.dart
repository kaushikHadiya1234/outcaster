import 'package:flutter/material.dart';
import 'package:outcaster/Android/PlayStore/Model/app_model.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    AppModel a = ModalRoute.of(context)!.settings.arguments as AppModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(width: 20),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            SizedBox(width: 10),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "${a.img}",
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${a.name}",
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          "Play_Game",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        Text(
                          "Contains ads - in - app purchases",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("4.2",style: TextStyle(fontSize: 15,color: Colors.black),),
                          Icon(Icons.star,color: Colors.black,size: 15,)
                        ],
                      ),
                      Text("3Cr reviews!",style: TextStyle(color: Colors.grey.shade600),)
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      Icon(Icons.download_for_offline_outlined,size: 20,),
                      Text("90 MB!",style: TextStyle(color: Colors.grey.shade600),)
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      Text("100Cr+",style: TextStyle(fontSize: 15,color: Colors.black),),
                      Text("Download",style: TextStyle(color: Colors.grey.shade600),),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 20,right: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal.shade800
                ),
                child: Text("Install",style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                width: double.infinity,
                child: Image.asset("assets/images/d1.jpg",fit: BoxFit.fill,),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: Image.asset("assets/images/d2.jpg",fit: BoxFit.fill,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
