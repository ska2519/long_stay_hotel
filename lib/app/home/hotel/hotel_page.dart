import 'package:flutter/material.dart';

class HotelPage extends StatefulWidget {
  @override
  _HotelPageState createState() => _HotelPageState();
}

List images = [
  'assets/runningMario.png',
  'assets/runningMario.png',
];

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: images.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {},
        ),
      ),
    );
  }
}
