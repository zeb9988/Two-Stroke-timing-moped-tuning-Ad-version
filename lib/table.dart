import 'package:flutter/material.dart';

class table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exhaust, Transfer, and Intake Durations (Dragonfly75):',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Flexible(child: Center(child: Text('Peak Power RPM'))),
              Flexible(child: Center(child: Text('Exhaust'))),
              Flexible(child: Center(child: Text('Transfer'))),
              Flexible(child: Center(child: Text('Blowdown'))),
              Flexible(child: Center(child: Text('Intake'))),
            ],
          ),
          Row(
            children: [
              Flexible(child: Center(child: Text('6,000'))),
              Flexible(child: Center(child: Text('158'))),
              Flexible(child: Center(child: Text('120'))),
              Flexible(child: Center(child: Text('19'))),
              Flexible(child: Center(child: Text('125'))),
            ],
          ),
          Row(
            children: [
              Flexible(child: Center(child: Text('7,000'))),
              Flexible(child: Center(child: Text('167'))),
              Flexible(child: Center(child: Text('122'))),
              Flexible(child: Center(child: Text('22.5'))),
              Flexible(child: Center(child: Text('130'))),
            ],
          ),
          Row(
            children: [
              Flexible(child: Center(child: Text('8,000'))),
              Flexible(child: Center(child: Text('175'))),
              Flexible(child: Center(child: Text('124'))),
              Flexible(child: Center(child: Text('25.5'))),
              Flexible(child: Center(child: Text('135'))),
            ],
          ),
          Row(
            children: [
              Flexible(child: Center(child: Text('9,000'))),
              Flexible(child: Center(child: Text('183'))),
              Flexible(child: Center(child: Text('126'))),
              Flexible(child: Center(child: Text('28.5'))),
              Flexible(child: Center(child: Text('140'))),
            ],
          ),
          Row(
            children: [
              Flexible(child: Center(child: Text('10,000'))),
              Flexible(child: Center(child: Text('192'))),
              Flexible(child: Center(child: Text('128'))),
              Flexible(child: Center(child: Text('32'))),
              Flexible(child: Center(child: Text('145'))),
            ],
          ),
        ],
      ),
    );
  }
}
