

import 'package:aap_june_major_project/HomePage.dart';
import 'package:aap_june_major_project/LoginPage.dart';
import 'package:aap_june_major_project/register.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context) => MyLogin(),
      'Register' : (context) => MyRegister(),
    },
  ));
}

