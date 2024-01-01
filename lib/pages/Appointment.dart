
import 'package:flutter/material.dart';

import '../Model/Appointments.dart';
import 'book.dart';

class Appointment extends StatelessWidget {
  Appointment({super.key});

  var search = TextEditingController();

  // List <Appoint>appoint=[
  //   Appoint(1 as Booking, 1, "13:30", "Aguest-25-2023 "),
  //   Appoint(1 as Booking, 2, "13:30", "Aguest-25-2023 "),
  //   Appoint(1 as Booking, 3, "13:30", "Aguest-25-2023 "),
  //   Appoint(1 as Booking,4, "13:30", "Aguest-25-2023 ")
  // ];
  // List <Booking>Book=[
  //  Booking(1 as user, this.id, this.time, this.services);
  //  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(100, 150),
          child: AppBar(
            backgroundColor: Colors.pink.shade700,
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Appointment",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.share_arrival_time),
                text: "Upandcoming Times",
              ),
              Tab(
                icon: Icon(Icons.timer),
                text: "Completed Time",
              ),
              Tab(
                icon: Icon(Icons.timer_off_rounded),
                text: "Delete Time",
              )
            ]),
            // actions: <Widget>[
            //   Padding(
            //     padding: const EdgeInsets.only(top: 20.0),
            //     child: Container(
            //       padding: EdgeInsets.only(top: 15),
            //       width: 200,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(25),
            //           color: Colors.grey.shade300.withOpacity(0.5)),
            //       clipBehavior: Clip.antiAliasWithSaveLayer,
            //       child: TextFormField(
            //         controller: search,
            //         cursorColor: Colors.pink,
            //         keyboardType: TextInputType.text,
            //         decoration: InputDecoration(
            //           hintText: 'Searching',
            //           hintStyle: TextStyle(
            //               color: Colors.pink.withOpacity(0.5),
            //               fontWeight: FontWeight.bold,
            //               fontSize: 20),
            //           fillColor: Colors.transparent,
            //           filled: true,
            //         ),
            //       ),
            //     ),
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.only(top: 20.0),
            //     child: IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.search_outlined,
            //           color: Colors.white,
            //         )),
            //   )
            // ],
          ),
        ),
        backgroundColor: Color(0xFFFFDFB6),
        body: TabBarView(
          children: [
            Scaffold(
              // backgroundColor: Color(0xFFFFDFB6),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 180,
                            decoration: BoxDecoration(
                              // boxShadow:
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25)),
                              color: Colors.pink.shade700,
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Center(
                              child: Text(
                                "Aug 22 \n \n10:00 AM",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.all(15),
                            width: 220,
                            height: 180,
                            decoration: BoxDecoration(
                              // boxShadow:
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25)),
                              color: Colors.grey.shade600.withOpacity(0.5),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hair",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "In Center",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "You Are Booked in center to change your Color Hair\n you Booked in Haya",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black38),
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      Container(
                                        width: 70,
                                        height:30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        child: MaterialButton(
                                            color: Colors.pink.shade700,
                                            onPressed: () {
                                              // Navigator.pushAndRemoveUntil(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //       builder: (context) => MainScreen()),
                                              //       (route) => false,
                                              // );
                                            },
                                            child: Text(
                                              'cancal',
                                              style: TextStyle(
                                                  color: Color(0xFFFBF2D9),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        width: 70,
                                        height:30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        child: MaterialButton(
                                            color: Colors.pink.shade700,
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => BookPage()));
                                            },
                                            child: Text(
                                              'Book',
                                              style: TextStyle(
                                                  color: Color(0xFFFBF2D9),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Scaffold(
              // backgroundColor: Color(0xFFFFDFB6),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 180,
                            decoration: BoxDecoration(
                              // boxShadow:
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25)),
                              color: Colors.pink.shade700,
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Center(
                              child: Text(
                                "Aug 22 \n \n10:00 AM",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.all(15),
                            width: 220,
                            height: 180,
                            decoration: BoxDecoration(
                              // boxShadow:
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25)),
                              color: Colors.grey.shade600.withOpacity(0.5),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hair",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "In Center",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "You Are Booked in center to change your Color Hair\n you Booked in Haya",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black38),
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      // Container(
                                      //   width: 70,
                                      //   height:30,
                                      //   decoration: BoxDecoration(
                                      //       borderRadius:
                                      //       BorderRadius.circular(10)),
                                      //   clipBehavior:
                                      //   Clip.antiAliasWithSaveLayer,
                                      //   child: MaterialButton(
                                      //       color: Colors.pink.shade700,
                                      //       onPressed: () {
                                      //         // Navigator.pushAndRemoveUntil(
                                      //         //   context,
                                      //         //   MaterialPageRoute(
                                      //         //       builder: (context) => MainScreen()),
                                      //         //       (route) => false,
                                      //         // );
                                      //       },
                                      //       child: Text(
                                      //         'cancal',
                                      //         style: TextStyle(
                                      //             color: Color(0xFFFBF2D9),
                                      //             fontSize: 15,
                                      //             fontWeight: FontWeight.bold),
                                      //       )),
                                      // ),
                                      SizedBox(width: 10,),
                                      Container(
                                        width: 80,
                                        height:30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        clipBehavior:
                                        Clip.antiAliasWithSaveLayer,
                                        child: MaterialButton(
                                            color: Colors.pink.shade700,
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => BookPage()));
                                            },
                                            child: Text(
                                              'ReBook',
                                              style: TextStyle(
                                                  color: Color(0xFFFBF2D9),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Scaffold(
              // backgroundColor: Color(0xFFFFDFB6),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 180,
                            decoration: BoxDecoration(
                              // boxShadow:
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25)),
                              color: Colors.pink.shade700,
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Center(
                              child: Text(
                                "Aug 22 \n \n10:00 AM",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.all(15),
                            width: 220,
                            height: 180,
                            decoration: BoxDecoration(
                              // boxShadow:
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25)),
                              color: Colors.grey.shade600.withOpacity(0.5),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hair",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "In Center",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "You Are Booked in center to change your Color Hair\n you Booked in Haya",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black38),
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      Container(
                                        width: 70,
                                        height:30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        clipBehavior:
                                        Clip.antiAliasWithSaveLayer,
                                        child: MaterialButton(
                                            color: Colors.pink.shade700,
                                            onPressed: () {
                                              // Navigator.pushAndRemoveUntil(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //       builder: (context) => MainScreen()),
                                              //       (route) => false,
                                              // );
                                            },
                                            child: Text(
                                              'Delet',
                                              style: TextStyle(
                                                  color: Color(0xFFFBF2D9),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                      SizedBox(width: 10,),
                                      Container(
                                        width: 80,
                                        height:30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        clipBehavior:
                                        Clip.antiAliasWithSaveLayer,
                                        child: MaterialButton(
                                            color: Colors.pink.shade700,
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => BookPage()));
                                            },
                                            child: Text(
                                              'ReBook',
                                              style: TextStyle(
                                                  color: Color(0xFFFBF2D9),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
