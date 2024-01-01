// import 'package:fluttertoast/fluttertoast.dart';

import '../../uidata.dart';

import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/date_column.dart';
import '../widgets/specialist_column_book.dart';
import 'Appointment.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}
List<String> month = [
  "Junuary",
  "February",
  "March",
  "April",
  "June",
  "Augest",
  "Septamper",
  "October",
  "November",
  "December"
];
List<bool> dating = [false, false, false, false, false, false, false];
List<bool> clock = [false, false, false, false, false, false];
List<bool> tabing= [false, false, false];
class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    final VoidCallback onpressed;

    //buttonTime
    Widget buttonTime(timeText, btnBg, timeBtnColor, onpressed) {
      return Container(
        height: 42,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: MaterialButton(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.grey, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(8),
            ),
            color: btnBg,
            onPressed: onpressed,
            child: Text(timeText,
                style: TextStyle(
                    color: timeBtnColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15))),
      );
    }

    return Scaffold(
      backgroundColor: Colors.pink.shade700,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () => Navigator.pop(context)),
        title: Text("Book Appointment"),
      ),
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  color: Colors.pink.shade700,
                  width: screen_size_width,
                  child: Column(children: <Widget>[
                    //SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.chevron_left, color: Colors.white),
                            onPressed: () {}),
                        Expanded(
                          child: Text("July, 2024",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                        IconButton(
                            icon:
                                Icon(Icons.chevron_right, color: Colors.white),
                            onPressed: () {}),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DateColumn(
                            weekDay: "Mon",
                            date: "16",
                            dateBg:
                                dating[0] ? Colors.white : Colors.transparent,
                            dateTextColor:
                                dating[0] ? UIData.mainColor : Colors.white,
                            onpressed: () {
                              setState(() {
                                if (dating[0] == false) {
                                  dating[0] = true;
                                  dating[1] = false;
                                  dating[2] = false;
                                  dating[3] = false;
                                  dating[4] = false;
                                  dating[5] = false;
                                  dating[6] = false;
                                } else
                                  dating[0] = false;
                              });
                            },
                          ),
                          DateColumn(
                            weekDay: "Tue",
                            date: "17",
                            dateBg:
                                dating[1] ? Colors.white : Colors.transparent,
                            dateTextColor:
                                dating[1] ? UIData.mainColor : Colors.white,
                            onpressed: () {
                              setState(() {
                                if (dating[1] == false) {
                                  dating[1] = true;
                                  dating[0] = false;
                                  dating[2] = false;
                                  dating[3] = false;
                                  dating[4] = false;
                                  dating[5] = false;
                                  dating[6] = false;
                                } else
                                  dating[1] = false;
                              });
                            },
                          ),
                          DateColumn(
                            weekDay: "Wed",
                            date: "18",
                            dateBg:
                                dating[2] ? Colors.white : Colors.transparent,
                            dateTextColor:
                                dating[2] ? UIData.mainColor : Colors.white,
                            onpressed: () {
                              setState(() {
                                if (dating[2] == false) {
                                  dating[2] = true;
                                  dating[1] = false;
                                  dating[0] = false;
                                  dating[3] = false;
                                  dating[4] = false;
                                  dating[5] = false;
                                  dating[6] = false;
                                } else
                                  dating[2] = false;
                              });
                            },
                          ),
                          DateColumn(
                            weekDay: "Thu",
                            date: "19",
                            dateBg:
                                dating[3] ? Colors.white : Colors.transparent,
                            dateTextColor:
                                dating[3] ? UIData.mainColor : Colors.white,
                            onpressed: () {
                              setState(() {
                                if (dating[3] == false) {
                                  dating[3] = true;
                                  dating[1] = false;
                                  dating[0] = false;
                                  dating[2] = false;
                                  dating[4] = false;
                                  dating[5] = false;
                                  dating[6] = false;
                                } else
                                  dating[3] = false;
                              });
                            },
                          ),
                          DateColumn(
                            weekDay: "Fri",
                            date: "20",
                            dateBg:
                                dating[4] ? Colors.white : Colors.transparent,
                            dateTextColor:
                                dating[4] ? UIData.mainColor : Colors.white,
                            onpressed: () {
                              setState(() {
                                if (dating[4] == false) {
                                  dating[4] = true;
                                  dating[1] = false;
                                  dating[0] = false;
                                  dating[2] = false;
                                  dating[3] = false;
                                  dating[5] = false;
                                  dating[6] = false;
                                } else
                                  dating[4] = false;
                              });
                            },
                          ),
                          DateColumn(
                            weekDay: "Sat",
                            date: "21",
                            dateBg:
                                dating[5] ? Colors.white : Colors.transparent,
                            dateTextColor:
                                dating[5] ? UIData.mainColor : Colors.white,
                            onpressed: () {
                              setState(() {
                                if (dating[5] == false) {
                                  dating[5] = true;
                                  dating[1] = false;
                                  dating[0] = false;
                                  dating[2] = false;
                                  dating[4] = false;
                                  dating[3] = false;
                                  dating[6] = false;
                                } else
                                  dating[5] = false;
                              });
                            },
                          ),
                          DateColumn(
                            weekDay: "Sun",
                            date: "22",
                            dateBg:
                                dating[6] ? Colors.white : Colors.transparent,
                            dateTextColor:
                                dating[6] ? UIData.mainColor : Colors.white,
                            onpressed: () {
                              setState(() {
                                if (dating[6] == false) {
                                  dating[6] = true;
                                  dating[1] = false;
                                  dating[0] = false;
                                  dating[2] = false;
                                  dating[4] = false;
                                  dating[5] = false;
                                  dating[3] = false;
                                } else
                                  dating[6] = false;
                              });
                            },
                          ),
                        ]),
                    SizedBox(height: 15),
                  ])),
              Container(
                  width: screen_size_width,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 18),
                      Text("Available Slot", style: TextStyle(fontSize: 16)),
                      SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          runSpacing: 15,
                          spacing: 2,
                          children: <Widget>[
                            buttonTime(
                                "9:30 - 10:30 AM",
                                clock[0] ? UIData.mainColor:Colors.white ,
                                clock[0] ? Colors.white : Colors.black54,
                              () {
                                setState(() {
                                  if (clock[0] == false) {
                                    clock[0] = true;
                                    clock[1] = false;
                                    clock[4] = false;
                                    clock[2] = false;
                                    clock[3] = false;
                                    clock[5] = false;
                                  } else
                                    clock[0] = false;
                                });
                            }),
                            buttonTime("10:30 - 11:45 AM",  clock[1] ? UIData.mainColor:Colors.white ,
                                clock[1] ? Colors.white : Colors.black54,
                                    () {
                                  setState(() {
                                    if (clock[1] == false) {
                                      clock[1] = true;
                                      clock[0] = false;
                                      clock[4] = false;
                                      clock[2] = false;
                                      clock[3] = false;
                                      clock[5] = false;
                                    } else
                                      clock[1] = false;
                                  });
                                }),
                            buttonTime("12:00 - 1:30 PM",  clock[2] ? UIData.mainColor:Colors.white ,
                                clock[2] ? Colors.white : Colors.black54,
                                    () {
                                  setState(() {
                                    if (clock[2] == false) {
                                      clock[2] = true;
                                      clock[1] = false;
                                      clock[4] = false;
                                      clock[0] = false;
                                      clock[3] = false;
                                      clock[5] = false;
                                    } else
                                      clock[2] = false;
                                  });
                                }),
                            buttonTime("2:00 - 4:30 PM",   clock[3] ? UIData.mainColor:Colors.white ,
                                clock[3] ? Colors.white : Colors.black54,
                                    () {
                                  setState(() {
                                    if (clock[0] == false) {
                                      clock[3] = true;
                                      clock[1] = false;
                                      clock[4] = false;
                                      clock[2] = false;
                                      clock[0] = false;
                                      clock[5] = false;
                                    } else
                                      clock[3] = false;
                                  });
                                }),
                            buttonTime("5:30 - 6:30 PM",   clock[4] ? UIData.mainColor:Colors.white ,
                                clock[4] ? Colors.white : Colors.black54,
                                    () {
                                  setState(() {
                                    if (clock[4] == false) {
                                      clock[4] = true;
                                      clock[1] = false;
                                      clock[0] = false;
                                      clock[2] = false;
                                      clock[3] = false;
                                      clock[5] = false;
                                    } else
                                      clock[4] = false;
                                  });
                                }),
                            buttonTime("6:30 - 7:30 PM",  clock[5] ? UIData.mainColor:Colors.white ,
                                clock[5] ? Colors.white : Colors.black54,
                                    () {
                                  setState(() {
                                    if (clock[5] == false) {
                                      clock[5] = true;
                                      clock[1] = false;
                                      clock[4] = false;
                                      clock[2] = false;
                                      clock[3] = false;
                                      clock[0] = false;
                                    } else
                                      clock[5] = false;
                                  });
                                }),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Text("Choose Hair Specialists",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      Container(
                          height: 140,
                          width: screen_size_width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    tabing[0]=!tabing[0] ;
                                    if(tabing[0]==true)
                                    { tabing[2]=false; tabing[1]=false ;}
                                  });
                                },
                                child: SpecialistColumnBook(
                                    specImg: "images/po.jpg",
                                    specName: "Anny Roy",c: tabing[0]?Colors.pink:Colors.black,),
                              ),
                              SizedBox(width: 25),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    tabing[1]=!tabing[1] ;
                                    if(tabing[1]==true)
                                    { tabing[0]=false; tabing[2]=false ;}
                                  });
                                },
                                child: SpecialistColumnBook(
                                    specImg: "images/braid4.jpg",
                                    specName: "Joy Roy",c: tabing[1]?Colors.pink:Colors.black,),
                              ),
                              SizedBox(width: 25),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                        tabing[2]=!tabing[2] ;
                                        if(tabing[2]==true)
                                       { tabing[0]=false; tabing[1]=false ;}
                                  });
                                },
                                child: SpecialistColumnBook(
                                    specImg: "images/braid3.jpg",
                                    specName: "Patience Roy", c: tabing[2]?Colors.pink:Colors.black,),
                              ),
                            ],
                          ))
                    ],
                  )),
              SizedBox(height: 10),
              MyButton(btnText: "Book", onpressed: () {
                // Fluttertoast.showToast(
                //   msg: "process Book is Secusfful \n ",
                //   toastLength: Toast.LENGTH_SHORT,
                //   gravity: ToastGravity.CENTER,
                //   timeInSecForIosWeb: 3,
                //   backgroundColor: Color(0xFFFBF2D9),
                //   textColor: Colors.pink.shade700,
                //   //webShowClose:true,
                //   fontSize: 20.0,
                // );
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Appointment()));
              }),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
