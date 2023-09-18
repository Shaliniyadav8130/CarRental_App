import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  final String button1Text;
  final String button2Text;

  ToggleButton({required this.button1Text, required this.button2Text});

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  String? selectedButtonText;

  @override
  void initState() {
    super.initState();
    selectedButtonText = widget.button1Text; // Initialize with the first button text
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: selectedButtonText == widget.button1Text
              ? null
              : () {
            setState(() {
              selectedButtonText = widget.button1Text;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: selectedButtonText == widget.button1Text
                ? Colors.red
                : Colors.grey, // Set button color based on selection
          ),
          child: Text(
            widget.button1Text,
            style: TextStyle(
              color: selectedButtonText == widget.button1Text
                  ? Colors.white // Text color is red for the selected button
                  : Colors.black, // Text color is black for other button
            ),
          ),
        ),
        SizedBox(width: 16.0),
        ElevatedButton(
          onPressed: selectedButtonText == widget.button2Text
              ? null
              : () {
            setState(() {
              selectedButtonText = widget.button2Text;
            });
          },
          style: ElevatedButton.styleFrom(
            primary: selectedButtonText == widget.button2Text
                ? Color(0xffEF3D49)
                : Colors.grey, // Set button color based on selection
          ),
          child: Text(
            widget.button2Text,
            style: TextStyle(
              color: selectedButtonText == widget.button2Text
                  ? Colors.white // Text color is red for the selected button
                  : Colors.black, // Text color is black for other button
            ),
          ),
        ),
      ],
    );
  }
}
