import 'package:flutter/material.dart';
import 'package:health_portal/application/treatment/treatment.dart';
import 'package:provider/provider.dart';

class TreatmentScreen extends StatefulWidget {
  TreatmentScreen({Key? key}) : super(key: key);

  @override
  State<TreatmentScreen> createState() => _TreatmentScreenState();
}

class _TreatmentScreenState extends State<TreatmentScreen> {
  @override
  void initState() {
    Provider.of<TreatmentProvider>(context, listen: false).fetchTreatments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 229, 227, 227)),
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15,right: 10),
          child: Consumer<TreatmentProvider>(
            builder: (context, treatProvider, child) {
              return DropdownButtonFormField<String>(isExpanded: true,
                value: treatProvider.selectedTreatmentName,
                items: treatProvider.treatments
                    .map((treatment) => DropdownMenuItem<String>(
                          value: treatment.name!,
                          child: Text(treatment.name!),
                        ))
                    .toList(),
                onChanged: (String? value) {
                  treatProvider.setSelectedTreatmentName(value);
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Choose Treatment',
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
