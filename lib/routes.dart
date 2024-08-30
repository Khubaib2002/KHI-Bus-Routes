import 'package:flutter/material.dart';
import '../quote.dart';
import 'package:coffe_card/drawer.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _Rscreen();
}


class _Rscreen extends State<Explore>{

  List<Quote> quotes = [
  Quote('Route 1', 'Bus 1', 'assets/image1en.png', 'assets/image1ur.png'),
  Quote('Route 2', 'Bus 2', 'assets/7Star.png', 'assets/image1ur.png'),
  Quote('Route 3', 'Bus 3', 'assets/16 Bus.png', 'assets/image1ur.png'),
  Quote('Route 4', 'Bus 4', 'assets/Abdullah.png', 'assets/image1ur.png'),
  Quote('Route 5', 'Bus 5', 'assets/D-11.png', 'assets/image1ur.png'),
  Quote('Route 6', 'Bus 6', 'assets/G-27.png', 'assets/image1ur.png'),
  Quote('Route 7', 'Bus 7', 'assets/Hassanzai.png', 'assets/image1ur.png'),
  Quote('Route 8', 'Bus 8', 'assets/Mawrat.png', 'assets/image1ur.png'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      backgroundColor:const Color.fromARGB(240, 246, 255, 0),
      body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bgp.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // ListView(
            // children: quotes.map((quote) => QuoteCard(
            //   quote: quote)).toList(),      
            //   ), 
            GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ),
            itemCount: quotes.length,
            itemBuilder: (context, index) {
              return QuoteCard(quote: quotes[index]);
            },
          ),
         ],
        ),
    );
  }
} 

          // delete: () {
          //   setState(() {
          //     quotes.remove(quote);
          //   });
          // }
        


