import 'package:flutter/material.dart';

class TextField_with_Button extends StatefulWidget {
  final TextEditingController tc;

  const TextField_with_Button({
    Key? key,
    required this.tc,
  }) : super(key: key);

  @override
  State<TextField_with_Button> createState() => _TextField_with_ButtonState();
}

class _TextField_with_ButtonState extends State<TextField_with_Button> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: 40,
            width: 200,
            child: TextField(
              onChanged: (value) {
                setState(() {});
              },
              controller: widget.tc,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
            )),
        ElevatedButton(
            onPressed: () {
              setState(() {
                flag = !flag;
              });
            },
            child: flag ? Text('Yearly') : Text('Monthly'))
      ],
    );
  }
}
