import 'package:flutter/material.dart';

class Intake extends StatelessWidget {
  const Intake({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Intake Tuning:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
              'You want to get as much air and gas into the cylinder, which means you want the area to be as large as possible. However, if you still want some low RPM torque, you should stay below 140° duration, unless you are using reed or disc valves.\n\nOnce you know the duration you want for each port, enter them in the formulas above, and you will see what you need to do to the port areas in order to reach the target RPM.\n\nYou want the Intake and the Exhaust "most useful RPM" both to be at your target RPM, and the Transfer area to be as large as possible given the duration and blowdown that fits the characteristics you are aiming for.\n\nUse the information below to help you on the way.'),
          // Add the additional information below
        ],
      ),
    );
  }
}
