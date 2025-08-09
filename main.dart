import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ColumnRowLayout(),
    );
  }
}

class ColumnRowLayout extends StatelessWidget {
  const ColumnRowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Column and Row Layout",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Row with three colored boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox(Colors.red, "1"),
                buildBox(Colors.green, "2"),
                buildBox(Colors.blue, "3"),
              ],
            ),
            const SizedBox(height: 40),

            // Large orange container
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.orange,
              child: const Text(
                "Large Container",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Row with Left and Right buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox(Colors.purple, "Left"),
                buildBox(Colors.teal, "Right"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  
  Widget buildBox(Color color, String text) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: color,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
