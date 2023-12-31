import 'package:flutter/material.dart';

class Piston extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transfer Port Duration (Jenning):',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BulletText('Peak power RPM: Transfer duration (°)'),
          BulletText('6,500: 120-124'),
          BulletText('8,000: 124-128'),
          BulletText('9,000: 126-130'),
          BulletText('10,000: 128-132'),
          BulletText('11,000: 130-134'),
          BulletText('12,000: 132-136'),
          BulletText('13,000: 134-140'),
          BulletText('14,000: 136-142'),
          SizedBox(height: 20),
          Text(
            'Transfer Shape and Size (taken from different sources):',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BulletText('Smooth (as non-sharp turns as possible)'),
          BulletText('Angled towards back (away from exhaust)'),
          BulletText(
              'Top angle: flat = higher peak at high RPM, steep = wider RPM and higher torque'),
          BulletText(
              'E.g. main transfer ~3-5°, rear transfer ~5-10°, boost ~50-60°'),
          BulletText(
              'Some say Main transfers should open first, then Secondary, then boost.'),
          BulletText('Jenning says boost and secondary should open first...'),
          SizedBox(height: 20),
          Text(
            'Piston Port Duration (Jenning):',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BulletText('Lowest useful RPM: Inlet duration (°)'),
          BulletText('4,000: 140'),
          BulletText('7,000: 150-155'),
          BulletText('8,000: 155-160'),
          BulletText('9,500: 165-170'),
          BulletText('11,000: 185-190'),
          BulletText('12,000: 195-200'),
          SizedBox(height: 20),
          Text(
            'Piston Port Duration (Crazy Wayne Moped Army):',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BulletText('120deg-130degs to flow up to 8k-10K.'),
          BulletText('135deg\'s to 138deg\'s is good for street tuning.'),
          BulletText(
              '137degs to 140deg\'s on a street-tuned variomatic, Moby, Derbi.......'),
          BulletText(
              'Go over 140deg\'s and you will get a lot of carb blowback under 4K RPM\'s.'),
          BulletText(
              'If you\'re ripping a powerband in the 9K to 11K range 138 to 142degs for one and two speeds.'),
          BulletText(
              'If you\'re slipping the clutch in at 6K+ and or variomatic hitting 11K+ 143degs to 147deg\'s is fun.'),
          BulletText(
              'One or two speeds with the clutch slipping in at or over 7K 147deg\'s to 150degs is about the max you want to go for off-track use.'),
          BulletText(
              'For the track with power bands starting at 10K clutch slipping in at 8.5K or higher one, two speed, or variomatic spinning to 12.5K 152 deg\'s to 154deg\'s.'),
          BulletText('Spinning to 14K 155degs to 158deg\'s.'),
          BulletText(
              'The max I go is 160degs or it will get boggy when I blip the throttle and be hard to start.'),
          BulletText(
              'It\'s best to have a wide piston port than wide with big timing for street use.'),
          BulletText(
              'If you go big on the PP timing, you will get big power at high RPMs but it will be harder to tune low RPM jetting with all the extra blowback.')
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
