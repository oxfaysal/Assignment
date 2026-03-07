import 'package:flutter/material.dart';

import '../conts/textStyle.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.width,
    required this.height,
    this.radius = 12,
  });

  final VoidCallback onPressed;
  final String text;
  final Color color;
  final double width;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Color(0xFFffffff),
          elevation: 4,
          shadowColor: color.withOpacity(0.5),
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Text(text, style: AppTextStyle.textWhite18,),
      ),
    );
  }
}
