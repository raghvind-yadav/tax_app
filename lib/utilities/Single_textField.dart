import 'package:flutter/material.dart';
import './TextField_with_Button.dart';

class SingleTextField extends StatefulWidget {
  final TextEditingController tc;

  const SingleTextField({Key? key, required this.tc}) : super(key: key);

  @override
  State<SingleTextField> createState() => _SingleTextFieldState();
}

class _SingleTextFieldState extends State<SingleTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Container(
        color: const Color.fromARGB(255, 226, 225, 225),
        height: 65,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField_with_Button(
                tc: widget.tc,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
