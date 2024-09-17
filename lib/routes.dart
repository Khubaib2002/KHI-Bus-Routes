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
  Quote('Route 1', 'G-11', 'assets/image1en.png', 'assets/image1ur.png'),
  Quote('Route 2', '7 STAR', 'assets/7Star.png', 'assets/image1ur.png'),
  Quote('Route 3', '16 BUS', 'assets/16 Bus.png', 'assets/image1ur.png'),
  Quote('Route 4', 'ABDULLAH', 'assets/Abdullah.png', 'assets/image1ur.png'),
  Quote('Route 5', 'D-11', 'assets/D-11.png', 'assets/image1ur.png'),
  Quote('Route 6', 'HASSAN ZAI', 'assets/Hassanzai.png', 'assets/image1ur.png'),
  Quote('Route 7', 'G-27' , 'assets/G-27.png', 'assets/image1ur.png'),
  Quote('Route 8', 'MAWRAT', 'assets/Mawrat.png', 'assets/image1ur.png'),
  Quote('Route 9', '11-C', 'assets/11C.png', 'assets/image1ur.png'),
  Quote('Route 10', 'G-3', 'assets/G-3.png', 'assets/image1ur.png'),
  Quote('Route 11', 'G-17', 'assets/G-17.png', 'assets/image1ur.png'),
  Quote('Route 12', 'G-19', 'assets/G-19.png', 'assets/image1ur.png'),
  Quote('Route 13', 'GULISTAN', 'assets/Gulistan.png', 'assets/image1ur.png'),
  Quote('Route 14', 'MASOOD' , 'assets/Masood.png', 'assets/image1ur.png'),
  Quote('Route 15', 'SHIRAZ', 'assets/Shiraz.png', 'assets/image1ur.png'),
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
        


