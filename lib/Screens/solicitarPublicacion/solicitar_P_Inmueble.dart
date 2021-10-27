import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/solicitarPublicacion/spubicacion_screen.dart';

class SolicitarScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/perfil.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                  )),
            ), // icon
            Text("  Eduardo"), // text
          ],
        ),
        actions: [
          IconButton(
              tooltip: 'Notificaciones',
              icon: Icon(Icons.notifications),
              onPressed: () {})
        ],
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Text(
              'Solicitar Pubicacion de inmueble',
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
            filas(
              nombre: 'Casa campestre',
              img: 'assets/images/descarga.png',
            ),
            filas(
              nombre: 'Casa campestre',
              img: 'assets/images/descarga.png',
            ),
          ],
        ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SpublicidadScreen();
                      },
                    ),
                  );
                },
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
