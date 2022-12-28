import 'package:flutter/material.dart';

class TopIconContainer extends StatelessWidget {
  final IconData icon;
  final Color bColor;
  final Color color;
  const TopIconContainer({
    required this.bColor,
    required this.color,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: bColor,
        ),
      ),
      child: Center(
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
