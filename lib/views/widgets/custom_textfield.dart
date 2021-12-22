import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.title,
    required this.keyboardType,
    required this.controller,
    //required this.validate,
    Key? key,
  }) : super(key: key);
  final String title;
  final TextInputType keyboardType;
  final TextEditingController controller;
  // final Function validate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 18,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextFormField(
              controller: controller,
              // validator: validate ??
              //     (value) => value == null || value.isEmpty ? 'Required' : null,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: title,
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
