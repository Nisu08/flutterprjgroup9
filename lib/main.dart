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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Center(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Welcome to Literary Lounge',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
            child: const Image(
              width: 200,
              height: 200,
              image: AssetImage('images/logo.png'),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child : ElevatedButton(
              //padding : const EdgeInsets.all(10),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                _controller.forward();
                Future.delayed(const Duration(milliseconds: 100), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Products()),
                  );
                });
              },

              child: const Text('Go to Products'),
            ),
          )
        ],
            ),
            ),
    );
  }
}