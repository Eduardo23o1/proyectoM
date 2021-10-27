import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_auth/Screens/HomePage/configuracion.dart';
import 'package:flutter_auth/Screens/HomePage/inicio.dart';
import 'package:flutter_auth/Screens/HomePage/misSolicitudes.dart';
import 'package:flutter_auth/Screens/home/home_screen.dart';
import 'package:flutter_auth/Screens/solicitarPublicacion/solicitar.dart';

import 'buscar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final Solicitar _listSolicitar = Solicitar();
  final Buscar _listBuscar = Buscar();
  final HomeScreen _listInicio = HomeScreen();
  final MisSolicitarScreen _listMis = MisSolicitarScreen();
  final Configuracion _listConfi = Configuracion();

  Widget _showPage = new HomeScreen();
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _listInicio;
        break;
      case 1:
        return _listBuscar;
        break;
      case 2:
        return _listMis;
        break;
      case 4:
        return _listConfi;
        break;
        defaiul:
        return new Container(
          child: new Text(
            'No page found by page choooser.',
            style: new TextStyle(fontSize: 30),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
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
        bottomNavigationBar: CurvedNavigationBar(
          index: _currentIndex,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.search, size: 30, color: Colors.white),
            Icon(Icons.add, size: 30, color: Colors.white),
            Icon(Icons.shopping_cart, size: 30, color: Colors.white),
            Icon(Icons.settings_rounded, size: 30, color: Colors.white),
          ],
          color: Colors.teal[800],
          buttonBackgroundColor: Colors.teal[800],
          backgroundColor: Colors.grey[100],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.grey[100],
          child: Center(
            child: _showPage,
          ),
        ));
  }
}
