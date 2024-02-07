import 'package:flutter/material.dart';

class SortByDropdown extends StatelessWidget {
  const SortByDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sort By:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Container(
            height: 40,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(
                  color:
                      Colors.grey), 
                       borderRadius:
                  BorderRadius.circular(25.0),  ),
            
            child: Center(
              child: DropdownButton<String>(
                hint: Text('Date'),
                items: <String>['Date', 'Name'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
