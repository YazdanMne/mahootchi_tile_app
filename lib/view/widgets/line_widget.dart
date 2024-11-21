import 'package:flutter/material.dart';




class LineWidget extends StatelessWidget {
  final double width;
  final Color color;

  const LineWidget({super.key, this.width = 300, this.color=Colors.green});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 2,
      decoration:  ShapeDecoration(
        color: color,
        shape: const OvalBorder(),
      ),
    );
  }
}
