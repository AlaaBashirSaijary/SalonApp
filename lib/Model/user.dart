import 'package:flutter/material.dart';

class user{
  final int ? id;
  final String ? username;
  final String ? email;
  final int ? phone;
  final String ? address;
  final String ? image;

  user(this.id, this.address, this.image,  {required this.username,required this.email,required this.phone});
}