import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Usefullinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Useful links:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ClickableLink('Airsal 70cc (45mm) Cylinder Kit Summary',
              'http://www.mopedarmy.com/wiki/Puch_cylinder_kit_summary#Airsal_70cc_.2845mm.29'),
          SizedBox(
            height: 10,
          ),
          ClickableLink('ZMOD - 2 Stroke Tuning Calculator App',
              'https://play.google.com/store/apps/details?id=com.sahapon.zmod'),
          SizedBox(
            height: 10,
          ),
          ClickableLink('Motorbike Tuning Guide',
              'http://www.dragonfly75.com/motorbike/'),
          SizedBox(
            height: 10,
          ),
          ClickableLink('Port Durations and Formulas',
              'http://www.dragonfly75.com/motorbike/portdurations.html'),
          SizedBox(
            height: 10,
          ),
          ClickableLink('Motorcycle Cylinder Kit Formulas',
              'http://www.dragonfly75.com/motorbike/formulas.html'),
          SizedBox(
            height: 10,
          ),
          ClickableLink('2-Stroke Cylinder Primer',
              'http://www.macdizzy.com/cyl_primer.htm'),
          SizedBox(
            height: 10,
          ),
          ClickableLink('Calculating Port Timing Guide',
              'http://www.mopedarmy.com/wiki/Calculating_port_timing'),
          SizedBox(
            height: 10,
          ),
          ClickableLink('Jenning Full - Motorcycle Tuning Guide',
              'http://www.amrca.com/tech/tuners.pdf'),
          ClickableLink('Jenning Ch 3 - Motorcycle Tuning Guide',
              'http://edj.net/2stroke/BellPerformanceTuning/Bell%20Chapter%203.pdf'),
          SizedBox(
            height: 10,
          ),
          ClickableLink('Degrees to Millimeters Conversion',
              'http://concubidated.com/ignition.php'),
        ],
      ),
    );
  }
}

class ClickableLink extends StatelessWidget {
  final String title;
  final String url;

  ClickableLink(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
