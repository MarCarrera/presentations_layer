// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:presentations_layer/common/theme_helper.dart';

import 'certificate_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Hacemos responsive para adaptar los widgets a diferentes pantallas
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff7292CF),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          //----------------------------INICIA CONTENEDOR BLANCO----------------------//
          SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.38),
                    //height: 500,
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: 20,
                      right: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                  ),
                  //-------------------------TEXTO "INGRESA PARA CONTINUAR"---------------------//
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: EdgeInsets.only(
                            top: size.height * 0.42, left: 22.0),
                        child: const Text(
                          'Ingresa para continuar',
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Color(0xff2855AE)),
                        )),
                  ),
                  //--------------------------------ENTRADA EMAIL-------------------------------//
                  Container(
                    margin: EdgeInsets.only(
                        top: size.height * 0.46,
                        right: size.width * 0.09,
                        left: size.width * 0.09),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'enter your email'),
                    ),
                  ),
                  //--------------------------------ENTRADA PASSWORD-------------------------------//
                  Container(
                    margin: EdgeInsets.only(
                        top: size.height * 0.57,
                        right: size.width * 0.09,
                        left: size.width * 0.09),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'enter your password'),
                    ),
                  ),
                  //-----------------------------------BOTON INGRESAR--------------------------//
                  Container(
                    height: 54,
                    margin: EdgeInsets.only(
                        top: size.height * 0.70,
                        right: size.width * 0.1,
                        left: size.width * 0.1),
                    alignment: Alignment.topCenter,
                    decoration: ThemeHelper().buttonBoxDecoration(context),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CertificateScreen()));
                        },
                        style: ThemeHelper().buttonStyle(),
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 12, 30, 12),
                            child: Text('Sign In'.toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )))),
                  ),
                  //---------------------------------------------"¿OLVIDASTE TU CONTRASEÑA?"------------------------//
                  Container(
                    margin: EdgeInsets.only(
                        top: size.height * 0.84, right: size.width * 0.09),
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "¿Olvidaste tu contraseña?",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  //---------------------------------------------"CREAR UNA CUENTA"------------------------//
                  Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.84,
                    ),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Crear una cuenta",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Color(0xff7292CF),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          //----------------------------TERMINA CONTENEDOR BLANCO----------------------//
        ]),
      ),
    );
  }
}
