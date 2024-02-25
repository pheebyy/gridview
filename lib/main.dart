import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gridview'),
      ),
      body: const MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Container
          Container(
            height: 100.0,
            color: const Color.fromARGB(255, 168, 17, 243),
            child: const Center(
              child: Text(
                'Container',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),

          // GridView
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  color: const Color.fromARGB(255, 101, 13, 201),
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16.0),

          // TextButton
          TextButton(
            onPressed: () {
              // Add your logic here
              // ignore: avoid_print
              print('TextButton pressed');
            },
            child: Container(
              height: 50.0,
              color: const Color.fromARGB(255, 253, 201, 208),
              child: const Center(
                child: Text(
                  'TextButton',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
