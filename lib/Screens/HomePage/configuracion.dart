import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Configuracion extends StatefulWidget {
  @override
  _ConfiguracionState createState() => _ConfiguracionState();
}

class _ConfiguracionState extends State<Configuracion> {
  File imagen;
  final picker = ImagePicker();

  Future selImagen(op) async {
    var pickerFile;
    if (op == 1) {
      // ignore: deprecated_member_use
      pickerFile = await picker.getImage(source: ImageSource.camera);
    } else {
      // ignore: deprecated_member_use
      pickerFile = await picker.getImage(source: ImageSource.gallery);
    }

    setState(() {
      if (pickerFile != null) {
        imagen = File(pickerFile.path);
      } else {
        print('No seleccionaste ninguna foto');
      }
    });
    Navigator.of(context).pop();
  }

  opciones(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      selImagen(1);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Tomar una foto',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.camera_alt, color: Colors.teal[800])
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selImagen(2);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Seleccionar una foto',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.image, color: Colors.teal[800])
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.red),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
              child: SizedBox(
                width: 360,
                height: 50,
                child: Text(
                  "Mi Cuenta!",
                  style: TextStyle(fontSize: 40, color: Colors.teal[800],fontFamily: 'marker'),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.09),
            imagen == null
                ? Container()
                : Image.file(
                    imagen,
                    width: 100,
                  ),
            Container(
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {
                  opciones(context);
                },
                child: Icon(Icons.camera_alt, color: Colors.teal[800]),
              ),
            ),
            SizedBox(
              height: 30,
            ),            
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                cursorColor: Colors.teal[800],
                decoration: InputDecoration(
                  hintText: 'Nombre',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                cursorColor: Colors.teal[800],
                decoration: InputDecoration(
                  hintText: 'Apellido',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                cursorColor: Colors.teal[800],
                decoration: InputDecoration(
                  hintText: 'Fecha de naciemiento',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                cursorColor: Colors.teal[800],
                decoration: InputDecoration(
                  hintText: 'Telefono',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Correo',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
            ),
            RoundedButton(
              text: "Cambiar Contraseña",
              color: Colors.red[400],
              press: () {},
            ),
            RoundedButton(
              text: "Eitar",
              color: Colors.teal[800],
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
