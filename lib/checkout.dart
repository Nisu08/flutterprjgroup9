import 'package:flutter/material.dart';
import 'success.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Checkout'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
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
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  if (!RegExp(r'^[\w.-]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
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
              SizedBox(height: 20.0),
              Text(
                'Address Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
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
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
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
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
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
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
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
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Postal Code',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Postal Code';
                  }
                  if (!RegExp(r'^[A-Za-z]\d[A-Za-z] ?\d[A-Za-z]\d$').hasMatch(value)) {
                    return 'Please enter a valid Postal Code (e.g., N2N 2N2)';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Payment Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
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
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
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
              SizedBox(height: 20.0),
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
                  child: Text('Confirm Purchase'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
