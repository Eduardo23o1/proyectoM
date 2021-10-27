import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';

class Buscar extends StatefulWidget {
  @override
  _BuscarState createState() => _BuscarState();
}

class _BuscarState extends State<Buscar> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.06),
            Container(
              child: SizedBox(
                width: 350,
                height: 100,
                child: Text(
                  "Buscar",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.teal[800],
                      fontFamily: 'marker'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
