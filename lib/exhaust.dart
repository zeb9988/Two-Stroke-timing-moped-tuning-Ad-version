import 'package:flutter/material.dart';

class Exhaust extends StatelessWidget {
  const Exhaust({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exhaust:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'You want as much of the exhaust gases to leave the cylinder as possible in order for the pressure to be reduced when the transfers open. This means you would want the exhaust to open early, i.e. a long duration. However, you also want the gas to produce as much power as possible. You want the cycle to be as long as possible and not push power out the exhaust, which is why a too long duration will actually decrease power. If an expansion chamber is used, you can increase the duration and the resonance in the chamber will push some of the gases back at the closing of the exhaust port. If you don\'t use an expansion chamber, you should stay below 175° duration.',
          ),
        ],
      ),
    );
  }
}
