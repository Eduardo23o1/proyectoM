import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_button2.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/logo.png", height: 200.0),
            SizedBox(height: size.height * 0.1),
            Text(
              "Vive de Lujo",
              style: TextStyle(
                  fontSize: 50, color: Colors.white, fontFamily: 'marker'),
            ),
            SizedBox(height: size.height * 0.001),
            Text(
              "Aquí esta tu hogar",
              style: TextStyle(
                  fontSize: 15, color: Colors.white, fontFamily: 'marker'),
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton2(
              text: "Iniciar",
              color: Colors.white,
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
            TextButton(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                child: Text('Crear Cuenta',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
              style: TextButton.styleFrom(
                side: BorderSide(color: Colors.white, width: 2),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
