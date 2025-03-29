import 'package:flutter/material.dart';

class NormalDivideScreen extends StatelessWidget {
  const NormalDivideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App bar"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                        child: Row(
                      children: [buildBox()],
                    )),
                    Expanded(
                        child: Row(
                      children: [buildBox()],
                    )),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        buildBox(flex: 2),
                      ],
                    )),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Expanded(
                        child: Row(
                      children: [buildBox()],
                    )),
                    Expanded(
                        child: Row(
                      children: [buildBox()],
                    )),
                  ],
                )),
              ],
            )),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                          children: [
                            Expanded(
                                child: Row(
                                  children: [buildBox()],
                                )),
                            Expanded(
                                child: Row(
                                  children: [buildBox()],
                                )),
                          ],
                        )),
                    Expanded(
                        child: Column(
                          children: [
                            Expanded(
                                child: Row(
                                  children: [buildBox()],
                                )),
                            Expanded(
                                child: Row(
                                  children: [buildBox()],
                                )),
                          ],
                        )),
                    Expanded(
                        child: Column(
                          children: [
                            Expanded(
                                child: Row(
                                  children: [
                                    buildBox(flex: 2),
                                  ],
                                )),
                          ],
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget buildBox({int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
      ),
    );
  }
}
