
import 'package:flutter/material.dart';
import 'package:salonapp/pages/book.dart';

import '../Model/servicType.dart';
import '../widgets/specialist_column.dart';

class ServicesModel extends StatefulWidget {
   ServicesModel({super.key});

  @override
  State<ServicesModel> createState() => _ServicesModelState();
}

class _ServicesModelState extends State<ServicesModel> {
  List<ServicType> hair=[
   ServicType( "Hair","images/th1.jpg", "cut Hair",),
   ServicType( "Hair","images/th2.jpg", "cut Hair",),
   ServicType( "Hair","images/th3.jpg", "cut Hair",),
   ServicType( "Hair","images/th4.jpg", "cut Hair",),
   ServicType( "Hair","images/th5.jpg", "cut Hair",),
   ServicType( "Hair","images/th6.jpg", "cut Hair",),
   ServicType( "Hair","images/th7.jpg", "cut Hair",),
   ServicType( "Hair","images/th8.jpg", "cut Hair",),
   ServicType( "Hair","images/th9.jpg", "cut Hair",),
   ServicType( "Hair","images/th10.jpg", "cut Hair",),
   ServicType( "Hair","images/th11.jpg", "cut Hair",),];
  List<ServicType> Spitialhair=[
   ServicType( "Hair","images/hair1.jpg", "SpitialHair",),
   ServicType( "Hair","images/hair2.jpg", "SpitialHair",),
   ServicType( "Hair","images/hair3.jpg", "SpitialHair",),
   ServicType( "Hair","images/hair4.jpg", "SpitialHair",),
   ServicType( "Hair","images/hair5.jpg", "SpitialHair",),
   ServicType( "Hair","images/hair6.jpg", "SpitialHair",),
   ServicType( "Hair","images/hair7.jpg", "SpitialHair",),
   ServicType( "Hair","images/hair8.jpg", "SpitialHair",),
   ServicType( "Hair","images/hair9.jpg", "SpitialHair",),

  ];
  List<ServicType> Extantion=[
   ServicType( "Bush Of Hair","images/exe1.jpg", "",),
   ServicType( "Bush Of Hair","images/exe2.jpeg", "",),
   ServicType( "Bush Of Hair","images/exe3.jpeg", "",),
   ServicType( "Bush Of Hair","images/exe4.jpeg", "",),
   ServicType( "Bush Of Hair","images/exe5.jpeg", "",),
   ServicType( "Toupee","images/p1.jpeg", "",),
   ServicType( "Toupee","images/p2.jpeg", "",),
   ServicType( "Toupee","images/p3.jpeg", "",),
   ServicType( "Toupee","images/p4.jpeg", "",),
  ];

  bool click=false;

  @override
  Widget build(BuildContext context)
  {
    final screen_size_width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs:[
          Tab(
          icon: Icon(Icons.cut), text: "CutHair",),
            Tab(
          icon: Icon(Icons.card_giftcard_rounded), text: "SpetialHair",),
        Tab(
          icon: Icon(Icons.add_circle), text: "Extintion",)
        ]),
          backgroundColor: Colors.pink.shade700,
            title: Text("Hair", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white),
            ),    ),
        body: TabBarView(
          children: [
            Container(
            width: double.infinity,
            child:GridView.builder(
              itemCount: hair.length,
              padding: EdgeInsets.all(7),
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BookPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.pink.shade700.withOpacity(0.7)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Card(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: ExactAssetImage('${hair[index].images}'),
                                      fit: BoxFit.fill)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1.0),
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15)),
                                  color: Colors.pink.withOpacity(0.3),
                                ),
                                child: Row(
                                  children: [
                                    SafeArea(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            "${hair[index].title}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        )),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            hair[index].clik=!hair[index].clik;

                                          });
                                        },
                                        icon: Icon(
                                          Icons.favorite,
                                          color: hair[index].clik? Colors.red.shade600:Colors.grey.shade600,
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                );
              },
            ),
          ),
            Container(
              width: double.infinity,
              child:GridView.builder(
                itemCount: Spitialhair.length,
                padding: EdgeInsets.all(7),
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BookPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pink.shade700.withOpacity(0.7)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Card(
                          child: Stack(
                            alignment: AlignmentDirectional.bottomStart,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                        image: ExactAssetImage('${Spitialhair[index].images}'),
                                        fit: BoxFit.fill)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 1.0),
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15)),
                                    color: Colors.pink.withOpacity(0.3),
                                  ),
                                  child: Row(
                                    children: [
                                      SafeArea(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              "${Spitialhair[index].title}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              hair[index].clik=!hair[index].clik;

                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color: hair[index].clik? Colors.red.shade600:Colors.grey.shade600,
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Bush Of Hair",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink
                      ),),
                    ),
                    SizedBox(height: 15,),
                    Container(
                        height: 230,
                        width: screen_size_width,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: Extantion.length,
                          itemBuilder: ( context, int index) {
                            return     Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * .6,
                                height: 200,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4), BlendMode.darken),
                                        image: ExactAssetImage('${Extantion[index].images}',),
                                        fit: BoxFit.cover)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(left:0.0),
                                      child: Text("${Extantion[index].title}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 18,
                                        ),

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );

                          },

                        )),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Baroki",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink
                      ),),
                    ),
                    SizedBox(height:10,),
                    Container(
                        height: 230,
                        width: screen_size_width,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: ( context, int index) {
                            return     Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * .6,
                                height: 200,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        colorFilter: ColorFilter.mode(
                                            Colors.black.withOpacity(0.4), BlendMode.darken),
                                        image: ExactAssetImage('${Extantion[index+5].images}',),
                                        fit: BoxFit.cover)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(left:0.0),
                                      child: Text("${Extantion[index+5].title}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 18,
                                        ),

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );

                          },

                        )),
                  ],
                ),
              ),
            ),],

        ),
        ),
    );

  }
}
