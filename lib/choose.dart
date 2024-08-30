import 'package:coffe_card/ppl/khubaib.dart';
import 'package:coffe_card/ppl/daniyal.dart';
import 'package:coffe_card/ppl/mehlab.dart';
import 'package:coffe_card/ppl/aatika.dart';
import 'package:coffe_card/ppl/zainab.dart';
import 'package:flutter/material.dart';

class Choose extends StatelessWidget {
  const Choose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255) ,
      body:Stack(
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
              padding:const EdgeInsets.fromLTRB(20, 150, 20, 20),
              child: SingleChildScrollView( child:
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 40,),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Zainab() ,));
                          },
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("assets/zaineb.png"),
                            radius: 65,
                          ),
                        ),
                      const Text(
                          '    Zaineb      \n    Makati      ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,),
                        ),
                       ], 
                      ),
                SizedBox(height: 20,),      
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const AK() ,));
                          },
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("assets/aatika.png"),
                            radius: 65,
                          ),
                        ),
                      const Text(
                          '    Aatika      \n    Saleem      ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,),
                        ),
                       ], 
                      ),
                SizedBox(height: 20,),   
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Khubaib() ,));
                          },
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("assets/tt.png"),
                            radius: 65,
                          ),
                        ),
                      const SizedBox(width: 15,),
                      const Text(
                          'Khubaib\nMukaddam',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,),
                        ),
                       ], 
                      ),
                SizedBox(height: 20,),   
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Mehlab() ,));
                          },
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("assets/mehlab.png"),
                            radius: 65,
                          ),
                        ),

                      const Text(
                          '     Mehlab     \n     Kashani    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,),
                        ),
                       ], 
                      ),
                SizedBox(height: 20,),   
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Daniyal() ,));
                          },
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("assets/daniyal.png"),
                            radius: 65,
                          ),
                        ),

                      const Text(
                          '    Daniyal    \n    Shahab    ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 25,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,),
                        ),
                       ], 
                      ),
                  ],
                ),
              ),
              ),
           ],
        ),
    );
  }
}
