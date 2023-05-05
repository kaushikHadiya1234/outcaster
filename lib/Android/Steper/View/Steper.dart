import 'dart:io';

import 'package:flutter/material.dart';
import 'package:outcaster/Android/Steper/Provider/Stepper_provider.dart';
import 'package:provider/provider.dart';

class SteperScreen extends StatefulWidget {
  const SteperScreen({Key? key}) : super(key: key);

  @override
  State<SteperScreen> createState() => _SteperScreenState();
}

class _SteperScreenState extends State<SteperScreen> {
  SteperProvider? pt;
  SteperProvider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<SteperProvider>(context, listen: true);
    pf = Provider.of<SteperProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Edit your profile"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blue, Colors.tealAccent])),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stepper(
            steps: [
              Step(
                title: Text("Profile picture"),
                content: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[100],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            pf!.PickimageCamera();
                          },
                          child: Text("Camera"),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                            onPressed: () {
                              pf!.PickimageGallery();
                            },
                            child: Text("Gallery"))
                      ],
                    )
                  ],
                ),
              ),
              Step(
                title: Text("Name"),
                content: TextField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.person),hintText: "Enter the Your Name"),
                ),
              ),
              Step(
                title: Text("Phone"),
                content: TextField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.call),hintText: "Enter the Your phone Number"),),
                ),
              Step(
                title: Text("Email"),
                content: TextField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.mail),hintText: "Enter the Your Email"),),
                ),
              Step(
                title: Text("DOB"),
                content: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Text(
                        "${pt!.date.day}-${pt!.date.month}-${pt!.date.year}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                        onPressed: () async {
                          DateTime? d1 = await showDatePicker(
                              context: context,
                              initialDate: pt!.date,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2030));
                          pf!.ChangDate(d1!);
                        },
                        icon: Icon(Icons.calendar_month))
                  ],
                ),
              ),
              Step(
                title: Text("Gender"),
                content: Column(
                  children: [
                    RadioListTile(
                      value: 'Male',
                      groupValue: pt!.gender,
                      onChanged: (value) {
                        pf!.ChangeGender(value!);
                      },
                      title: Text(
                        "Male",
                      ),
                    ),
                    RadioListTile(
                      value: 'Female',
                      groupValue: pt!.gender,
                      onChanged: (value) {
                        pf!.ChangeGender(value!);
                      },
                      title: Text(
                        "Female",
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                title: Text("Current Location"),
                content: TextField(
                  decoration:
                      InputDecoration(prefixIcon: Icon(Icons.location_on),hintText: "Enter the Current location"),
                ),
              ),
              Step(
                title: Text("Notionalities"),
                content: TextField(
                  decoration:
                      InputDecoration(prefixIcon: Icon(Icons.ac_unit),hintText: "Enter the Notionalities"),
                ),
              ),
              Step(
                title: Text("Religion"),
                content: TextField(
                  decoration:
                      InputDecoration(prefixIcon: Icon(Icons.scatter_plot),hintText: "Enter the Religion"),
                ),
              ),
              Step(
                title: Text("Language"),
                content: TextField(
                  decoration:
                      InputDecoration(prefixIcon: Icon(Icons.language),hintText: "Enter the Language"),
                ),
              ),
              Step(
                title: Text("BoiGraphy"),
                content: TextField(
                  decoration:
                      InputDecoration(prefixIcon: Icon(Icons.border_inner),hintText: "Enter the BoiGraphy"),
                ),
              ),
            ],
            currentStep: pt!.i,
            onStepContinue: () {
              pf!.Nextstep();
            },
            onStepCancel: () {
              pf!.Prestep();
            },
          ),
        ),
      ),
    );
  }
}
