import 'package:flutter/material.dart';
import 'package:coffe_card/drawer.dart';


class Us extends StatelessWidget {
  const Us({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      backgroundColor: const Color.fromARGB(240, 246, 255, 0),
      // appBar: AppBar(
      //   title: const Text(
      //     "ABOUT US",
      //     style: TextStyle(
      //       fontFamily: 'Merriweather',
      //       fontSize: 30.0,
      //       fontWeight: FontWeight.bold, 
      //       color: Colors.white, 
      //     ),
      //   ),
      //   backgroundColor: const Color.fromARGB(255, 88, 88, 88),
      //   elevation: 0.0,
      //   centerTitle: true,
      // ),
      body:  Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/about.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Padding(
            padding: EdgeInsets.all(16.0), // Add padding around the text
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 380,),
                Text(
                  "About Us",
                  style: TextStyle(
                    fontSize: 30.0, // Set the font size
                    fontFamily: 'Merriweather', // Set the font family
                    fontWeight: FontWeight.bold, // Set the font weight
                    color: Colors.black, // Set the font color
                    height: 1.5, // Set the line height
                  ),
                  textAlign: TextAlign.justify, // Set the text alignment
                ),
                 SizedBox(height: 20), // Adjust the height as needed
                 Text(
                  "Koh e Atlas Karachi is an ongoing research study that aims to make the routes of local busses and carrier publicly available, aiding the millions of people who use these services on a daily by providing clarity and knowledge of all the bus stops a carries uses on their routes. \n \n More routes are being added weekly, after careful and accurate mapping, of course.",
                  style: TextStyle(
                    fontSize: 15.0, // Set the font size
                    fontFamily: 'Merriweather', // Set the font family
                    fontWeight: FontWeight.normal, // Set the font weight
                    color: Colors.black, // Set the font color
                    height: 1.5, // Set the line height
                  ),
                  textAlign: TextAlign.left, // Set the text alignment
                ),
              ],
            ),
          ),
         ],
        ),
    );
  }
}
