import 'package:flutter/material.dart';

class Blow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Blowdown Tuning Starting Points for Single EX-port Kits (Crazy Wayne):',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BulletText(
              '16% to 17.5% of transfer timing with stock or weak hitting pipes up to 8,500RPMs with 154deg to 165deg exhaust.'),
          BulletText(
              '17.5% to 18.5% Good timing for strong pipes working in the 7,000RPM\'s to 9,200RPM range with 164deg to 170degs exhaust.'),
          BulletText(
              '18.% to 19.% Hard hitting pipes working in the 7,500RPM to 10,500RPM range with 168deg to 174degs exhaust.'),
          BulletText(
              '18.5% to 19.5% This is near the max for most one speeds with clutches engaging in the 4,000 to 5,000RPM range, with hard hitting pipes working in the 8,500RPM to 11,000RPM range with 172deg to 178degs exhaust.'),
          BulletText(
              '19.5% to 20% Is for big pipes working the 9,000RPM to 12,500 with EX-port timings of 176deg to 180deg.'),
          BulletText(
              '20% to 20.5% If you don\'t know what you\'re doing, just stop. This is for 178deg to 187 EX-port timings spinning 10,000RPM to 13,500+RPM.'),
          SizedBox(height: 20),
          Text(
            'Blowdown Tuning Starting Points for Split/Twin and Three-Port Exhaust Port Kits (Crazy Wayne):',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BulletText(
              '14.0% to 15.0% of transfer timing with stock or weak hitting pipes up to 8,500RPMs with 156deg to 165deg exhaust.'),
          BulletText(
              '15.0% to 16.0% Good timing for strong pipes working in the 7,000RPM\'s to 9,200RPM range with 164deg to 170degs exhaust.'),
          BulletText(
              '15.5% to 16.5% Hard hitting pipes working in the 7,500RPM to 10,500RPM range with 168deg to 174degs exhaust.'),
          BulletText(
              '16.0% to 17.0% This is near the max for most one speeds with clutches engaging in the 4,000 to 5,000RPM range, with hard hitting pipes working in the 8,500RPM to 11,000RPM range with 172deg to 178degs exhaust.'),
          BulletText(
              '17.0% to 17.5% Is for big pipes working the 9,000RPM to 12,500rpm range with EX-port timings of 176deg to 180deg.'),
          BulletText(
              '17.5% to 18.0% If you don\'t know what you\'re doing, just stop. This is for 178deg to 187 EX-port timings spinning 10,000RPM to 13,500+RPM.'),
          SizedBox(height: 20),
          Text(
            'Old Single EX-port Timings Chart/Notes (Crazy Wayne):',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BulletText(
              'Blowdown of 16 to 20: Stock on most Mopeds to keep you under 30 MPH with the best MPG.'),
          BulletText(
              'Blowdown of 18 to 22: Low RPM powerband timing. Good for low & mid-range torque power, up to 8K-9.5K RPM range.'),
          BulletText(
              'Blowdown of 20 to 24: Very usable timing. Works best with weaker hitting pipes. Good mid-range torque & power up to 9K-10.5K RPM range.'),
          BulletText(
              'Blowdown of 23 to 26: Very good all-around wide power band timing. Will work with most pipes. Strong upper mid-range torque with hi RPM power up to a 9.5K-11K RPM range.'),
          BulletText(
              'Blowdown of 25 to 27: A good pipe is a must. Best all-around power band timing. Riper upper mid-range torque with hi RPM power. Wide power band with a big power hit. Best power for everyday use up to 10K-11.5 RPM.'),
          BulletText(
              'Blowdown of 26 to 28: Low power under 5K, Good mid-range. Works best with pipes that peak hard in the 8K to 11.5K range fading/topping out at 12K. This is the max for most street setups.'),
          BulletText(
              'Blowdown of 28 to 30: Works best with a tuned variomatic or shifter engine. Very low power under 6K. Weak mid-range under 7.5K. The power band starts to get narrower and more peaky. Needs a HIGH RPM pipe. Gives the best power in the 9k to 12+K range, will pull past 13.5K with some setups.'),
          BulletText(
              'Blowdown of 30: At this point 99.% of you will just have a door stop. Very narrow power band. No power at RPM\'s under 8K, higher power at high high revs. You will fry most one-speed well-tuned clutches to be able to ride with a blowdown as high as this. You need a well-tuned variomatic or shifter engine that can spin over 14K.'),
          BulletText(
              'Blowdown of 32+: Way too high for any 1-speed or 2-speed automatic. This is only rideable at the race track on the very very best tuned variomatic shifter engine.')
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
