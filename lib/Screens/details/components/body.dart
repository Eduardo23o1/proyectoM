import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(
              title: "Casa 2 habitaciones",
              country: "Diag 20 # 25 a 45 Fundadores",
              price: 10000000),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 200,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: ElevatedButton(
                      child: Text(
                        'Solicitar visita',
                        style: TextStyle(color:  Colors.white),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal[800],
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    )),
              ),
              TextButton(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text('Comprar',
                      style: TextStyle(
                          color: Colors.teal[800],
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
                style: TextButton.styleFrom(
                  side: BorderSide(color: Colors.teal[800], width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
