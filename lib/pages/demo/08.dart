import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AspectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 1 / 0.618,
        child: Container(
          color: Colors.red[300],
        ),
      ),
    );
  }
}
