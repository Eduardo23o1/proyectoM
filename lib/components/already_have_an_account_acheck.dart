import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "¿ Aun no te registras ? " : "¿ Ya tienes cuenta ? ",
          style: TextStyle(color: Colors.black,fontFamily: 'marker'),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Crear Cuenta" : "Iniciar Sesion",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'marker'
            ),
          ),
        )
      ],
    );
  }
}
