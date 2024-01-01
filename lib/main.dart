import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:salonapp/pages/Crew.dart';
import 'package:salonapp/pages/LoginScran.dart';
import 'package:salonapp/pages/Services.dart';
import 'package:salonapp/pages/Servicesother.dart';
import 'package:salonapp/pages/SignScrren.dart';
import 'package:salonapp/pages/Staffpage.dart';
import 'package:salonapp/pages/book.dart';
import 'package:salonapp/pages/home.dart';
import 'package:salonapp/pages/intro.dart';
import 'package:salonapp/pages/userAccount.dart';

import 'uidata.dart';
//import 'package:awesome_notifications/awesome_notifications.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // AwesomeNotifications().initialize('resource://drawable/3.jpg', [
  //   NotificationChannel(
  //       channelKey: "Basic",
  //       channelName: "channelName",
  //       channelDescription: "channelDescription",
  //   playSound: true,
  //   channelShowBadge: true)
  // ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.pinkAccent.shade700,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
          ),
          fontFamily: "fonts/Ubuntu-Bold.ttf",
          textTheme: TextTheme(),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: StaffPage(
          nameStaff: "Alaa",
          images: [
            "images/hair1.jpg",
            "images/hair2.jpg",
            "images/hair3.jpg",
            "images/hair4.jpg"
          ],
          imageStaff: "images/braid4.jpg",
        ),
        routes: <String, WidgetBuilder>{
          UIData.homePageRoute: (BuildContext context) => HomePage(),
          UIData.loginPageRoute: (BuildContext context) => LoginScrren(),
          UIData.SignPageRoute: (BuildContext context) => SignScreen(),
          UIData.introPageRoute: (BuildContext context) => IntroPage(),
          UIData.bookPageRoute: (BuildContext context) => BookPage(),
        });
  }
}

