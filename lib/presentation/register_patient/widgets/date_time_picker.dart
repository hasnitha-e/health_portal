import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/core/constants.dart';

class DateTimePickerField extends StatefulWidget {
  @override
  _DateTimePickerFieldState createState() => _DateTimePickerFieldState();
}

class _DateTimePickerFieldState extends State<DateTimePickerField> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _hoursController = TextEditingController();
  TextEditingController _minutesController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().substring(0, 10);
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _hoursController.text = picked.hour.toString();
        _minutesController.text = picked.minute.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
      children: [ Text(
                'Treatment Date',
                style: TextStyle(color: black),
              ),
        Row(
          children: [
            Expanded(
              child: Container( decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 229, 227, 227)),
                    color: Colors.grey[200],
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                child: TextFormField(
                  controller: _dateController,
                  decoration: InputDecoration(suffixIcon:IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () => _selectDate(context),
            ) ,
                    border: InputBorder.none,
                   
                  ),
                ),
              ),),
            ),
            
          ],
        ),khieght, Text(
                'Treatment Time',
                style: TextStyle(color: black),
              ),khieght,
        Row(
          children: [
            Expanded(
              child: Container( decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 229, 227, 227)),
                    color: Colors.grey[200],
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                child: TextFormField(
                  controller: _hoursController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Hours',
                  ),
                ),)
              ),
            ),kwidth,
            Expanded(
              child: Container( decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 229, 227, 227)),
                    color: Colors.grey[200],
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                child: TextFormField(
                  controller: _minutesController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Minutes',
                  ),
                ),
              ),)
            ),
            IconButton(
              icon: Icon(Icons.access_time),
              onPressed: () => _selectTime(context),
            ),
          ],
        ),
   khieght   ],
    );
  }
}

