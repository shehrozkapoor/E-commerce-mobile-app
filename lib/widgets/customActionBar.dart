import 'package:firstapp/constant.dart';
import 'package:flutter/material.dart';

class CustomActionBar extends StatelessWidget {
  final bool hasBackArrow;
  final bool hasTitle;
  final String title;
  CustomActionBar({this.hasBackArrow, this.hasTitle, this.title});
  @override
  Widget build(BuildContext context) {
    bool _hasBackArrow = hasBackArrow ?? false;
    bool _hasTitle = hasTitle ?? false;
    return Container(
      padding: EdgeInsets.only(
        top: 82.0,
        right: 24.0,
        left: 24.0,
        bottom: 24.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (_hasBackArrow)
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image(
                image: AssetImage("assets/images/back_arrow.png"),
                height: 16.0,
                width: 16.0,
              ),
            ),
          if (_hasTitle)
            Text(
              title ?? 'Action Bar',
              style: Constant.boldRegularHeadings,
            ),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Text(
                '0',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
