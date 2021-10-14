import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:paws_app/utilities/map.dart';

class HomePage extends StatefulWidget {
  final String origin;
  final String destination;
  const HomePage({Key? key, required this.origin, required this.destination})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: MyMap(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(10),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      widget.origin,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'open',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 20),
                    leading: Text(
                      'Temperature   :',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
                    ),
                    title: Text(
                      '30°c',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 20),
                    leading: Text(
                      'Common Animals   :',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.red,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.red,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
