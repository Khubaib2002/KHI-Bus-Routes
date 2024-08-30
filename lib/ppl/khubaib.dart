import 'package:custom_signin_buttons/button_data.dart';
import 'package:custom_signin_buttons/button_list.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Khubaib extends StatefulWidget {
  const Khubaib({super.key});

  @override
  State<Khubaib> createState() => _Kscreen();
}

class _Kscreen extends State<Khubaib>{

  int level = 0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 255, 0) ,
      // appBar: AppBar(
      //   title: const Text(
      //     "Koh-e-Atlas",
      //     style: TextStyle(
      //       fontSize: 30.0,
      //       fontFamily: 'Merriweather',
      //       fontWeight: FontWeight.bold, 
      //       color: Colors.white, 
      //     ),
      //   ),
      //   backgroundColor: const Color.fromARGB(255, 88, 88, 88),
      //   elevation: 0.0,
      //   centerTitle: true,
      // ),
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
                    backgroundImage: AssetImage("assets/tt.png"),
                    radius: 100,
                  ),
                ),
                // const Divider(
                //   height: 80,
                //   color: Colors.grey,
                // ),
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
                    'Muhammad Khubaib',
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
                    'Computer Science Senior\n at Habib University',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,),
                   ),
                const SizedBox( height: 45),
                // Text(
                //     'LEVEL',
                //     style: TextStyle(
                //     fontSize: 15,
                //     letterSpacing: 2,
                //     color: Colors.grey[300],),
                //    ),
                // const SizedBox( height: 10),
                // Text(
                //     '$level',
                //     style: TextStyle(
                //     fontSize: 25,
                //     letterSpacing: 2,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.amberAccent[200],
                //     fontStyle: FontStyle.italic,),
                //    ),
                // const SizedBox( height: 35),
                // FloatingActionButton(
                //   onPressed: () {
                //     setState(() {
                //       level += 1;
                //     });
                //   }, 
                //   backgroundColor: Colors.grey,
                //   child: const Icon(Icons.add),
                //   )
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
                    // SignInButton(
                    //   button: Button.Facebook,
                    //   mini: true,
                    //   onPressed: () {
                    //     const link = "https://www.facebook.com/Khubaib.19";
                    //     launchUrl(
                    //       Uri.parse(link),
                    //       mode: LaunchMode.externalApplication
                    //     );
                    //   },
                    // ),
                    // SignInButton(
                    //   button: Button.Instagram,
                    //   mini: true,
                    //   onPressed: () {
                    //     const link = "https://www.instagram.com/khubaib_mukaddam/";
                    //     launchUrl(
                    //       Uri.parse(link),
                    //       mode: LaunchMode.externalApplication
                    //     );
                    //   },
                    // ),
                    SignInButton(
                      button: Button.LinkedIn,
                      mini: true,
                      onPressed: () {
                        const link = "https://www.linkedin.com/in/khubaib-mukaddam-4998ba220/";
                        launchUrl(
                          Uri.parse(link),
                          mode: LaunchMode.externalApplication
                        );
                      },
                    ),
                    SignInButton(
                      button: Button.GitHub,
                      mini: true, 
                      onPressed: () {
                        const link = "https://github.com/Khubaib2002";
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
