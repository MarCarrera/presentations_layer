import 'package:flutter/material.dart';
import 'package:presentations_layer/common/theme_helper.dart';

import 'login_screen.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Hacemos responsive para adaptar los widgets a diferentes pantallas
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certificado Covid',
            style: TextStyle(color: Colors.white)),
        elevation: 0,
        backgroundColor: const Color(0xff7292CF),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
        ),
      ),
      backgroundColor: const Color(0xff7292CF),
      body: Column(children: <Widget>[
        //----------------------------INICIA CONTENEDOR BLANCO----------------------//
        SizedBox(
            height: size.height * 0.875,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.03),
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
                //--------------------------------------IMAGENES------------------------------//
                Container(
                  height: 210,
                  width: 210,
                  margin: EdgeInsets.only(
                      top: size.height * 0.10,
                      right: size.width * 0.18,
                      left: size.width * 0.22),
                  child: Image.asset(
                    'assets/images/blob.png',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: size.height * 0.08,
                      right: size.width * 0.18,
                      left: size.width * 0.18),
                  child: Image.asset(
                    'assets/images/surgeon.png',
                  ),
                ),
                //------------------------------TEXTO DE INTRODUCCION--------------------------//
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.23), //33
                  alignment: Alignment.center,
                  child: const Text(
                    "      Para poder descargar tu certificado de \nvacunación contra covid, debes tener registro \n         en https://mivacuna.salud.gob.mx",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                //-------------------------"¿TE REGISTRASTE EN MI VACUNA?"---------------------//
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.only(top: size.height * 0.43), //50
                      child: const Text(
                        '¿Te registraste en "Mi Vacuna"?',
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: Colors.black87),
                      )),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //-----------------------------------BOTON "SI"--------------------------//
                    Container(
                      height: 52,
                      width: 77,
                      margin: EdgeInsets.only(
                          top: size.height * 0.72, //85
                          right: size.width * 0.10,
                          left: size.width * 0.18),
                      alignment: Alignment.bottomLeft,
                      decoration: ThemeHelper().buttonBoxDecoration(context),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 12, 12, 12),
                              child: Text('SI'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )))),
                    ),
                    //-----------------------------------BOTON "NO"--------------------------//
                    Container(
                      height: 54,
                      width: 77,
                      margin: EdgeInsets.only(
                        top: size.height * 0.72, //85
                        left: size.width * 0.10,
                        right: size.width * 0.15,
                      ),
                      alignment: Alignment.bottomRight,
                      decoration: ThemeHelper().buttonBoxDecoration(context),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ThemeHelper().buttonStyle(),
                          child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(11, 12, 12, 12),
                              child: Text('NO'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )))),
                    ),
                  ],
                ),
              ],
            )),
        //----------------------------TERMINA CONTENEDOR BLANCO----------------------//
      ]),
    );
  }
}
