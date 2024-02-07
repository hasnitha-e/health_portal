import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/presentation/patient/widgets/booking_datails_navigation.dart';

class UserDetailsCard extends StatelessWidget {
  final int index;
  final String name;
  final String mail;
  final String date;

  const UserDetailsCard({
    required this.index,
    required this.name,
    required this.mail,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$index. ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      khieght,
                      Text(
                        mail,
                        style: TextStyle(color: green),
                      ),
                      khieght,
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                size: 15,
                                color: Colors.red,
                              ),
                              Text(
                                date,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          kwidth,
                          const Row(
                            children: [
                              Icon(
                                Icons.group,
                                color: Colors.red,
                                size: 15,
                              ),
                              Text(
                                'Jithesh',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            BookingDetailsNavigation()
          ],
        ),
      ),
    );
  }
}
