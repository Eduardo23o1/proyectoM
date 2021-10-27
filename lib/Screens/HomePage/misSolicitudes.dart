import 'package:flutter/material.dart';

class MisSolicitarScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            filas(
              nombre: 'Casa hermosa',
              img: 'assets/images/descarga.png',mensaje: 'no asignado',
            ),
            filas(
              nombre: 'Casa hermosa',
              img: 'assets/images/descarga.png',mensaje: 'no asignado',
            ),
            filas(
              nombre: 'Casa hermosa',
              img: 'assets/images/descarga.png',mensaje: 'no asignado',
            ),
            filas(
              nombre: 'Casa hermosa',
              img: 'assets/images/descarga.png',mensaje: 'no asignado',
            ),
            filas(
              nombre: 'Casa hermosa',
              img: 'assets/images/descarga.png',mensaje: 'no asignado',
            ),
            filas(
              nombre: 'Casa hermosa',
              img: 'assets/images/descarga.png',mensaje: 'no asignado',
            ),
            filas(
              nombre: 'Casa hermosa',
              img: 'assets/images/descarga.png',mensaje: 'no asignado',
            ),
            filas(
              nombre: 'Casa hermosa',
              img: 'assets/images/descarga.png',mensaje: 'no asignado',
            ),
            filas(
              nombre: 'Casa hermosa',
              img: 'assets/images/descarga.png',mensaje: 'no asignado',
            ),
          ],
        ),
      ),
    );
  }
}

class filas extends StatelessWidget {
  final nombre, img, mensaje;
  filas({this.nombre, this.img, this.mensaje});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.black,
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {},
                child: SizedBox(
                    width: 332,
                    height: 70,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 70,
                            height: 70, //'assets/images/descarga.png'
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(img),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                )),
                          ),
                          // icon
                          Column(
                            children: [
                              SizedBox(height: size.height * 0.02),
                              Positioned(
                                child: SizedBox(
                                  width: 230,
                                  child: Text(
                                    nombre,
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontFamily: 'marker'),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: SizedBox(
                                  width: 230,
                                  child: Text(
                                    mensaje,
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontFamily: 'marker'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                                icon: const Icon(Icons.more_vert),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      ],
    );
  }
}
