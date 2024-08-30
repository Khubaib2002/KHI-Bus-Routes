import 'package:coffe_card/splash.dart';
import 'package:flutter/material.dart';



void main() {
  runApp( const MaterialApp(
    home: Splash(),
    debugShowCheckedModeBanner: false,
  ));
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//     );
//   }

  // Container buildPage(Color color, String text) {
  //   return Container(
  //     color: color,
  //     child: Center(
  //       child: Text(
  //         text,
  //         style: TextStyle(
  //           fontSize: 50.0,
  //           color: Colors.white,
  //         ),
  //       ),
  //     ),
  //   );
  // }
// }


// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(135, 0, 0, 0),
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
//         backgroundColor: const Color.fromARGB(255, 88, 88, 88),
//         elevation: 0.0,
//         centerTitle: true,
//       ),
//       body:
//           Padding(
//             padding:const EdgeInsets.all(20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[ 
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Explore() ,));
//                 },
//                 child: Image.asset(
//                     'assets/icon1.png', // Replace with your image path
//                     width: 300,
//                     height: 300,
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               const SizedBox(height: 20),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Choose() ,));
//                 },
//                 child: Image.asset(
//                     'assets/icon2.png', // Replace with your image path
//                     width: 300,
//                     height: 300,
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//                 // Row(
//                 //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 //   children: <Widget> [
//                 //       ElevatedButton(
//                 //       onPressed: () {
//                 //         Navigator.push(context, MaterialPageRoute(builder: (context) => const Choose() ,));
//                 //       },
//                 //       style: ButtonStyle(
//                 //       backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 79, 80, 80)), // Specify the background color
//                 //       ),
//                 //       child: const Text('next',
//                 //         style: TextStyle(
//                 //         fontSize: 18.0,
//                 //         fontWeight: FontWeight.bold,  
//                 //         color:  Colors.white, 
//                 //           ),
//                 //         ),
//                 //       ),
//                 //   ],
//                 // ),



// // class Home extends StatelessWidget {
// //   const Home({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           "First Flutter App",
// //           style: TextStyle(
// //             fontSize: 30.0,
// //             fontWeight: FontWeight.bold,  
// //             color: Colors.white, 
// //           ),
// //           ),
// //         backgroundColor: Colors.blue[500],
// //         centerTitle: true,
// //       ),
// //       body:Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: <Widget> [
// //             Icon(
// //               Icons.airport_shuttle,
// //               color: Colors.blue[800],
// //               size: 50.0
// //             ),
// //             IconButton(
// //               onPressed: () {},
// //               icon: const Icon(Icons.alternate_email),
// //               color: Colors.blue,
// //                ),
// //             Container(
// //               color:const Color.fromARGB(255, 125, 193, 227),
// //               padding: const EdgeInsets.all(20),
// //               // padding: const EdgeInsets.only(bottom: 0),
// //               margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
// //               child: Text(
// //               'Hello Fam',
// //               style: TextStyle(
// //                 fontSize: 40.0,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.blue[800],
// //                 decoration: TextDecoration.none,
// //                 fontStyle: FontStyle.italic,
// //               ),
// //             ),
// //             ),
// //         ]
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {},
// //         child: const Text('click')
// //       ),
// //     );
// //   }
// // }



// // class Home extends StatelessWidget {
// //   const Home({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text(
// //           "First Flutter App",
// //           style: TextStyle(
// //             fontSize: 30.0,
// //             fontWeight: FontWeight.bold,  
// //             color: Colors.white, 
// //           ),
// //           ),
// //         backgroundColor: Colors.blue[500],
// //         centerTitle: true,
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Icon(
// //               Icons.airport_shuttle,
// //               color: Colors.blue[800],
// //               size: 50.0
// //             ),
// //             IconButton(
// //               onPressed: () {},
// //               icon: const Icon(Icons.alternate_email),
// //               color: Colors.blue,
// //                ),
// //             Container(
// //               color:const Color.fromARGB(255, 125, 193, 227),
// //               padding: const EdgeInsets.all(20),
// //               // padding: const EdgeInsets.only(bottom: 0),
// //               margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
// //               child: Text(
// //               'Hello Fam',
// //               style: TextStyle(
// //                 fontSize: 40.0,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.blue[800],
// //                 decoration: TextDecoration.none,
// //                 fontStyle: FontStyle.italic,
// //               ),
// //             ),
// //             ),
// //             Image.asset("assets/tt.png",
// //               width: 400, // Set the desired width
// //               height: 400,),
// //             Text(
// //               'Bye Fam',
// //               style: TextStyle(
// //                 fontSize: 40.0,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.blue[800],
// //               ),
// //             ),
// //             ElevatedButton.icon(
// //             onPressed: () {},
// //             icon: const Icon(
// //               Icons.mail,
// //               color: Colors.white,
// //             ),
// //             label: const Text(
// //               'MAIL ME',
// //               style: TextStyle(
// //                 fontSize: 20.0,
// //                 fontWeight: FontWeight.bold,
// //                 color:  Color.fromARGB(255, 255, 255, 255),
// //               ),
// //             ),
// //             style: ButtonStyle(
// //               backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
// //           ),
// //           ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {},
// //         child: const Text('click')
// //       ),
// //     );
// //   }
// // }

