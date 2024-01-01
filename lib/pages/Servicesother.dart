import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

import 'book.dart';
class ServicesOther extends StatelessWidget {
   ServicesOther({super.key, required this.nameServices, required this.images});
   final String nameServices;
   final List<String>images;
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade700,
        title: Text(nameServices, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white),
        ),    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(nameServices,style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.pink
            ),),
          ),
         // SizedBox(height:10,),
          Container(
              height: 230,
              width: screen_size_width,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: ( context, int index) {
                  return     Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4), BlendMode.darken),
                              image: ExactAssetImage(images[index]),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left:0.0),
                            child: Text(nameServices,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                  );

                },

              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(textAlign: TextAlign.center,"You Can Book any Services in your Home \n, Injoi with Me Application",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.pink
            ),),
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
      ),

    );
  }
}
