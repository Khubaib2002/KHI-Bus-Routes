import 'package:custom_signin_buttons/button_data.dart';
import 'package:custom_signin_buttons/button_list.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class AK extends StatefulWidget {
  const AK({super.key});

  @override
  State<AK> createState() => _AKscreen();
}

class _AKscreen extends State<AK>{

  int level = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 255, 0) ,
      body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bgk.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
        
          Padding(
              padding:const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[ 
                const SizedBox(height: 150,),
                const Center(
                    child: CircleAvatar(
                    backgroundImage: AssetImage("assets/aatika.png"),
                    radius: 100,
                  ),
                ),
                const SizedBox(height: 30,),
                Row(children: [
                  Container(
                  height: 60, // Adjust height as needed
                  width: 3,
                  color: const Color.fromARGB(255, 0, 0, 0), // Color of the vertical line
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                ),
                const SizedBox( width: 10),
                const Text(
                    'Aatika Saleem',
                    style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,),
                   ),

                ],
                ),
                const SizedBox( height: 35,),
                const Text(
                    'Social Development and Policy\n Alumni Habib University',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,),
                   ),
                const SizedBox( height: 45),
                const Text(
                    'CONNECT',
                    style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2,
                    color: Colors.black,),
                   ),
                const SizedBox (height:15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    
                    SignInButton(
                      button: Button.LinkedIn,
                      mini: true,
                      onPressed: () {
                        const link = "https://www.linkedin.com/in/aatika-saleem-81957b20a/";
                        launchUrl(
                          Uri.parse(link),
                          mode: LaunchMode.externalApplication
                        );
                      },
                    ),
                   
                  ],
                ),

          ],
        ),
      ),
       ],
        ),
    );
  }
}