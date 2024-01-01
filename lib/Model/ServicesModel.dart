import 'package:flutter/material.dart';

class SevicesModel{
  final int ? id;
  final String ? name;
  final String ? type;
  final String ? image;
  final int ? cost;
  final int ? Rate;
  //لان العرض هو جزء من الخدمات بس بيحوي على معدل الزيادات
  SevicesModel(this.id, this.name, this.type, this.cost, this.Rate, this.image);
}