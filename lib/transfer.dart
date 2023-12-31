import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  const Transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transfer:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
              'For the transfers, you need to first determine the exhaust duration and then look at the blowdown you need. If you want to keep low RPM torque, you want a blowdown of 20-25° or 17-19%, along with a large port area. The "most useful RPM" can be much higher than the target RPM. Note that the blowdown will be determined by both the transfer duration and the exhaust duration. So, if you increase the exhaust duration, the blowdown will increase even if you don\'t change the transfer ports. It\'s important to note that the shape of transfer ports is very important and usually very hard to grind, so be careful with the transfers.'),
        ],
      ),
    );
  }
}
