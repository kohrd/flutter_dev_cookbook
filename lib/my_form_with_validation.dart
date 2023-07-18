




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFormWithValidation extends StatefulWidget {
  const MyFormWithValidation({super.key});

  @override
  MyFormWithValidationState createState() {
    return MyFormWithValidationState();
  }
}

class MyFormWithValidationState extends State<MyFormWithValidation> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
              validator: (value) {
                if (value == null || value.length == 0 || value.contains("a")){
                  return 'fucking error';
                }
                return null;
              }
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}