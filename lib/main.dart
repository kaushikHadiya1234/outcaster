import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:outcaster/Android/PlayStore/Provider/app_provider.dart';
import 'package:outcaster/Android/PlayStore/View/Appdata_Screen.dart';
import 'package:outcaster/Android/PlayStore/View/Dash_Screen.dart';
import 'package:outcaster/Android/PlayStore/View/Home_Screen.dart';
import 'package:outcaster/Android/Settings_ui/Provider/Setting_Provider.dart';
import 'package:outcaster/Android/Settings_ui/View/setting_screen.dart';
import 'package:outcaster/Android/Steper/Provider/Stepper_provider.dart';
import 'package:outcaster/Android/Steper/View/Steper.dart';
import 'package:outcaster/Android/Steper/View/Stepper_Screen/View/Stepper_Screen.dart';
import 'package:outcaster/iOS/App_Store/Provider/app_provider.dart';
import 'package:outcaster/iOS/App_Store/View/IAppScreen.dart';
import 'package:outcaster/iOS/App_Store/View/I_Game_Screen.dart';
import 'package:outcaster/iOS/App_Store/View/Today_Screen.dart';
import 'package:outcaster/iOS/App_Store/View/home_Screen.dart';
import 'package:outcaster/iOS/E-Commerce/Provider/eProvider.dart';
import 'package:outcaster/iOS/E-Commerce/View/First_Screen.dart';
import 'package:outcaster/iOS/E-Commerce/View/ecommerce.dart';
import 'package:outcaster/iOS/Settings_ui/View/Setting_Screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) =>MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SettingProvider(),),
        ChangeNotifierProvider(create: (context) => SteperProvider(),),
        ChangeNotifierProvider(create: (context) => AppProvider(),),
        ChangeNotifierProvider(create: (context) => Eprovider(),),
        ChangeNotifierProvider(create: (context) => AppStoreProvider(),),
      ],
      child: Platform.isAndroid
          ? CupertinoApp(
              debugShowCheckedModeBanner: false,
              initialRoute: 'home',
              routes: {
                '/':(p0) => SettingUi(),
                'ecom':(p0) => Ecommerce(),
                'first':(p0) => FirstScreen(),
                'home':(p0) => IHomeScreen(),
                'today':(p0) => TodayScreen(),
                'game':(p0) => IGameScreen(),
                'app':(p0) => IAppScreen(),
              },
            )
          : MaterialApp(
              debugShowCheckedModeBanner: false,
               initialRoute: 'steper',
              routes: {
                '/':(context) => SettingsScreen(),
                'Home':(context) => HomeScreen(),
                'steper':(context) => SteperScreen(),
                'stepper':(context) => StepperScreen(),
                'Dash':(context) => DashScreen(),
                'data':(context) => DataScreen(),
              },
            ),
    ),
      )
  );
}
