import 'package:flutter/material.dart';
import 'package:outcaster/Android/Settings_ui/Provider/Setting_Provider.dart';
import 'package:provider/provider.dart';

SettingProvider? pt;
SettingProvider? pf;

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    pf = Provider.of<SettingProvider>(context,listen: false);
    pt = Provider.of<SettingProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Settings ui"),
          backgroundColor: Colors.deepOrange,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 10),
                child: Text("Common",style: TextStyle(color: Colors.deepOrange,fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Icon(Icons.language,color: Colors.grey,size: 30,),
                title: Text("Language",style: TextStyle(fontSize: 18,color: Colors.black),),
                subtitle: Text("English",style: TextStyle(fontSize: 16,color: Colors.grey),),
              ),
              Divider(height: 5,color: Colors.grey.shade300,thickness: 0.25,),
              ListTile(
                leading: Icon(Icons.cloud_queue,color: Colors.grey,size: 30,),
                title: Text("Enviroment",style: TextStyle(fontSize: 18,color: Colors.black),),
                subtitle: Text("Production",style: TextStyle(fontSize: 16,color: Colors.grey),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 10),
                child: Text("Account",style: TextStyle(color: Colors.deepOrange,fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Icon(Icons.call,color: Colors.grey,size: 25,),
                title: Text("Phone number",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(height: 5,color: Colors.grey.shade300,thickness: 0.6,),
              ListTile(
                leading: Icon(Icons.mail,color: Colors.grey,size: 25,),
                title: Text("Email",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(height: 5,color: Colors.grey.shade300,thickness: 0.25,),
              ListTile(
                leading: Icon(Icons.login,color: Colors.grey,size: 25,),
                title: Text("Sing Out",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 10),
                child: Text("Security",style: TextStyle(color: Colors.deepOrange,fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Icon(Icons.phonelink_lock_sharp,color: Colors.grey,size: 25,),
                title: Text("Lock app in background",style: TextStyle(fontSize: 18,color: Colors.black),),
                trailing: Switch(onChanged: (value) {
                  pf!.Changa(value);
                },value: pt!.a,activeColor: Colors.deepOrange),
              ),
              Divider(height: 5,color: Colors.grey.shade300,thickness: 0.6,),
              ListTile(
                leading: Icon(Icons.fingerprint,color: Colors.grey,size: 25,),
                title: Text("Use fingerprint",style: TextStyle(fontSize: 18,color: Colors.black),),
                trailing: Switch(onChanged: (value) {
                  pf!.Changb(value);
                },value: pt!.b,activeColor: Colors.deepOrange),
              ),
              Divider(height: 5,color: Colors.grey.shade300,thickness: 0.6,),
              ListTile(
                leading: Icon(Icons.lock,color: Colors.grey,size: 25,),
                title: Text("Change Password",style: TextStyle(fontSize: 18,color: Colors.black),),
                trailing: Switch(onChanged: (value) {
                  pf!.Changc(value);
                },value: pt!.c,activeColor: Colors.deepOrange,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 10),
                child: Text("Misc",style: TextStyle(color: Colors.deepOrange,fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Icon(Icons.file_copy,color: Colors.grey,size: 25,),
                title: Text("Terms and Service",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Divider(height: 5,color: Colors.grey.shade300,thickness: 0.6,),
              ListTile(
                leading: Icon(Icons.photo_album_rounded,color: Colors.grey,size: 25,),
                title: Text("Open Source licenses",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
