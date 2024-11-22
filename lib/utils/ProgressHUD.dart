import 'package:flutter/material.dart';

class ProgressHUD extends StatelessWidget {
  final Widget child;
  final bool inAsyncCall;
  final double opacity;
  final Color color;
  final Animation<Color> valueColor;

  ProgressHUD({
     Key? key,
    required this.child,
    required this.inAsyncCall,
    this.opacity = 0.3,
    this.color = Colors.grey,
     this.valueColor = const AlwaysStoppedAnimation<Color>(Colors.blue),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of widgets to display
    List<Widget> widgetList = [child];

    if (inAsyncCall) {
      // Stack with modal and progress indicator
      widgetList.add(
        Stack(
          children: [
            Opacity(
              opacity: opacity,
              child: ModalBarrier(dismissible: false, color: color),
            ),
            Center(
              child: CircularProgressIndicator(
                valueColor: valueColor,  // Setting the valueColor to the indicator
              ),
            ),
          ],
        ),
      );
    }

    // Return stack of widgets
    return Stack(
      children: widgetList,
    );
  }
}
