import 'package:flutter/material.dart';

import '../../uidata.dart';
import '../widgets/button.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDFB6),
      body: Container(
        //padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/3.jpg",
                      ),
                      fit: BoxFit.fill)),
              height: MediaQuery.of(context).size.height * .60,
            ),
            Text("Book your \nFavourite Stylist",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    fontSize: 24,
                    color: Color(0xFFC08E6D),
                    letterSpacing: 1.3)),

            MyButton(btnText: "SignIn",
            onpressed: () => Navigator.pushNamedAndRemoveUntil(context, UIData.loginPageRoute,(route) => false,), ),
            MyButton(btnText: "SignUp",
            onpressed: () => Navigator.pushNamedAndRemoveUntil(context, UIData.SignPageRoute,(route) => false,)),
          ],
        ),
      ),
    );
  }
}
