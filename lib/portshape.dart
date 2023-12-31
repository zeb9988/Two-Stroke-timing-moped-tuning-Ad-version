import 'package:flutter/material.dart';

class PostShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exhaust Port Shape and Size:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
              'For single EX-port kits, you want the top of your EX-port to be flat in the center of the top of the port. This flat area should not exceed either 50% of the combined width of the transfer ports or exceed 55% of the EX-port width. This will be close to 1/3rd=33% of the bore if you have good wide porting.\n\n'
              'You do not want to exceed a width of 70% of the bore for a single port in order to protect the piston rings. Talking about the piston ring, you will need to make sure the piston ring gap will not end up in a port opening, as it will destroy the ring.\n\n'
              'For the split/twin and three-port exhaust, you can have the flat area of the top of the EX-ports that is two times wider in the flat zone. So now it\'s close to 66%=2/3rds of the bore instead of one 1/3rd with the single-port exhaust that\'s 100% more area. With 100% more flow area, we need less blowdown timing to match the wider area cross section.'),
          SizedBox(height: 20),
          Text(
            'Blowdown:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
              'Blowdown is the duration during which the exhaust is open until the transfers open. It can be useful to measure this both in degrees and in % (blowdown ° / transfer opening °).'),
        ],
      ),
    );
  }
}
