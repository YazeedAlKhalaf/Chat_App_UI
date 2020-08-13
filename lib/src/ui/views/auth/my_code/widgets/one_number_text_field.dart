import 'package:flutter/material.dart';

class OneNumberTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        5,
      ),
      child: Container(
        width: 50,
        child: TextFormField(
          maxLength: 1,
          buildCounter: (
            BuildContext context, {
            int currentLength,
            bool isFocused,
            int maxLength,
          }) {
            return Container();
          },
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffF1F2F6),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
