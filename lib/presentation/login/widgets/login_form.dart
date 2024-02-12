import 'package:flutter/material.dart';
import 'package:health_portal/application/login/login.dart';
import 'package:health_portal/core/colors.dart';
import 'package:health_portal/core/constants.dart';
import 'package:health_portal/presentation/patient/patient_screen.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider =
                    Provider.of<AuthProvider>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        key: _formKey,
        children: <Widget>[
          Text(
            'Email',
            style: TextStyle(color: black),
          ),
          khieght,
          Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 229, 227, 227)),
                color: Colors.grey[200],
                borderRadius: new BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your email',
                    ),
                    controller: emailController),
              )),
          SizedBox(
            height: 30,
          ),
          Text('Password', style: TextStyle(color: black)),
          khieght,
          Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 229, 227, 227)),
                color: Colors.grey[200],
                borderRadius: new BorderRadius.circular(8.0),
              ),
              child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter  password',
                    ),
                    controller: passwordController,
                  ))),
          SizedBox(
            height: size.height * .1,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: grey),
                borderRadius: BorderRadius.circular(8)),
            height: 50,
            width: size.width,
            child:authProvider.isLoading?Center(child: CircularProgressIndicator(),): MaterialButton(
              color: green,
              onPressed: () async {
                
                if (emailController.text == "test_user" &&
                    passwordController.text == '12345678') {
                  authProvider.login(
                      emailController.text, passwordController.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PatientScreen()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(backgroundColor: red,
                      content: Text('Enter valid credentials'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
