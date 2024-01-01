import 'package:flutter/material.dart';
import 'package:salonapp/pages/Appointment.dart';
import 'package:salonapp/pages/catugri.dart';
import 'package:salonapp/pages/userAccount.dart';

import '../../uidata.dart';
import '../widgets/image_card.dart';
import '../widgets/my_column.dart';
import '../widgets/specialist_column.dart';
import 'Crew.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(100, 60),
        child: AppBar(
          backgroundColor: Colors.pink.shade700,
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.short_text,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => userAccount()));
              }),
          title: Text(
            "BeautyCenter",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(),
                // margin: EdgeInsets.only(right: 15, top: 0),
                child: CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(
                    "images/profile.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // backgroundColor: Color(0xFFFFDFB6),
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: screen_size_height * .2,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ImageCard(cardImg: "images/braid4.jpg"),
                      SizedBox(width: 10),
                      ImageCard(cardImg: "images/braid3.jpg"),
                    ],
                  )),
              SizedBox(height: 15),
              Text("Services:",style: TextStyle(
                color: Colors.pinkAccent.shade700,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Services()));
                      },
                      child: MyColumn(
                        columnImg: "images/braid.png",
                        columnTxt: "Braids",
                        columnBg: UIData.lightColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Services()));
                      },
                      child: MyColumn(
                        columnImg: "images/abuja.png",
                        columnTxt: "Abuja",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Services()));
                      },
                      child: MyColumn(
                        columnImg: "images/blow.png",
                        columnTxt: "Blowdry",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Services()));
                      },
                      child: MyColumn(
                        columnImg: "images/haircut.png",
                        columnTxt: "Haircut",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Services()));
                      },
                      child: MyColumn(
                        columnImg: "images/relaxer.png",
                        columnTxt: "Relaxer",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Services()));
                      },
                      child: MyColumn(
                        columnImg: "images/shampoo.png",
                        columnTxt: "Shampoo",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Services()));
                      },
                      child: MyColumn(
                        columnImg: "images/nail.png",
                        columnTxt: "Manicure",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Services()));
                      },
                      child: MyColumn(
                        columnImg: "images/more.png",
                        columnTxt: "More",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Row(
                      children: [
                        Icon(
                          Icons.supervised_user_circle_sharp,
                          color: Colors.pink,
                          size: 30,
                        ),
                        Text("Our Team",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ],
                    )),
                    MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => staff()));
                        },
                        child: Text("View All",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black54)))
                  ]),
              SizedBox(height: 6),
              Container(
                  height: 230,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SpecialistColumn(
                          specImg: "images/po.jpg", specName: "Anny Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid4.jpg", specName: "Joy Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid3.jpg",
                          specName: "Patience Roy"),
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink.shade700,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
                color: Colors.white,
              ),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.category,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Services()));
                },
              ),
              label: "Categories",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.calendar_today_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Appointment()));
                },
              ),
              label: "Appointments",
              backgroundColor: Colors.white),

        ],
      ),
    );
  }
}
