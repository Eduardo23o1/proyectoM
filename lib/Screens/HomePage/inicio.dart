import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/details/details_screen.dart';
import 'package:flutter_auth/Screens/home/home_screen.dart';
import 'package:flutter_auth/Screens/solicitarPublicacion/solicitar_P_Inmueble.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xEBECF1),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Text(
              'Casas',
              style: TextStyle(
                  fontSize: 40, color: Colors.teal[800], fontFamily: 'marker'),
            ),
            filas(
              nombre: 'Casa',
              img: 'assets/images/descarga.png',
            ),
            filas(
              nombre: 'Casa campestre',
              img: 'assets/images/descarga.png',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF00695C),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen()));
        },
        tooltip: 'add',
        child: Icon(Icons.add),
      ),
    );
  }
}

class filas extends StatelessWidget {
  final nombre, img;
  filas({this.nombre, this.img});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {},
                child: SizedBox(
                  width: 300,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100, //'assets/images/descarga.png'
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(img),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                            )),
                      ), // icon
                      Text(nombre), // text
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
