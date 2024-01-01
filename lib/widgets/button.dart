
import 'package:flutter/material.dart';

import '../../uidata.dart';


class MyButton extends StatelessWidget {
  late final String btnText;
  late final VoidCallback onpressed;

   MyButton({ required this.btnText, required this.onpressed}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: 40,
      child: MaterialButton(
        color: UIData.mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        onPressed: onpressed,
        child: Text(btnText, style: TextStyle(color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold)),
      ),
    );
  }

}