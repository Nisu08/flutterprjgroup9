import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprjgroup9/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Literary Lounge'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
          decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/cover.jpg'), fit: BoxFit.cover ),
          ),
        child: Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10), // Adjust the value as needed
              child: Text(
                'Welcome to Literary Lounge',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              width: 200, // Desired width
              height: 200, // Desired height
              padding: const EdgeInsets.all(10),
              child: const Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
         const SizedBox(height: 20),
             CupertinoButton.filled(
              onPressed: () {
               Navigator.push(
                   context,
                 MaterialPageRoute(builder: (context) => Products()),
                 );
             },
             child: const Text('Go to Products'),
           ),
          ],
      ),
      ),
    ),
    );
  }
}