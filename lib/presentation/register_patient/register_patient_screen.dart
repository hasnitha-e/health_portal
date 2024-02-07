import 'package:flutter/material.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/presentation/register_patient/widgets/add_treatments_button.dart';
import 'package:health_portal/presentation/register_patient/widgets/drop_down_list_widget.dart';
import 'package:health_portal/presentation/register_patient/widgets/save_button.dart';
import 'package:health_portal/presentation/register_patient/widgets/selected_payment_option.dart';
import 'package:health_portal/presentation/register_patient/widgets/date_time_picker.dart';
import 'package:health_portal/presentation/register_patient/widgets/text_form_field_widget.dart';
import 'package:health_portal/presentation/register_patient/widgets/treatment_list_container_widget.dart';
import 'package:health_portal/presentation/treatment/treatment_screen.dart';

class RegisterPatientScreen extends StatelessWidget {
  RegisterPatientScreen({Key? key}) : super(key: key);

  final List<String> locations = ['Calicut', 'Kannur', 'Vatakara'];
  final TextEditingController locationController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar( actions: [
          Padding(
              padding: EdgeInsets.all(6),
              child: Badge(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.notifications_outlined,
                  )))
        ],),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Register',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormFieldWidget(
                      label: 'Name', hintText: 'Enter your full name'),
                  kmaxhieght,
                  TextFormFieldWidget(
                      label: 'Whatsapp Number',
                      hintText: 'Enter Your Whatsapp Number'),
                  kmaxhieght,
                  TextFormFieldWidget(
                      label: 'Address', hintText: 'Enter your full address'),
                  kmaxhieght,
                  Text(
                    'Location',
                    style: TextStyle(color: Colors.black),
                  ),
                  kmaxhieght,
                  DropdownFormFieldWidget(
                    items: locations,
                    hintText: 'Choose your Location',
                    onChanged: (String? value) {},
                  ),
                  kmaxhieght,
                  Text(
                    'Select Branch',
                    style: TextStyle(color: Colors.black),
                  ),
                  DropdownFormFieldWidget(
                    items: locations,
                    hintText: 'Select Branch',
                    onChanged: (String? value) {},
                  ),
                  SizedBox(height: 16),
                  Text('Treatments', style: TextStyle(color: Colors.black)),
                  SizedBox(height: 16),
                  TreatmentContainerWidget(),
                  kmaxhieght,
                  AddTreatmentsButton(),
                  kmaxhieght,
                  TextFormFieldWidget(label: 'Total Amount', hintText: ''),
                  kmaxhieght,
                  TextFormFieldWidget(label: 'Discount Amount', hintText: ''),
                  kmaxhieght,
                  PaymentSelector(),
                  kmaxhieght,
                  TextFormFieldWidget(label: 'Advance Amount', hintText: ''),
                  kmaxhieght,
                  TextFormFieldWidget(label: 'Balance Amount', hintText: ''),
                  kmaxhieght,
                  DateTimePickerField(),
                  kmaxhieght,
                  SaveButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
