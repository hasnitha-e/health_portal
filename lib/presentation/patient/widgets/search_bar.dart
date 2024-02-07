import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/core/constants.dart';

class SearchBarDesign extends StatelessWidget {
  const SearchBarDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 229, 227, 227)),
              color: Colors.grey[200],
              borderRadius: new BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search for treatments',
                ),
              ),
            ),
          )),
          kwidth,
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: MaterialButton(
              height: 50,
              color: green,
              onPressed: () async {},
              child: Text(
                'Search',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
