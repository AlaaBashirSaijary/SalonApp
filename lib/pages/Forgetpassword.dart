

import 'package:flutter/material.dart';
import 'package:salonapp/pages/home.dart';


class Forget extends StatelessWidget {
   Forget({super.key});
   var email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDFB6),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            Text("Forget Password",
              style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.bold,
                color: Colors.pink.shade700,
              ),
            ),
            SizedBox(height: 20,),
            Text("Enter Your Email address below To \n recive passssword reset interction",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w400,
                color: Colors.brown.shade500,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                controller: email,
                cursorColor: Colors.pink,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.pink,
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 10, color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 50,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: MaterialButton(
                  color: Colors.pink.shade700,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                          (route) => false,
                    );
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Color(0xFFFBF2D9),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
