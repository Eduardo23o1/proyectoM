import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/solicitarPublicacion/solicitar.dart';

class SpublicidadScreen extends StatelessWidget {
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
      body: Solicitar(),
      backgroundColor: Colors.grey[100],
    );
  }
}
