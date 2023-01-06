import 'package:flutter/material.dart';

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('To Another Screen 2'),
            ElevatedButton(
              child: const Text('Go'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/anotherScreen2');
              },
            ),
          ],
        ),
      ),
    );
  }
}