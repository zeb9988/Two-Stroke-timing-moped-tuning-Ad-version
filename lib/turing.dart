import 'package:flutter/material.dart';

class turing extends StatelessWidget {
  const turing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tuning:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
              'The first thing you need to do when tuning a two-stroke is to determine its characteristics.\n'),
          Text(
              'Do you want it to be full range, still strong at low rpm, or do you want it for higher power at rpm even if that means you will lose some low rpm?\n'),
          Text(
              'You basically want the ports to be as large as possible, without going too high on its duration.\n'),
          Text(
              'You will start by determining the duration for each port, and then try to get as much area as possible without exceeding that duration.\n'),
        ],
      ),
    );
  }
}
