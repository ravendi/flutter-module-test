import 'package:flutter/material.dart';
import 'package:flutter_package_test_1/flutter_package_test_1.dart';
import 'package:flutter_package_test_2/flutter_package_test_2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Module demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FirstPackageWidget(),
                  ),
                );
              },
              child: Container(
                width: 300,
                height: 60,
                color: Colors.lightBlueAccent,
                child: const Center(child: Text('FIRST PACKAGE SCREEN')),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SecondPackageWidget(),
                  ),
                );
              },
              child: Container(
                width: 300,
                height: 60,
                color: Colors.tealAccent,
                child: const Center(child: Text('SECOND PACKAGE SCREEN')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
