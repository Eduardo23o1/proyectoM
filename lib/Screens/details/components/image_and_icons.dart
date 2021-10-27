import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FlatButton(
                          onPressed: () => {},
                          color: Colors.white,
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[Icon(Icons.bathtub, color: Colors.teal[800]), Text("2 baños", style: TextStyle(
                      color: Colors.teal[800],
                      fontSize: 12,fontFamily: 'marker'),)],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FlatButton(
                          onPressed: () => {},
                          color: Colors.white,
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[Icon(Icons.bed, color: Colors.teal[800]), Text("2 cuartos", style: TextStyle(
                      color: Colors.teal[800],
                      fontSize: 11,fontFamily: 'marker'),)],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FlatButton(
                          onPressed: () => {},
                          color: Colors.white,
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[Icon(Icons.kitchen, color: Colors.teal[800]), Text("1 cocina", style: TextStyle(
                      color: Colors.teal[800],
                      fontSize: 11,fontFamily: 'marker'),)],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FlatButton(
                          onPressed: () => {},
                          color: Colors.white,
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[Icon(Icons.zoom_out_map, color: Colors.teal[800]), Text("1000 m2", style: TextStyle(
                      color: Colors.teal[800],
                      fontSize: 11,fontFamily: 'marker'),)],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FlatButton(
                          onPressed: () => {},
                          color: Colors.white,
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[Icon(Icons.money_off, color: Colors.teal[800]), Text("venta", style: TextStyle(
                      color: Colors.teal[800],
                      fontSize: 11,fontFamily: 'marker'),)],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/image_1.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
