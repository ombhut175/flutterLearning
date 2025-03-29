import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          // Top Banner with Arrows
          Container(
            height: 120,
            color: Colors.grey[400],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back, size: 30),
                ),
                Expanded(
                  child: Container(), // Empty space in the center
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward, size: 30),
                ),
              ],
            ),
          ),

          // "Our Services" Section
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey[500],
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: const Text("Our Services", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back, size: 30),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 80,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                const CircleAvatar(radius: 20, backgroundColor: Colors.white),
                                const SizedBox(height: 5),
                                Container(width: 30, height: 5, color: Colors.black),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // "Our Team" Section
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.grey[500],
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: const Text("Our Team", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back, size: 30),
                    ),
                    Expanded(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 20,
                        runSpacing: 20,
                        children: List.generate(4, (index) {
                          return Column(
                            children: [
                              const CircleAvatar(radius: 25, backgroundColor: Colors.white),
                              const SizedBox(height: 5),
                              Container(width: 40, height: 5, color: Colors.black),
                            ],
                          );
                        }),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward, size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
