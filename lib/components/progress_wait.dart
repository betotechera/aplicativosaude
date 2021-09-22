import 'package:flutter/material.dart';

class ProgressWait extends StatelessWidget {
  final String mensage;
  /// => Display transaction in progress message
  ProgressWait({required this.mensage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              mensage,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
