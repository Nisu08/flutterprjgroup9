import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterprjgroup9/product_details.dart';
import 'package:flutterprjgroup9/checkout.dart';
import 'book.dart';

class Products extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Book> booksList = [];
    Book book1 = Book(1,'The Power of Positive Thinking','Dr. Norman Vincent Peale','The Power of Positive Thinking has helped men and women around the world to achieve fulfillment in their lives.', 25.00, 'book1.jpg');
    Book book2 = Book(2,'Think And Grow Rich','Napoleon Hill','The bestselling success book of all time—now revised and updated for the 21st century.', 15.00, 'book2.jpg');
    Book book3 = Book(2,'Think And Grow Rich','Napoleon Hill','The bestselling success book of all time—now revised and updated for the 21st century.', 15.00, 'book2.jpg');
    booksList.addAll({book1, book2, book3});
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Literary Lounge'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/cover.jpg'), // Change the path to your background image
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: booksList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetail(book: booksList[index]),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: booksList[index].image,
                      child: Container(
                        width: 125,
                        height: 200,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage("images/" + booksList[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7), // Adjust the value as needed
                            child: Text(
                              booksList[index].title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),


                          const SizedBox(height: 5),
                          Text(
                            'by: ${booksList[index].author}',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${booksList[index].description}',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              SizedBox(height: 5),
                              Expanded(
                                child: Text(
                                  '\$${booksList[index].price}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Checkout()),
                                    );
                                  },
                                  child: const Text('Buy Now'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}