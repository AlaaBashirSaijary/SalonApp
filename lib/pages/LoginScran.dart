
import 'package:flutter/material.dart';
import 'package:salonapp/pages/home.dart';

import 'Forgetpassword.dart';
import 'SignScrren.dart';

class LoginScrren extends StatefulWidget {
  LoginScrren({super.key});

  @override
  State<LoginScrren> createState() => _LoginScrrenState();
}

class _LoginScrrenState extends State<LoginScrren> {
  var email = TextEditingController();
  bool obscure=true;
  var password = TextEditingController();

  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(100, 80),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.pink.shade700,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Welcome in BeautyCenter',
              style: TextStyle(
                  color: Color(0xFFEBE2E5),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          centerTitle: true,
        ),
      ),
      backgroundColor: Color(0xFFEBE2E5),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('images/124.jpg'),
                        fit: BoxFit.fill)),
              ),
              Text(
                'Time For You  \n ',
                style: TextStyle(
                    color: Colors.pink.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              TextFormField(
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
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: password,
                keyboardType: TextInputType.text,
                cursorColor: Colors.pink,
                obscureText: obscure,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.pink,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscure=!obscure;
                      });

                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.pink,
                    ),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 10, color: Colors.pinkAccent),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.pink,
                      activeColor: Colors.grey.shade700,
                      value: isChecked,
                      onChanged: (isChecked) {
                        isChecked != isChecked;
                      }),
                  Text("Remember me",
                      style: TextStyle(
                          color: Colors.pink.shade700,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Forget()),
                      );
                    },
                    child: Text(
                      "Forgat Your Password?",
                      style: TextStyle(
                          color: Colors.pink.shade700,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 60,
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
                      'Login with password',
                      style: TextStyle(
                          color: Color(0xFFFBF2D9),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "or Continue with",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink.shade700,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: MaterialButton(
                          color: Colors.pink.shade700,
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                              (route) => false,
                            );
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.facebook,
                                size: 30,
                                color: Colors.white,
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Color(0xFFFBF2D9),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: MaterialButton(
                          color: Colors.pink.shade700,
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                              (route) => false,
                            );
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.g_mobiledata_outlined,
                                size: 50,
                                color: Colors.white,
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Text(
                                'Google',
                                style: TextStyle(
                                    color: Color(0xFFFBF2D9),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "If you don\'t have account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignScreen()),
                            (route) => false,
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink.shade700,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
