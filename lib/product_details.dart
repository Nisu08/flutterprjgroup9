import 'package:flutter/material.dart';
import 'package:flutterprjgroup9/checkout.dart';
import 'book.dart';

class ProductDetail extends StatefulWidget {
  final Book book;

  const ProductDetail({super.key, required this.book});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      if (quantity < 10) quantity++;
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  double calTotal() {
    return quantity * widget.book.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Center(
              child: Hero(
                tag: widget.book.image,
                child: Image.asset(
                  "images/${widget.book.image}",
                  width: 200,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.book.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              '\$${widget.book.price}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              'Author: ${widget.book.author}',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.book.description,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Quantity: ",
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                icon: const Icon(
                  Icons.remove_circle,
                  color: Colors.teal,
                ),
                onPressed: decrementQuantity,
              ),
              Text(
                quantity.toString(),
                style: const TextStyle(fontSize: 18),
              ),
              IconButton(
                icon: const Icon(
                  Icons.add_circle,
                  color: Colors.teal,
                ),
                onPressed: incrementQuantity,
                color: Colors.teal,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Center(
            child: Text(
              'Total: \$${calTotal().toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Checkout(totalAmount: calTotal()),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.teal),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Buy Now'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
