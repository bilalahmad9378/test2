import 'package:flutter/material.dart';

void main() {
  runApp(signin());
}

class signin extends StatelessWidget {
  final formkey = GlobalKey<FormState>;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //  throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome'),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 450, top: 30),
                child: Text(
                  'Form',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    autofillHints: [AutofillHints.givenName],
                    maxLength: 20,
                    keyboardType: TextInputType.text,
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(
                    //       RegExp('[a-zA-Z]')),
                    // ],
                    //  controller: name,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.blue,
                          ),
                        ),
                        hoverColor: Colors.red,
                        hintText: 'Enter your Name',
                        labelText: 'Name ',
                        suffixIcon: Icon(Icons.person),
                        iconColor: Colors.red),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('Enter your name');
                      } else {
                        return null;
                      }
                    },
                  ),
                ],
              ))
            ],
          )),
    );
  }
}
