import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String? selectedValue;
  final void Function(String?)? onChanged;
  final double width; // Added width property
  final Color borderColor; // Added borderColor property
  final double gapWidth; // Added gapWidth property


  CustomDropdown({
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    this.width = 200.0, // Default width
    this.borderColor = Colors.grey, // Default borderColor
    this.gapWidth = 16.0, // Default gapWidth
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: widget.width, // Set the width
      height: 50.0, // Set the height
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(15.0), // Set border radius
        //border: Border.all(color: widget.borderColor), // Add a border with custom color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Add spacing between items
        children: [
          Expanded(
            child: DropdownButton<String?>(
              value: _selectedValue,
              onChanged: (newValue) {
                setState(() {
                  _selectedValue = newValue; // Update _selectedValue
                });
                widget.onChanged?.call(newValue); // Call the provided onChanged callback
              },

              items: widget.items.map<DropdownMenuItem<String?>>((String value) {
                return DropdownMenuItem<String?>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0), // Add left padding for items
                    child: Text(value),
                  ),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down_outlined), // Add the dropdown icon
              iconSize: 24.0, // Adjust the icon size as needed
              underline: SizedBox(), // Remove the default underline
              isExpanded: true, // Allow the dropdown to expand to fit the width
            ),
          ),
        ],
      ),
    );
  }
}

