import 'package:flutter/material.dart';

class DurationExhaust extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exhaust Duration Guide:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BulletText('138-150: Stock on most Mopeds to keep you under 30 MPH.'),
          BulletText(
              '151-161: Low RPM powerband timing. Good for low & mid-range torque power, up to 7K-8K RPM range.'),
          BulletText(
              '162-168: Very usable timing. Good mid-range torque & power up to 8K-9K RPM range.'),
          BulletText(
              '169-175: Best all-around power band timing. Good upper mid-range torque with high RPM power up to a 9K-10K RPM range.'),
          BulletText(
              '176-182: Gives weak power under 5K, good power at 7K, and will rip from 8K up peaking from 9K up to a 10.2K-11.2K RPM range.'),
          BulletText(
              '183-187: Gives no power under 5.5K, very weak upper mid-range, some power at 7K, good at 8K, starts to rip from 9+K, pulls to the 11.5K-13.5 RPM range.'),
          BulletText(
              '188-198: Very limited use. Almost no torque with a narrow high RPM power band at Pro use racing high revs.'),
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
