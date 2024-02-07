
import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';

class TreatmentContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 229, 227, 227)),
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Couple Combo Package',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Male', style: TextStyle(color: green, fontSize: 18)),
                Text('0', style: TextStyle(color: green, fontSize: 18)),
                Text('Female', style: TextStyle(color: green, fontSize: 18)),
                Text('0', style: TextStyle(color: green, fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
