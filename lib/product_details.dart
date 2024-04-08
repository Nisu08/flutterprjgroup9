import 'package:flutter/material.dart';

import 'book.dart';


class ProductDetail extends StatelessWidget {
  final Book book;
  const ProductDetail({Key? key, required this.book}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Center(
        child: Text('Product Detail'),
      ),
    );
  }
}
