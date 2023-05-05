import 'package:flutter/cupertino.dart';
import 'package:outcaster/Android/Settings_ui/Provider/Setting_Provider.dart';
import 'package:provider/provider.dart';

class SettingUi extends StatefulWidget {
  const SettingUi({Key? key}) : super(key: key);

  @override
  State<SettingUi> createState() => _SettingUiState();
}

class _SettingUiState extends State<SettingUi> {
  SettingProvider? pt;
  SettingProvider? pf;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<SettingProvider>(context,listen: false);
    pt = Provider.of<SettingProvider>(context,listen: true);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: CupertinoNavigationBar(
        middle: Text("Settings UI",style: TextStyle(color: CupertinoColors.white),),
        backgroundColor: CupertinoColors.destructiveRed,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 10),
            child: Text("Common",style: TextStyle(color: CupertinoColors.inactiveGray,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
        SizedBox(height: 10),
        Container(
          height: 100,
          color: CupertinoColors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoListTile(
                leading: Icon(CupertinoIcons.globe,color: CupertinoColors.inactiveGray,size: 25,),
                title: Text("Language",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                trailing: Row(
                  children: [
                    Text("English",style: TextStyle(color: CupertinoColors.inactiveGray,),),
                    Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray,)
                  ],
                ),
              ),
              // Container(
              //   height: 0.1,
              //   color: CupertinoColors.inactiveGray,
              // ),
              CupertinoListTile(
                leading: Icon(CupertinoIcons.cloud,color: CupertinoColors.inactiveGray,size: 25,),
                title: Text("Enviroment",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                trailing: Row(
                  children: [
                    Text("Production",style: TextStyle(color: CupertinoColors.inactiveGray,),),
                    Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray,)
                  ],
                ),
              ),
            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 10),
            child: Text("Account",style: TextStyle(color: CupertinoColors.inactiveGray,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10),
          Container(
            height: 150,
            color: CupertinoColors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoListTile(
                  leading: Icon(CupertinoIcons.phone_fill,color: CupertinoColors.inactiveGray,size: 25,),
                  title: Text("Language",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                  trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray,),
                ),
                // Container(
                //   height: 0.1,
                //   color: CupertinoColors.inactiveGray,
                // ),
                CupertinoListTile(
                  leading: Icon(CupertinoIcons.mail_solid,color: CupertinoColors.inactiveGray,size: 25,),
                  title: Text("Enviroment",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                  trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray,),
                ),
                CupertinoListTile(
                  leading: Icon(CupertinoIcons.square_arrow_right,color: CupertinoColors.inactiveGray,size: 25,),
                  title: Text("Sign out",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                  trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray,),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 10),
            child: Text("Security",style: TextStyle(color: CupertinoColors.inactiveGray,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10),
          Container(
            height: 150,
            color: CupertinoColors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoListTile(
                  leading: Icon(CupertinoIcons.device_phone_portrait,color: CupertinoColors.inactiveGray,size: 25,),
                  title: Text("Lock app in background",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                    trailing: CupertinoSwitch(
                      activeColor: CupertinoColors.systemRed,
                      onChanged: (value) {
                        pf!.Changa(value);
                      },
                      value: pt!.a,
                    )
                ),
                // Container(
                //   height: 0.1,
                //   color: CupertinoColors.inactiveGray,
                // ),
                CupertinoListTile(
                  leading: Icon(CupertinoIcons.hand_raised,color: CupertinoColors.inactiveGray,size: 25,),
                  title: Text("Use fingerprint",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                    trailing: CupertinoSwitch(
                      activeColor: CupertinoColors.systemRed,
                      onChanged: (value) {
                        pf!.Changb(value);
                      },
                      value: pt!.b,
                    )
                ),
                CupertinoListTile(
                  leading: Icon(CupertinoIcons.padlock_solid,color: CupertinoColors.inactiveGray,size: 25,),
                  title: Text("Change password",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                  trailing: CupertinoSwitch(
                    activeColor: CupertinoColors.systemRed,
                    onChanged: (value) {
                      pf!.Changc(value);
                    },
                    value: pt!.c,
                  )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 10),
            child: Text("Misc",style: TextStyle(color: CupertinoColors.inactiveGray,fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10),
          Container(
            height: 100,
            color: CupertinoColors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoListTile(
                  leading: Icon(CupertinoIcons.doc_text_fill,color: CupertinoColors.inactiveGray,size: 25,),
                  title: Text("Terms of Service",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                  trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray,),
                ),
                CupertinoListTile(
                  leading: Icon(CupertinoIcons.square_fill_on_square_fill,color: CupertinoColors.inactiveGray,size: 25,),
                  title: Text("Open sourcenlicenses",style: TextStyle(fontSize: 18,color: CupertinoColors.black),),
                  trailing: Icon(CupertinoIcons.chevron_forward,color: CupertinoColors.inactiveGray,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
