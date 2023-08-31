import 'package:flutter/material.dart';

class BarItemPage extends StatelessWidget {
  const BarItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Text(
        "Bar Item Page",
        style: TextStyle(fontSize: 45.0),
      ),
    );
  }
}
