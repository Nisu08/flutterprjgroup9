import 'package:flutter/material.dart';
import 'success.dart';

class Checkout extends StatefulWidget {
  final double totalAmount;

  const Checkout({super.key, required this.totalAmount});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: const Text('Checkout'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Total Amount: \$${widget.totalAmount.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
              const Text(
                'User Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                    return 'Please enter alphabetic characters only';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  if (!RegExp(r'^[\w.-]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your mobile number';
                  }
                  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return 'Please enter a valid mobile number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Address Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Address Line 1',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Address Line 1';
                  }
                  if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
                    return 'Please enter alphanumeric characters only';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Address Line 2',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Address Line 2';
                  }
                  if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
                    return 'Please enter alphanumeric characters only';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'City',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please a valid City';
                  }
                  if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                    return 'Please enter City name ONLY';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Province',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Province';
                  }
                  if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                    return 'Please enter Province only';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Postal Code',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Postal Code';
                  }
                  if (!RegExp(r'^[A-Za-z]\d[A-Za-z] ?\d[A-Za-z]\d$')
                      .hasMatch(value)) {
                    return 'Please enter a valid Postal Code (e.g., N2N 2N2)';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Payment Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Card Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your card number';
                  }
                  if (!RegExp(r'^\d{16}$').hasMatch(value)) {
                    return 'Please enter a valid 16-digit card number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'CVV',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your CVV';
                  }
                  if (!RegExp(r'^\d{3,4}$').hasMatch(value)) {
                    return 'Please enter a valid 3 or 4-digit CVV';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Success()),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.teal),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Confirm Purchase'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
