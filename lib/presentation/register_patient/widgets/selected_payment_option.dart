import 'package:flutter/material.dart';
import 'package:health_portal/core/constants.dart';

class PaymentSelector extends StatefulWidget {
  @override
  _PaymentSelectorState createState() => _PaymentSelectorState();
}

class _PaymentSelectorState extends State<PaymentSelector> {
  String? _selectedPaymentOption;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text('Payment Option'),khieght,
        Row(
          children: [
            Radio<String>(
              value: 'Cash',
              groupValue: _selectedPaymentOption,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentOption = value;
                });
              },
            ),
            Text('Cash'),
            kwidth,
            Radio<String>(
              value: 'Card',
              groupValue: _selectedPaymentOption,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentOption = value;
                });
              },
            ),kwidth,
            Text('Card'),
            Radio<String>(
              value: 'UPI',
              groupValue: _selectedPaymentOption,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentOption = value;
                });
              },
            ),
            Text('UPI'),kwidth
          ],
        ),
      ],
    );
  }
}
