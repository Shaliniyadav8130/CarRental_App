import 'package:flutter/material.dart';

class ProfileAvatarWithPencilIcon extends StatelessWidget {
  final String assetPath;
  final double size;
  final double borderWidth;

  ProfileAvatarWithPencilIcon({
    required this.assetPath,
    required this.size,
    required this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xffEF3D49),
              width: borderWidth,
            ),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(assetPath),
            radius: size / 2,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height:30,width:30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEF3D49),
            ),
            child: Icon(
              Icons.mode_edit_outlined,
              color: Colors.white,
              size: size * 0.18,
            ),
          ),
        ),
      ],
    );
  }
}
