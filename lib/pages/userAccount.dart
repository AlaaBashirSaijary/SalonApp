
import 'package:flutter/material.dart';
import 'package:salonapp/pages/Appointment.dart';

import 'HelpCenter.dart';
import 'SignScrren.dart';

class userAccount extends StatefulWidget {
  userAccount({super.key});

  @override
  State<userAccount> createState() => _userAccountState();
}

class _userAccountState extends State<userAccount> {
  bool obscure=true;
  double height = 150;
  var password = TextEditingController();

  String name = "Alaa ";
bool c = false;
  String profileImage = "images/profile.jpg";

  TextEditingController nameController = TextEditingController();

  var email = TextEditingController();

  var address = TextEditingController();

 List<bool> colorStar=[false, false,false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          backgroundColor: Colors.pink.shade700,
          elevation: 0,
          title: Text(
            "Account Settings",
          ),
          actions: <Widget>[
            // IconButton(
            //     onPressed: () {
            //       c!=c;
            //       nameController=name as TextEditingController;
            //     },
            //     icon: Icon(
            //       Icons.edit,
            //       size: 20,
            //       color: Colors.white,
            //     )),
            IconButton(
                onPressed: () {

                },
                icon: Icon(
                  Icons.add_a_photo_sharp,
                  size: 25,
                  color: Colors.white,
                )),

          ],
        ),
      ),
      backgroundColor: Color(0xFFFFDFB6),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(color: Colors.pink.shade700),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "$profileImage",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              controller: nameController,
              cursorColor: c ?Colors.pink:Colors.grey,
              cursorRadius:Radius.zero ,
              style:  TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                hintText:  "$name",
                hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                filled: true,
                fillColor:  Colors.pink.shade700,
                //border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.all(8),
              width: double.infinity,
              height: 700,
              decoration: BoxDecoration(
                  color: Color(0xFFFAF2D5),
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Account',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink.shade700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.pink.shade500,
                              size: 30,
                            ),
                            Text(
                              'your Number',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown.shade700),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: email,
                            cursorColor: Colors.pink,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '+963 930 297 555',
                              hintStyle: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.place,
                              color: Colors.pink.shade500,
                              size: 30,
                            ),
                            Text(
                              'Your Address',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown.shade700),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: address,
                            cursorColor: Colors.pink,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Syria-Aleppo',
                              hintStyle: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Row(
                      children: [
                        Icon(
                          Icons.person_add_alt_rounded,
                          color: Colors.pink.shade500,
                          size: 30,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SignScreen()));
                          },
                          child: Text('Add new Account',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown.shade700),),
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Row(
                      children: [
                        Icon(
                          Icons.delete_sweep,
                          color: Colors.pink.shade500,
                          size: 35,
                        ),
                        TextButton(
                          child: Text(
                            'Delete your Account',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown.shade700),
                          ),
                          onPressed: () async {
                            String? newTask = await showDialog<String>(
                              context: context,
                              builder: (BuildContext context) {
                                String task = '';
                                return AlertDialog(
                                  scrollable: true,
                                  elevation: 12,
                                  backgroundColor:
                                  Colors.grey.shade500.withOpacity(0.5),
                                  title: Text(
                                    'Delet Your Account',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink.shade700,
                                    ),
                                  ),
                                  content: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          "Are you sure?",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black
                                          ),
                                        )
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

                                    ],
                                  ),
                                  actionsPadding:
                                  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  actionsOverflowButtonSpacing: 12,
                                  actionsAlignment: MainAxisAlignment.center,

                                  actions: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25)),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: MaterialButton(
                                        color: Colors.pink.shade700,
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25)),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: MaterialButton(
                                        color: Colors.pink.shade700,
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => SignScreen()),
                                                (route) => false,
                                          );                                        },
                                      ),
                                    )
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ],
                    )),
                  ) ,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.pink.shade500,
                          size: 35,
                        ),
                        TextButton(
                          child: Text(
                            'your opinion',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown.shade700),
                          ),
                          onPressed: () async {
                            String? newTask = await showDialog<String>(
                              context: context,
                              builder: (BuildContext context) {
                                String task = '';
                                return AlertDialog(
                                  scrollable: true,
                                  elevation: 12,
                                  backgroundColor:
                                  Colors.grey.shade500.withOpacity(0.5),
                                  title: Text(
                                    'Your Opinion',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink.shade700,
                                    ),
                                  ),
                                  content: Column(
                                    children: [
                                      SliderTheme(
                                          data: SliderTheme.of(context).copyWith(
                                            activeTrackColor: Colors.pinkAccent.shade200,
                                            inactiveTrackColor: Colors.white,
                                            thumbShape: RoundSliderThumbShape(
                                              enabledThumbRadius: 15,
                                              elevation: 10,
                                            ),
                                            thumbColor: Colors.pink,
                                            overlayColor: Colors.white,
                                          ),
                                          child: Slider(
                                              min: 50,
                                              max: 250,
                                              value: height,
                                              onChanged: (value) {
                                                setState(() {
                                                  height=value;
                                                });
                                              }))
                                    ],
                                  ),
                                  actionsPadding:
                                  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                  actionsOverflowButtonSpacing: 12,
                                  actionsAlignment: MainAxisAlignment.center,

                                  actions: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25)),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: MaterialButton(
                                        color: Colors.pink.shade700,
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25)),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: MaterialButton(
                                        color: Colors.pink.shade700,
                                        child: Text(
                                          'Save',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop(task);
                                        },
                                      ),
                                    )
                                  ],
                                );
                              },
                            );
                          },
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Row(
                      children: [
                        Icon(
                          Icons.live_help_rounded,
                          color: Colors.pink.shade500,
                          size: 35,
                        ),
                        TextButton(
                          child: Text(
                            'Help Center',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown.shade700),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => helpCenter()));
                          },
                        ),

                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                        child: Row(
                          children: [
                            Icon(
                              Icons.notifications_on_sharp,
                              color: Colors.pink.shade500,
                              size: 30,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Appointment()));
                              },
                              child: Text(
                                'Notifications ',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown.shade700),
                              ),
                            ),
                          ],)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
