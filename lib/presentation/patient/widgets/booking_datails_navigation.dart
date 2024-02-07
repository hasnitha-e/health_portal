import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';

class BookingDetailsNavigation extends StatelessWidget {
  const BookingDetailsNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'View Booking details',
              style: TextStyle(color: black),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16.0,
            color: green,
          ),
        ],
      ),
    );
  }
}
