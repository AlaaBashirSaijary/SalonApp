import 'package:flutter/material.dart';

class DateColumn extends StatelessWidget {
  final String weekDay, date;
  final Color dateBg, dateTextColor;
  final VoidCallback onpressed;
  const DateColumn(
      { required this.weekDay, required this.date, required this.dateBg, required this.dateTextColor, required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(weekDay, style: TextStyle(color: Colors.white)),
        SizedBox(height: 15),
        Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: dateBg,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child:
            GestureDetector(
              onTap: onpressed,
                child: Text(date, style: TextStyle(color: dateTextColor)))),
      ],
    );
  }
}
