import 'package:flutter/material.dart';

void main() => runApp(const LayoutWidgetsDemo());

class LayoutWidgetsDemo extends StatelessWidget {
  const LayoutWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Widgets Demo',
      debugShowCheckedModeBanner: false,
      home: const LayoutWidgetsHomePage(),
    );
  }
}

class LayoutWidgetsHomePage extends StatefulWidget {
  const LayoutWidgetsHomePage({super.key});

  @override
  State<LayoutWidgetsHomePage> createState() => _LayoutWidgetsHomePageState();
}

class _LayoutWidgetsHomePageState extends State<LayoutWidgetsHomePage> {
  bool isVisible = true; // Visibility toggle
  double opacityValue = 1.0; // Opacity slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Widgets Demo'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Section: Positioned Widget
            const Text(
              '1. Positioned Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.red,
                      child: const Text('Positioned Box'),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Section: Align Widget
            const Text(
              '2. Align Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Container(
              height: 100,
              color: Colors.yellow.shade100,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Aligned Bottom Right'),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Section: Spacer Widget
            const Text(
              '3. Spacer Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(8),
                  child: const Text('Start'),
                ),
                const Spacer(),
                Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.all(8),
                  child: const Text('End'),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Section: Visibility Widget
            const Text(
              '4. Visibility Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Visibility(
              visible: isVisible,
              child: Container(
                padding: const EdgeInsets.all(12),
                color: Colors.purple,
                child: const Text(
                  'Now you see me!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Text(isVisible ? 'Hide Widget' : 'Show Widget'),
            ),

            const SizedBox(height: 20),

            // Section: Opacity Widget
            const Text(
              '5. Opacity Widget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Opacity(
              opacity: opacityValue,
              child: Container(
                padding: const EdgeInsets.all(12),
                color: Colors.teal,
                child: const Text(
                  'Adjust my opacity!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Slider(
              value: opacityValue,
              min: 0.0,
              max: 1.0,
              divisions: 10,
              label: opacityValue.toStringAsFixed(1),
              onChanged: (value) {
                setState(() {
                  opacityValue = value;
                });
              },
            ),
            Text('Opacity: ${opacityValue.toStringAsFixed(1)}'),
          ],
        ),
      ),
    );
  }
}
