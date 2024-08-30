import 'package:flutter/material.dart';
import 'package:coffe_card/img.dart';

class Quote{
    late String text;
    late String author;
    late String imagePathEn;
    late String imagePathUr;

    Quote(String text, String author, String imagePathEn, String imagePathUr){
      this.text = text;
      this.author = author;
      this.imagePathEn = imagePathEn;
      this.imagePathUr = imagePathUr;
    }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;

  const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        // onTap: () {
        //   _showLanguageDialog(context, quote);
        // },
        onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ImageScreen(imagePath: quote.imagePathEn),
              ),
            );
          },
  child:Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(height: 10),
            const Image(
              image: AssetImage('assets/bussz.png'),
              width: 100,
              height: 100,
            ),
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Text(
              quote.author,
              style: const TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    )
   );
  }

  // Function to show the language selection dialog
  // void _showLanguageDialog(BuildContext context, Quote quote) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Select Language'),
  //         content: const Text('Choose a language for the image:'),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop(); // Close the dialog
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) =>
  //                       ImageScreen(imagePath: quote.imagePathEn),
  //                 ),
  //               );
  //             },
  //             child: const Text('English'),
  //           ),
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop(); // Close the dialog
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) =>
  //                       ImageScreen(imagePath: quote.imagePathUr),
  //                 ),
  //               );
  //             },
  //             child: const Text('Urdu'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}


