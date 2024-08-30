
import 'package:coffe_card/choose.dart';
import 'package:coffe_card/option.dart';
import 'package:coffe_card/routes.dart';
import 'package:coffe_card/us.dart';
import 'package:flutter/material.dart';


class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

@override
Widget build (BuildContext context) {

    // final safeArea = EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);
    const  isCollapsed = false;

    return SizedBox(
    width: MediaQuery.of (context).size.width * 0.65,
    child: Drawer(
      child: Container(
        color: const Color.fromARGB(200, 246, 255, 0) ,
        child: Column(
          children: [ 
              const SizedBox(height: 30,),
              buildHeader(isCollapsed),
              const Divider(color: Color.fromARGB(179, 135, 130, 130)),
              const SizedBox(height: 30),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const QQ() ,));
                  },
                  child:  const Text("HOME",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold, 
                          color: Colors.black, 
                        ),
                      ),
                ),
              const SizedBox(height: 20),
              const Divider(color: Color.fromARGB(179, 135, 130, 130)),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Us() ,));
                  },
                  child:  const Text("ABOUT US",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold, 
                          color: Colors.black, 
                        ),
                      ),
                ),
              const SizedBox(height: 20),
              const Divider(color: Color.fromARGB(179, 135, 130, 130)),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Explore() ,));
                  },
                  child:  const Text("BUS ROUTES",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold, 
                        color: Colors.black, 
                      ),
                    ),
                ),
              
              const SizedBox(height: 20),
              const Divider(color: Color.fromARGB(179, 135, 130, 130)),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Choose() ,));
                  },
                  child:  const Text("THE TEAM",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold, 
                          color: Colors.black, 
                        ),
                      ),
                ),
              const SizedBox(height: 20),
              const Divider(color: Color.fromARGB(179, 135, 130, 130)),
              const SizedBox(height: 20),
              const Text("CONTACT",
              style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold, 
                  color: Colors.black, 
                ),
              ),
              const SizedBox(height: 20)
          ] 
        ), // Column
       ), // Container
      ), // Drawer
     ); // Container
    }


  Widget buildHeader
  (bool isCollapsed) => isCollapsed ?  Image.asset('assets/bus.png',  width: 300, height: 300)
      : const Column(children: [
            SizedBox(width: 44),
            Image(image: AssetImage('assets/bus.png'), width: 150, height: 150),
            Text("Koh-e-Atlas",
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 30.0,
                fontWeight: FontWeight.bold, 
                color: Color.fromARGB(255, 0, 0, 0), 
              ),
            ),
          ],
        );
}



// import 'package:coffe_card/choose.dart';
// import 'package:coffe_card/routes.dart';
// import 'package:flutter/material.dart';


// class NavigationDrawerWidget extends StatelessWidget { 
//     final padding = EdgeInsets.symmetric (horizontal: 20);

// @override
// Widget build (BuildContext context) {

//     final safeArea = EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);
//     const  isCollapsed = false;

//     return Container(
//     // width: isCollapsed? MediaQuery.of (context).size.width * 0.2 :null,
//     child: Drawer(
//       child: Container(
//         color: const Color.fromARGB(255, 246, 255, 0) ,
//         child: Column(
//           children: [ Container(
//                 padding: const EdgeInsets.symmetric(vertical: 20).add(safeArea),
//                 width: double.infinity,
//                 color: const Color.fromARGB(85, 255, 255, 255),
//                 child: buildHeader(isCollapsed),
//               ),
//               const Divider(color: Color.fromARGB(179, 135, 130, 130)),
//               const SizedBox(height: 30),
//               const Text("HOME",
//               style: TextStyle(
//                   fontFamily: 'Merriweather',
//                   fontSize: 22.0,
//                   fontWeight: FontWeight.bold, 
//                   color: Colors.black, 
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Divider(color: Color.fromARGB(179, 135, 130, 130)),
//               const SizedBox(height: 20),
//               const Text("ABOUT US",
//               style: TextStyle(
//                   fontFamily: 'Merriweather',
//                   fontSize: 22.0,
//                   fontWeight: FontWeight.bold, 
//                   color: Colors.black, 
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Divider(color: Colors.white70),
//               const SizedBox(height: 20),
//               GestureDetector(
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Explore() ,));
//                   },
//                   child:  const Text("BUS ROUTES",
//                     style: TextStyle(
//                         fontFamily: 'Merriweather',
//                         fontSize: 22.0,
//                         fontWeight: FontWeight.bold, 
//                         color: Colors.black, 
//                       ),
//                     ),
//                 ),
              
//               const SizedBox(height: 20),
//               const Divider(color: Colors.white70),
//               const SizedBox(height: 20),
//               GestureDetector(
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Choose() ,));
//                   },
//                   child:  const Text("MEET THE TEAM",
//                       style: TextStyle(
//                           fontFamily: 'Merriweather',
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.bold, 
//                           color: Colors.black, 
//                         ),
//                       ),
//                 ),
//               const SizedBox(height: 20),
//               const Divider(color: Colors.white70),
//               const SizedBox(height: 20),
//               const Text("CONTACT",
//               style: TextStyle(
//                   fontFamily: 'Merriweather',
//                   fontSize: 22.0,
//                   fontWeight: FontWeight.bold, 
//                   color: Colors.black, 
//                 ),
//               ),
//               const SizedBox(height: 20)
//           ] 
//         ), // Column
//        ), // Container
//       ), // Drawer
//      ); // Container
//     }


//   Widget buildHeader
//   (bool isCollapsed) => isCollapsed ?  Image.asset('assets/bus.png',  width: 300, height: 300)
//       : const Row(children: [
//             SizedBox(width: 24),
//             Image(image: AssetImage('assets/bus.png'), width: 60, height: 60),
//             SizedBox(width: 6),
//             Text("Koh-e-Atlas",
//               style: TextStyle(
//                 fontFamily: 'Merriweather',
//                 fontSize: 30.0,
//                 fontWeight: FontWeight.bold, 
//                 color: Colors.black, 
//               ),
//             ),
//           ],
//         );
// }
