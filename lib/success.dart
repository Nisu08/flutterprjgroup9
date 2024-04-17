import 'package:flutter/material.dart';
import 'package:flutterprjgroup9/products.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase Successful'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Purchase successful!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Products()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: Text('Back to Products'),
            ),
          ],
        ),
      ),
    );
  }
}
