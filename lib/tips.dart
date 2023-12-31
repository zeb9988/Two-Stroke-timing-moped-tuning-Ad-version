import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "It's best to have a wide piston port than wide with big timing for street use.",
          ),
          SizedBox(height: 20),
          Text(
            "If you go big on the PP timing you will get big power at high RPM's but it will be harder to tune low RPM jetting with all the extra blowback.",
          ),
        ],
      ),
    );
  }
}
