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

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
            Image.asset(
              "assets/images/inicio.png",
              width: size.width * 1.3,
            ),
            SizedBox(height: size.height * 0.01),
            Positioned(
              child: SizedBox(
                width: 360,
                height: 50,
                child: Text(
                  "Crear Cuenta!",
                  style: TextStyle(fontSize: 40, color: Colors.teal[800],fontFamily: 'marker'),
                ),
              ),
            ),
            Container(
              child: SizedBox(
                width: 350,
                height: 100,
                child: Text(
                  "Registrate, es gratis",
                  style: TextStyle(fontSize: 12, color: Colors.black,fontFamily: 'marker'),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
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
                  hintText: 'Telefono',
                  icon: Icon(
                    Icons.phone,
                    color: Colors.teal[800],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Correo',
                  icon: Icon(
                    Icons.mail,
                    color: Colors.teal[800],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                cursorColor: Colors.teal[800],
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  icon: Icon(
                    Icons.people_alt,
                    color: Colors.teal[800],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.teal[800],
                  ),
                  hintText: 'Contraseña',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.teal[800],
                  ),
                  hintText: 'Confirmar la Contraseña',
                ),
              ),
            ),
            RoundedButton(
              text: "Crear Cuenta",
              color: Colors.teal[800],
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
