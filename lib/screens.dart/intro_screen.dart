import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:paws_app/screens.dart/home_screen.dart';
import 'package:paws_app/utilities/map.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  _SetLocationState createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  String origin = '';
  String destination = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "HI GOPI\nWELCOME TO..... LORE,=M IPSUM GOPI ORU KALLAN PAVAM ANENU ADYAM THONNUM BUT NHE IS  HGHGWIRIURQORUOQUI A THIRD RATE GUNDA OF THE YEAR 2012",
                  style: TextStyle(
                      color: Color(0xff8A7F81),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xffC4C4C4),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
            ),
          ),
          Expanded(
            flex: 4,
            child: SizedBox(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  TextField(
                    onChanged: (String originvalue) {
                      origin = originvalue;
                      print(origin);
                    },
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Origin'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Destination'),
                    onChanged: (String destinationvalue) {
                      destination = destinationvalue;
                      print(destination);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  IconButton(
                    color: Colors.blue,
                    icon: Text('Go'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  origin: origin,
                                  destination: destination,
                                )),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
