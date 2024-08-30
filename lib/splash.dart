import 'dart:async';
import 'package:coffe_card/option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffe_card/color.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool _showLoader = true;
  bool _showButton = false;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 7), () {
      setState(() {
        _showLoader = false;
        _showButton = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/splash.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 535),
                if (_showLoader)
                  const ColorLoader2(
                    color1: Color.fromARGB(255, 0, 255, 4),
                    color2: Color.fromARGB(255, 255, 59, 59),
                    color3: Colors.black,
                  ),
                if (_showButton)
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  GestureDetector(
                      onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const QQ(),
                                ),
                              );
                            },
                      child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "CONTINUE",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ),
                  GestureDetector(
                      onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const QQ(),
                                ),
                              );
                            },
                      child: Container(
                        margin: const EdgeInsets.only(left: 0),
                        child: ClipOval(
                          child: Material(
                            color: const Color.fromRGBO(78, 82, 91, 1),
                                
                            child: const InkWell(
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.arrow_right,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
