
import 'package:flutter/material.dart';

import '../pages/book.dart';
import 'button2.dart';


class ImageCard extends StatefulWidget {
  final String cardImg;

  const ImageCard({required this.cardImg}) ;

  @override
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
              image: AssetImage(widget.cardImg),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left:0.0),
            child: Text("Look awesome \n & save Some",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 18,
                  ),

                ),
          ),

          Row(
            children: [
               SizedBox(width: 135),
              MyButton2(btnText: "Booked ", onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BookPage()));
              },),
            ],
          )
        ],
      ),
    );
  }
}
