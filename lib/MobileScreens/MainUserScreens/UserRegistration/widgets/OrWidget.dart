import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return               Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 1.0,
            width: 130,
            decoration: BoxDecoration(
              color: Color(0xff000000),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.0, right: 5.0),
          child: Text(
            "or",
            style: TextStyle(fontFamily: 'Comforta', fontSize: 18),
          ),
        ),
        Expanded(
          child: Container(
            height: 1.0,
            width: 130,
            decoration: BoxDecoration(
              color: Color(0xff000000),
            ),
          ),
        ),
      ],
    );

  }
}
