
import 'package:flutter/material.dart';

class DropdownFormFieldWidget extends StatelessWidget {
  final List<String> items;
  final String hintText;
  final ValueChanged<String?>? onChanged;

  const DropdownFormFieldWidget({
    required this.items,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 229, 227, 227)),
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: DropdownButtonFormField<String>(
          items: items.map((String location) {
            return DropdownMenuItem<String>(
              value: location,
              child: Text(location),
            );
          }).toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
