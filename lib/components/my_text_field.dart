import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  // @override
  final controller;

  final String hintText;

  final bool obscureText;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        obscureText: widget.obscureText,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(10)),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }
}
