import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Glossary:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BulletText(
              'RPM: Revolutions Per Minute, i.e. the number of turns the engine will do in a minute.\n'),
          BulletText(
              'RPM: Revolutions Per Minute, i.e. the number of turns the engine will do in a minute.\n'),
          BulletText(
              'Duration: Number of degrees which a port is open, i.e. if a port opens at 100° (after TDC) and closes at 260°, the duration is 160° (for intake you will have to use BDC as reference).\n'),
          BulletText(
              'TDC/BDC: Top Dead Center (piston top position), Bottom Dead Center (piston bottom position).\n'),
          BulletText(
              'Displacement: The "CC" (cm3) of your engine, (½ bore * PI * stroke).\n'),
          BulletText(
              'Mean half open area: The mean area of a port (in cm2) when it is "half open" (in °, not in mm, i.e. if a port opens at 100° it will be half open at 140° (between open and 180° (~70% for Exhaust, ~75% for transfer, ~65% for intake).\n'),
          BulletText(
              'Angle Area: The area of a port in relation to the displacement and duration (Mean half open area / displacement * duration).\n'),
          BulletText(
              'Time Area (TAm): (TAm = Z / N / 6 * A / D (TAm is Time Area in ms-cm2/cm3, Z is port open duration in degrees, N is crankshaft speed in RPM/1000, A is Mean half open area, D is displacement in cm3).\n'),
          BulletText(
              'Con Rod length: the length of the con rod (the rod that connects the piston to the crank).\n'),
          Divider(
            color: Colors.black,
            thickness: 2,
          )
        ],
      ),
    );
  }
}

class BulletText extends StatelessWidget {
  final String text;

  BulletText(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• ', style: TextStyle(fontSize: 20)),
        Flexible(child: Text(text)),
      ],
    );
  }
}
