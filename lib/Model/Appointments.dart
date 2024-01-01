
import 'package:flutter/material.dart';
import 'package:salonapp/Model/user.dart';

import 'ServicesModel.dart';

class Booking{
  final user  iduser;
  final int ? id;
  final String ?time;
  final SevicesModel ?services;
  Booking(this.iduser, this.id, this.time, this.services);
}

class Appoint {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Appoint({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}


