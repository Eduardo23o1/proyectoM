import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/HomePage/HomePage.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.3),
            Positioned(
              child: SizedBox(
                width: 300,
                height: 50,
                child: Text(
                  "Bienvenido!",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.teal[800],
                      fontFamily: 'marker'),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Positioned(
              child: SizedBox(
                width: 300,
                height: 30,
                child: Text(
                  "Inicia sesion para continuar",
                  style: TextStyle(
                      fontSize: 12, color: Colors.black, fontFamily: 'marker'),
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
            RoundedButton(
              text: "LOGIN",
              color: Colors.teal[800],
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BottomNavBar();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              '¿Olvidaste tu contraseña?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'marker'),
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              press: () {
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
