import 'package:firstapp/widgets/customActionBar.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Center(
            child: Text('Home Tab'),
          ),
        ),
        CustomActionBar(
          title: "Home",
          hasTitle: true,
          hasBackArrow: false,
        ),
      ],
    );
  }
}
