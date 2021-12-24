// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'views/certificate_screen.dart';
import 'views/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //azul fuerte
  final Color _primaryColor = HexColor('#2855AE');
  //azul bajo
  final Color _accentColor = HexColor('#7292CF');

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: const Scaffold(
        body: LoginScreen(),
        //body: CertificateScreen(),
      ),
    );
  }
}
