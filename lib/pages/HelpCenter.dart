import 'package:flutter/material.dart';

import 'CallCenter.dart';

class helpCenter extends StatelessWidget {
  const helpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade700,
        elevation: 0,
        title: Text(
          "Help Center",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(alignment: AlignmentDirectional.bottomCenter, children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.pink,
                    //borderRadius: BorderRadius.circular(10)
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'images/4.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.pink.shade700.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: 45,
                                color: Colors.white54,
                              ),
                              Text(
                                "Call",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.mark_email_unread_rounded,
                                size: 45,
                                color: Colors.white54,
                              ),
                              Text(
                                "Email",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "phone :+963 0934 456 789",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  fontSize: 23),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "email :@hr\.BeautycenterAdmin.com",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  fontSize: 23),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hi,My name Salma ,and my job is it help you and relpace you about any quasetions \n"+'\n'
                    "you can contect with me accross send you question im my Email and I will respone for you quesition \n"+'\n'
                    "or can call me accross my phone and I will hape to use you " ,style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),),
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  SizedBox(width: 50,),
                  Container(
                    width: 200,height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: MaterialButton(

                        color: Colors.pink.shade700,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CallCenter()),

                          );
                        },
                        child:  Text('CallCenter',style: TextStyle(
                            color:  Color(0xFFFBF2D9),
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),)
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
