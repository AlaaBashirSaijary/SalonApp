import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

import '../../uidata.dart';
import '../Model/ServicesModel.dart';
import '../widgets/image_card.dart';
import '../widgets/my_column.dart';
import '../widgets/specialist_column.dart';
import 'Services.dart';
import 'Servicesother.dart';
import 'book.dart';

class Services extends StatefulWidget {
  Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<String> Servic = [
    "Hair",
    "Nail",
    "Mekap",
  ];

  String m = "Hair";

  var search = TextEditingController();
  var servces = TextEditingController();
  var Address = TextEditingController();
  var phone = TextEditingController();
  var hour = TextEditingController();

  List<SevicesModel> services = [
    SevicesModel(1, "Hair", "in Center", 1500000, 0, 'images/hair8.jpg'),
    SevicesModel(2, "Nail", "in Center", 1500000, 0, 'images/m4.png'),
    SevicesModel(3, "Mekap", "in Center", 1500000, 0, 'images/2.jpg'),
    SevicesModel(4, "Massage ", "in Center", 1500000, 0, 'images/26.jpg'),
    SevicesModel(5, "SkinCare ", "in Center", 1500000, 0, 'images/s1.jpg'),
    SevicesModel(
        6, "ScalpTreatment ", "in Center", 1500000, 0, 'images/c1.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(100, 150),
            child: AppBar(
              backgroundColor: Colors.pink.shade700,
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Services",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.add_business_sharp),
                  text: "InCenter",
                ),
                Tab(
                  icon: Icon(Icons.holiday_village),
                  text: "In your hous",
                )
              ]),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    padding: EdgeInsets.only(top: 15),
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade300.withOpacity(0.5)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: TextFormField(
                      controller: search,
                      cursorColor: Colors.pink,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Searching',
                        hintStyle: TextStyle(
                            color: Colors.pink.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        fillColor: Colors.transparent,
                        filled: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
          backgroundColor: Color(0xFFFFDFB6),
          body: TabBarView(
            children: [
              Scaffold(
                  body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: services.length,
                    separatorBuilder: (context, index) => Divider(
                          thickness: 5,
                          endIndent: 50,
                          indent: 50,
                          color: Colors.pink.shade700,
                        ),
                    itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.all(8),
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                          decoration: BoxDecoration(
                              color: Colors.white54.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(25)),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: ListTile(
                            leading: Container(
                              width: 100,
                              height: 150,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10)),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset(
                                '${services[index].image}',
                                fit: BoxFit.fill,
                              ),
                            ),
                            title: GestureDetector(
                              onTap: () {},
                              child: Text(
                                '${services[index].name}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.brown.shade700),
                              ),
                            ),
                            subtitle: Text(
                              'Chose what you need',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.brown.shade300),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.arrow_forward_ios,
                                  size: 20, color: Colors.pink.shade700),
                              onPressed: () {
                                String t = '${services[index].name}';
                                if (t == "Hair")
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ServicesModel()));
                                else if (t == "Nail")
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ServicesOther(nameServices: "Nail", images: ["images/m3.png","images/m4.png"],)));
                                else if (t == "Mekap")
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ServicesOther(nameServices:  "Mekap", images: ["images/m1.jpg","images/th15.jpg","images/th14.jpg","images/th13.jpg","images/th12.jpg",],)));
                                else if (t == "Massage ")
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ServicesOther(nameServices: "Massage ", images: [],)));
                                else if (t == "SkinCare ")
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ServicesOther(nameServices:"SkinCare ", images: ["images/s1.jpg","images/m2.jpg"],)));
                                else if (t == "ScalpTreatment ")
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => ServicesOther(nameServices:"ScalpTreatment ", images: ["images/c1.jpg","images/c2.jpg","images/c3.jpg"],)));
                              },
                            ),
                          ),
                        )),
              )),
              Scaffold(
                body: Container(
                  width: screen_size_width,
                  height: screen_size_height,
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: screen_size_height * .2,
                            width: screen_size_width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                ImageCard(cardImg: "images/hair7.jpg"),
                                SizedBox(width: 10),
                                ImageCard(cardImg: "images/hair2.jpg"),
                                SizedBox(width: 10),
                                ImageCard(cardImg: "images/hair3.jpg"),
                                SizedBox(width: 10),
                                ImageCard(cardImg: "images/hair4.jpg"),
                                SizedBox(width: 10),
                                ImageCard(cardImg: "images/hair5.jpg"),
                                SizedBox(width: 10),
                                ImageCard(cardImg: "images/hair6.jpg"),
                                SizedBox(width: 10),
                                ImageCard(cardImg: "images/hair1.jpg"),
                                SizedBox(width: 10),
                                ImageCard(cardImg: "images/hair8.jpg"),
                                SizedBox(width: 10),
                                ImageCard(cardImg: "images/hair9.jpg"),
                              ],
                            )),
                        SizedBox(height: 15),
                        SizedBox(height: 6),
                        Text(
                          "Determain Services",
                          style: TextStyle(
                              color: Colors.pink.shade700,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              DropdownButton<String>(
                                dropdownColor: Colors.white54,
                                icon: Icon(
                                  Icons.expand_circle_down_rounded,
                                  color: Colors.pink.shade700,
                                ),
                                iconSize: 30,
                                value: m,
                                items: Servic.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                            fontSize: 25),
                                      ));
                                }).toList(),
                                onChanged: (String? newvalue) {
                                  setState(() {
                                    m = newvalue!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: TextFormField(
                              controller: servces,
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.dashboard_customize_rounded,
                                  color: Colors.pink,
                                ),
                                hintText: 'servcies',
                                hintStyle: TextStyle(
                                    fontSize: 15, color: Colors.brown.shade400),
                                label: Text(
                                  "Servcies",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink.shade700),
                                ),
                                fillColor:
                                    Colors.grey.shade400.withOpacity(0.5),
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Time",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink.shade700,
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            width: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: TextFormField(
                              controller: hour,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white54),
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.place_sharp,
                                  color: Colors.pink,
                                ),
                                hintText: ' Hour : Minute ',
                                hintStyle: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white54),
                                fillColor: Colors.pink,
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: TextFormField(
                              controller: Address,
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.place_sharp,
                                  color: Colors.pink,
                                ),
                                hintText: 'Adress',
                                hintStyle: TextStyle(
                                    fontSize: 15, color: Colors.brown.shade400),
                                label: Text(
                                  "Address",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink.shade700),
                                ),
                                fillColor:
                                    Colors.grey.shade400.withOpacity(0.5),
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: TextFormField(
                              controller: phone,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.phone_in_talk,
                                  color: Colors.pink,
                                ),
                                hintText: 'Phone',
                                hintStyle: TextStyle(
                                    fontSize: 15, color: Colors.brown.shade400),
                                label: Text(
                                  "Phone",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink.shade700),
                                ),
                                fillColor:
                                    Colors.grey.shade400.withOpacity(0.5),
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                            ),
                            Container(
                              margin: EdgeInsets.all(7),
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: MaterialButton(
                                  color: Colors.pink.shade700,
                                  onPressed: () {
                                    // Fluttertoast.showToast(
                                    //   msg: "Sucessful Bookind\n ",
                                    //   toastLength: Toast.LENGTH_SHORT,
                                    //   gravity: ToastGravity.CENTER,
                                    //   timeInSecForIosWeb: 5,
                                    //   backgroundColor: Color(0xFFFBF2D9),
                                    //   textColor: Colors.pink.shade700,
                                    //   //webShowClose:true,
                                    //   fontSize: 20.0,
                                    // );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BookPage()),
                                    );
                                  },
                                  child: Text(
                                    'Book',
                                    style: TextStyle(
                                        color: Color(0xFFFBF2D9),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
