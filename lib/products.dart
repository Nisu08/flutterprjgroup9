import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterprjgroup9/product_details.dart';
import 'package:flutterprjgroup9/checkout.dart';
import 'book.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.teal;

    List<Book> booksList = [];
    Book book1 = Book(
        1,
        'The Power of Positive Thinking',
        'Dr. Norman Peale',
        'An international bestseller with over five million copies in print, The Power of Positive Thinking has helped men and women around the world to achieve fulfillment in their lives through Dr. Norman Vincent Peale’s powerful message of faith and inspiration. \n In this phenomenal bestseller, written with the sole objective of helping the reader achieve a happy, satisfying, and worthwhile life, Dr. Peale demonstrates the power of faith in action. With the practical techniques outlined in this book, you can energize your life—and give yourself the initiative needed to carry out your ambitions and hopes.',
        25.00,
        'book1.jpg');
    Book book2 = Book(
        2,
        'Think And Grow Rich',
        'Napoleon Hill',
        'Think and Grow Rich has been called the “Granddaddy of All Motivational Literature.” It was the first book to boldly ask, “What makes a winner?” The man who asked and listened for the answer, Napoleon Hill, is now counted in the top ranks of the world\'s winners himself. The most famous of all teachers of success spent “a fortune and the better part of a lifetime of effort” to produce the “Law of Success” philosophy that forms the basis of his books and that is so powerfully summarized in this one. \n In the original Think and Grow Rich, published in 1937, Hill draws on stories of Andrew Carnegie, Thomas Edison, Henry Ford, and other millionaires of his generation to illustrate his principles.',
        15.00,
        'book2.jpg');
    Book book3 = Book(
        3,
        'Master Your Emotions',
        'Thibaut Meurisse',
        'Do you have a bias toward the negative? \n Understanding how negative feelings and emotions work is the first step. Then we must learn how to reprogram those emotions and turn them around. A happier life is possible if you follow the steps. \n This program works.',
        21.99,
        'book3.jpg');
    Book book4 = Book(
        4,
        'Lessons in Chemistry',
        'Thibaut Meurisse',
        'A delight for readers of Where\'d You Go, Bernadette, this blockbuster debut set in 1960s California features the singular voice of Elizabeth Zott, a scientist whose career takes a detour when she becomes the star of a beloved TV cooking show. \nChemist Elizabeth Zott is not your average woman. In fact, Elizabeth Zott would be the first to point out that there is no such thing as an average woman. But it\'s the early 1960s and her all-male team at Hastings Research Institute takes a very unscientific view of equality. Except one: Calvin Evans, the lonely, brilliant, Nobel Prize nominated grudge holder who falls in love with of all things her mind. True chemistry results.',
        17.46,
        'book4.jpg');
    Book book5 = Book(
        5,
        'Meet Me at the Lake',
        'Carley Fortune',
        'In this breathtaking new novel from the #1 bestselling author of Every Summer After, a random connection sends two strangers on a daylong adventure where they make a promise one keeps and the other breaks, with life-changing effects. \n Fern Brookbanks has wasted far too much of her adult life thinking about Will Baxter. She spent just twenty-four hours in her early twenties with the aggravatingly attractive, idealistic artist, a chance encounter that spiraled into a daylong adventure in Toronto. The timing was wrong, but their connection was undeniable: they shared every secret, every dream, and made a pact to meet one year later. Fern showed up.',
        18.99,
        'book5.jpg');
    Book book6 = Book(
        6,
        'Killers of the Flower Moon',
        'David Grann',
        'In the 1920s, the richest people per capita in the world were members of the Osage Nation in Oklahoma. After oil was discovered beneath their land, the Osage rode in chauffeured automobiles, built mansions, and sent their children to study in Europe. \n Then, one by one, the Osage began to be killed off. The family of an Osage woman, Mollie Burkhart, became a prime target. One of her relatives was shot. Another was poisoned. And it was just the beginning, as more and more Osage were dying under mysterious circumstances, and many of those who dared to investigate the killings were themselves murdered.',
        19.99,
        'book6.jpg');
    Book book7 = Book(
        7,
        'The Family Across the Street',
        'Nicole Trope',
        'Everybody wants to live on Hogarth Street, the pretty, tree-lined avenue with its white houses. The new family, The Wests, are a perfect fit. Katherine and Josh seem so in love and their gorgeous five-year-old twins race screeching around their beautiful emerald-green lawn. \n But soon people start to notice: why don’t they join backyard barbecues? Why do they brush away offers to babysit? Why, when you knock at the door, do they shut you out, rather than inviting you in?',
        12.99,
        'book7.jpg');
    Book book8 = Book(
        8,
        'One of the Girls',
        'Lucy Clarke',
        'WE WERE DYING FOR A HOLIDAY \n The six of us arrived on that beautiful Greek island dreaming of sun-drenched beaches and blood orange sunsets, ready to lose ourselves in the wild freedom of a weekend away with friends. \n On the first night we swam under a blanket of stars. \n On the second night the games began on our clifftop terrace. \n On the third night the idyll cracked, secrets and lies whispering on the breeze. \n And by the final night there was a body on the rocks below . . . \n WHO WOULD KILL FOR IT?',
        12.99,
        'book8.jpg');
    Book book9 = Book(
        9,
        'The Lost Bookshop',
        'Evie Woods',
        'For too long, Opaline, Martha and Henry have been the side characters in their own lives. \n But when a vanishing bookshop casts its spell, these three unsuspecting strangers will discover that their own stories are every bit as extraordinary as the ones found in the pages of their beloved books. And by unlocking the secrets of the shelves, they find themselves transported to a world of wonder… where nothing is as it seems.',
        17.99,
        'book9.jpg');
    Book book10 = Book(
        9,
        'The Judge\'s List',
        'John Grisham',
        'In The Whistler, Lacy Stoltz investigated a corrupt judge who was taking millions in bribes from a crime syndicate. She put the criminals away, but only after being attacked and nearly killed. Three years later, and approaching forty, she is tired of her work for the Florida Board on Judicial Conduct and ready for a change. \n Then she meets a mysterious woman who is so frightened she uses a number of aliases. Jeri Crosby’s father was murdered twenty years earlier in a case that remains unsolved and that has grown stone cold. But Jeri has a suspect whom she has become obsessed with and has stalked for two decades. Along the way, she has discovered other victims.',
        19.67,
        'book10.jpg');
    booksList.addAll({
      book1,
      book2,
      book3,
      book4,
      book5,
      book6,
      book7,
      book8,
      book9,
      book10
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: const Text('Literary Lounge'),
      ),
      body: Center(
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
                surfaceTintColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: booksList[index].image,
                      child: Container(
                        width: 125,
                        height: 150,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                            image:
                                AssetImage("images/${booksList[index].image}"),
                            // fit: BoxFit.cover,
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
                            padding: const EdgeInsets.all(7),
                            // Adjust the value as needed
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
                            'Author: ${booksList[index].author}',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          // Text(
                          //   '${booksList[index].description}',
                          //   style: const TextStyle(
                          //     fontSize: 16,
                          //   ),
                          // ),
                          // const SizedBox(height: 5),
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
                                      MaterialPageRoute(
                                          builder: (context) => Checkout(
                                              totalAmount:
                                                  booksList[index].price)),
                                    );
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.teal),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
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
