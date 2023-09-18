import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final double? width;
  final double height;
  final String text;
  final int index;
  final int selectedIndex;
  final VoidCallback onPressed;

  FilterButton({
    required this.width,
    required this.height,
    required this.text,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = index == selectedIndex;

    // Define the default text style based on the button's enabled/disabled state
    TextStyle defaultTextStyle = TextStyle(
      color: isSelected ? Colors.white : Colors.black,
    );

    return ElevatedButton(
      onPressed: () {
        onPressed(); // Trigger the onPressed callback
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          isSelected ? Color(0xffEF3D49) : Color(0x22EF3D49),
        ),
        elevation: MaterialStateProperty.all(0.0),
      ),
      child: DefaultTextStyle(
        style: defaultTextStyle,
        child: Text(text),
      ),
    );
  }
}


