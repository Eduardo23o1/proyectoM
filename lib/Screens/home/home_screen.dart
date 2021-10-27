import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/home/components/body.dart';
import 'package:flutter_auth/Screens/solicitarPublicacion/solicitar_P_Inmueble.dart';
import 'package:flutter_auth/Screens/solicitarPublicacion/spubicacion_screen.dart';
import 'package:flutter_auth/components/my_bottom_nav_bar.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      backgroundColor: Colors.grey[100],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF00695C),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => SolicitarScreen()));
        },
        tooltip: 'add',
        child: Icon(Icons.add),
      ),
    );
  }
}
