import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';

import 'package:flutter_auth/components/rounded_button.dart';
import 'package:image_picker/image_picker.dart';

class Solicitar extends StatefulWidget {
  @override
  _SolicitarState createState() => _SolicitarState();
}

class _SolicitarState extends State<Solicitar> {
  final _formKey = GlobalKey<FormState>();
  bool seleccionar = false;
  File imagen, imagen2, imagen3;
  final picker = ImagePicker();

  Future selImagen(op) async {
    var pickerFile;
    if (op == 1) {
      // ignore: deprecated_member_use
      pickerFile = await picker.getImage(source: ImageSource.camera);
    } else {
      // ignore: deprecated_member_use
      pickerFile = await picker.getImage(source: ImageSource.gallery);
    }

    setState(() {
      if (pickerFile != null) {
        imagen = File(pickerFile.path);
      } else {
        print('No seleccionaste ninguna foto');
      }
    });
    Navigator.of(context).pop();
  }

  Future selImagen2(op) async {
    var pickerFile2;
    if (op == 1) {
      // ignore: deprecated_member_use
      pickerFile2 = await picker.getImage(source: ImageSource.camera);
    } else {
      // ignore: deprecated_member_use
      pickerFile2 = await picker.getImage(source: ImageSource.gallery);
    }

    setState(() {
      if (pickerFile2 != null) {
        imagen2 = File(pickerFile2.path);
      } else {
        print('No seleccionaste ninguna foto');
      }
    });
    Navigator.of(context).pop();
  }

  Future selImagen3(op) async {
    var pickerFile3;
    if (op == 1) {
      // ignore: deprecated_member_use
      pickerFile3 = await picker.getImage(source: ImageSource.camera);
    } else {
      // ignore: deprecated_member_use
      pickerFile3 = await picker.getImage(source: ImageSource.gallery);
    }

    setState(() {
      if (pickerFile3 != null) {
        imagen3 = File(pickerFile3.path);
      } else {
        print('No seleccionaste ninguna foto');
      }
    });
    Navigator.of(context).pop();
  }

  opciones(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      selImagen(1);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Tomar una foto',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.camera_alt, color: Colors.teal[800])
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selImagen(2);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Seleccionar una foto',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.image, color: Colors.teal[800])
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.red),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  opciones2(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      selImagen2(1);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Tomar una foto',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.camera_alt, color: Colors.teal[800])
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selImagen2(2);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Seleccionar una foto',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.image, color: Colors.teal[800])
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.red),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  opciones3(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      selImagen3(1);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.grey))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Tomar una foto',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.camera_alt, color: Colors.teal[800])
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      selImagen3(2);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Seleccionar una foto',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Icon(Icons.image, color: Colors.teal[800])
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.red),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  opcion(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.all(0),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: Colors.grey))),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "Barrio",
                              icon: Icon(Icons.location_on,
                                  color: Colors.teal[800]),
                            ),
                            // ignore: missing_return
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  barrio(
                    nombreB: 'Panama',
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: Colors.red),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Cancelar',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xEBECF1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.06),
              Container(
                child: SizedBox(
                  width: 350,
                  height: 100,
                  child: Text(
                    "Solicitar Publicacion de inmueble",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.teal[800],
                        fontFamily: 'marker'),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.1),
              Container(
                color: Colors.black,
              padding: EdgeInsets.all(10),
                child: SizedBox(
                    width: 250,
                    height: 200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                children: [
                  Row(
                    children: [
                      img(imagen: imagen),
                      img(imagen: imagen2),
                      img(imagen: imagen3),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {
                            opciones(context);
                          },
                          child:
                              Icon(Icons.camera_alt, color: Colors.teal[800]),
                        ),
                      ),
                      Container(
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {
                            opciones2(context);
                          },
                          child:
                              Icon(Icons.camera_alt, color: Colors.teal[800]),
                        ),
                      ),
                      Container(
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {
                            opciones3(context);
                          },
                          child:
                              Icon(Icons.camera_alt, color: Colors.teal[800]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ),
              ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: "Titulo",
                  icon: Icon(Icons.keyboard, color: Colors.teal[800]),
                ),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Direccion",
                  icon: Icon(Icons.location_city, color: Colors.teal[800]),
                ),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.location_on),
                color: Colors.teal[800],
                onPressed: () {
                  opcion(context);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Barrio",
                  icon: Icon(Icons.location_on, color: Colors.teal[800]),
                ),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Valor",
                  icon: Icon(Icons.price_change, color: Colors.teal[800]),
                ),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Número de habitaciones",
                  icon: Icon(Icons.tag_outlined, color: Colors.teal[800]),
                ),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Número de cocina",
                  icon: Icon(Icons.tag_outlined, color: Colors.teal[800]),
                ),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Número de baños",
                  icon: Icon(Icons.tag_outlined, color: Colors.teal[800]),
                ),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Metros cuadrados",
                  icon: Icon(Icons.zoom_out_map, color: Colors.teal[800]),
                ),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              SwitchListTile(
                activeColor: Color(0xFF00695C),
                title: Text('          Cuenta con parqueadero'),
                value: seleccionar,
                onChanged: (bool value) {
                  setState(() {
                    seleccionar = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: Text('Venta',
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
                  TextButton(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: Text('Arriendo',
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
              RoundedButton(
                text: "Enviar slicitud",
                color: Colors.teal[800],
                press: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class barrio extends StatelessWidget {
  final nombreB;
  barrio({this.nombreB});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              nombreB,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class img extends StatelessWidget {
  final imagen;
  img({this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Row(
      children: [
        imagen == null
            ? Container()
            : Image.file(
                imagen,
                width: 100,
              ),
      ],
    )
    );
  }
}
