import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DivideScreen extends StatelessWidget {
  const DivideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          getColumn(
            color: Colors.red,
            children: [
              getRow(color: Colors.green),
              getRow(color: Colors.brown),
              // getRow(color: Colors.amberAccent)
            ],
          ),
          getColumn(color: Colors.blue, children: [
            getRow(color: Colors.cyanAccent),
            getRow(color: Colors.deepPurple)
          ]),
          getColumn(color: Colors.yellow),
        ],
      ),
    );
  }

  Widget getColumn({required Color color, List<Widget>? children}) {
    return Expanded(
        child: Column(
      children: [
        Expanded(
          child: Container(
            color: color,
          ),
        ),
        if (children != null) ...children,
      ],
    ));
  }

  Widget getRow({required Color color, List<Widget>? children}) {
    return Expanded(
        child: Row(
      children: [
        Expanded(
          child: Container(
            color: color,
          ),
        ),
        if (children != null) ...children,
      ],
    ));
  }
}
