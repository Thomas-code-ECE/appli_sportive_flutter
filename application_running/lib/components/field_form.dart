import 'package:flutter/material.dart';

FocusNode myFocusNode = new FocusNode();

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    this.hintText,
    this.icon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: TextFormField(
          onChanged: onChanged,
          cursorColor: const Color(0xFFF5F0E1),
          style: TextStyle(color: const Color(0xFFF5F0E1)),
          decoration: InputDecoration(
            icon: icon,
            labelText: hintText,
            labelStyle: TextStyle(
                color: myFocusNode.hasFocus
                    ? const Color(0xFFF5F0E1)
                    : const Color(0xFFF5F0E1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(const Radius.circular(40)),
                borderSide: BorderSide(color: const Color(0xFFF5F0E1))),
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(const Radius.circular(40)),
              borderSide: new BorderSide(color: const Color(0xFFF5F0E1)),
            ),
          ),
        ));
  }
}
