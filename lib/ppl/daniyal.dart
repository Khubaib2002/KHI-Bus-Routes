// // ignore_for_file: file_names

// import 'package:custom_signin_buttons/button_data.dart';
// import 'package:custom_signin_buttons/button_list.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter/material.dart';

// class Daniyal extends StatelessWidget {
//   const Daniyal({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 246, 255, 0) ,
//       appBar: AppBar(
//         title: const Text(
//           "Koh-e-Atlas",
//           style: TextStyle(
//             fontFamily: 'Merriweather',
//             fontSize: 30.0,
//             fontWeight: FontWeight.bold, 
//             color: Colors.white, 
//           ),
//         ),
//         backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//         elevation: 0.0,
//         centerTitle: true,
//       ),
//       body:
//           Padding(
//               padding:const EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[ 
//                 const Center(
//                     child: CircleAvatar(
//                     backgroundImage: AssetImage("assets/ppl.png"),
//                     radius: 100,
//                   ),
//                 ),
//                 const Divider(
//                   height: 80,
//                   color: Colors.grey,
//                 ),
//                 const SizedBox( height: 10),
//                 Text(
//                     'NAME',
//                     style: TextStyle(
//                     fontSize: 15,
//                     letterSpacing: 2,
//                     color: Colors.grey[300],),
//                    ),
//                 const SizedBox( height: 10),
//                 Text(
//                     'Daniyal Shahab',
//                     style: TextStyle(
//                     fontSize: 25,
//                     letterSpacing: 2,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.amberAccent[200],
//                     fontStyle: FontStyle.italic,),
//                    ),
//                 const SizedBox( height: 35),
//                 Text(
//                     'Profession',
//                     style: TextStyle(
//                     fontSize: 15,
//                     letterSpacing: 2,
//                     color: Colors.grey[300],),
//                    ),
//                 const SizedBox( height: 10),
//                 Text(
//                     'Student at Habib University',
//                     style: TextStyle(
//                     fontSize: 25,
//                     letterSpacing: 2,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.amberAccent[200],
//                     fontStyle: FontStyle.italic,),
//                    ),
//                 const SizedBox( height: 35),
//                 Text(
//                     'CONNECT',
//                     style: TextStyle(
//                     fontSize: 15,
//                     letterSpacing: 2,
//                     color: Colors.grey[300],),
//                    ),
//                 const SizedBox (height:15),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget> [
//                     SignInButton(
//                       button: Button.Facebook,
//                       mini: true,
//                       onPressed: () {
//                         const link = "https://www.facebook.com/Khubaib.19";
//                         launchUrl(
//                           Uri.parse(link),
//                           mode: LaunchMode.externalApplication
//                         );
//                       },
//                     ),
//                     SignInButton(
//                       button: Button.Instagram,
//                       mini: true,
//                       onPressed: () {
//                         const link = "https://www.instagram.com/khubaib_mukaddam/";
//                         launchUrl(
//                           Uri.parse(link),
//                           mode: LaunchMode.externalApplication
//                         );
//                       },
//                     ),
//                     SignInButton(
//                       button: Button.LinkedIn,
//                       mini: true,
//                       onPressed: () {
//                         const link = "https://www.linkedin.com/feed/";
//                         launchUrl(
//                           Uri.parse(link),
//                           mode: LaunchMode.externalApplication
//                         );
//                       },
//                     ),
//                     SignInButton(
//                       button: Button.GitHub,
//                       mini: true, 
//                       onPressed: () {
//                         const link = "https://github.com/Khubaib2002";
//                         launchUrl(
//                           Uri.parse(link),
//                           mode: LaunchMode.externalApplication
//                         );
//                       },
//                     ),
//                   ],
//                 ),

//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:custom_signin_buttons/button_data.dart';
import 'package:custom_signin_buttons/button_list.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Daniyal extends StatefulWidget {
  const Daniyal({super.key});

  @override
  State<Daniyal> createState() => _Dscreen();
}

class _Dscreen extends State<Daniyal>{

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
                    backgroundImage: AssetImage("assets/daniyal.png"),
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
                    'Daniyal Shahab',
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
                    'Computer Science Sophomore\n at Habib University',
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
                        const link = "https://www.linkedin.com/in/daniyal-shadab-536859320/";
                        launchUrl(
                          Uri.parse(link),
                          mode: LaunchMode.externalApplication
                        );
                      },
                    ),
                    // SignInButton(
                    //   button: Button.GitHub,
                    //   mini: true, 
                    //   onPressed: () {
                    //     const link = "https://github.com/Khubaib2002";
                    //     launchUrl(
                    //       Uri.parse(link),
                    //       mode: LaunchMode.externalApplication
                    //     );
                    //   },
                    // ),
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
