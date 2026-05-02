import 'package:flutter/material.dart';

class InputTextfield
    extends StatelessWidget {
  String text2;
  TextEditingController inputTextController;
  InputTextfield({
    super.key,
    required this.text2,
    required this.inputTextController
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputTextController,
      keyboardType:
          TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: text2,
        hintStyle: TextStyle(
          color: const Color.fromARGB(
            255,
            0,
            0,
            0,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(
              255,
              255,
              17,
              0,

            ),
          ),
        ),
      ),
    );
  }
}
