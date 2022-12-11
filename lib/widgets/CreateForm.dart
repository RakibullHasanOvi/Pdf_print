import 'package:flutter/material.dart';

class CreateForm extends StatelessWidget {
  final String name;
  final controller;
  final IconData icons;
  CreateForm({
    Key? key,
    required this.name,
    required this.icons,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        left: 20,
        right: 20,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: name,
          prefixIcon: Icon(icons),
        ),
      ),
    );
  }
}
