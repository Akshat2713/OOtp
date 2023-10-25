
import 'package:flutter/material.dart';
import 'package:otp/otp.dart';
import 'package:otp/phone.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Myphone(),
    initialRoute: 'phone',
    routes: {
      'phone': (context) => Myphone(),
      'otp': (context) => MyOtp()
    },
  )
  );
}