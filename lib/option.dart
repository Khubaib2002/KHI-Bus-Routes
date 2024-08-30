import 'package:coffe_card/contact.dart';
import 'package:coffe_card/us.dart';
import 'package:flutter/material.dart';
import 'package:coffe_card/choose.dart';
import 'package:coffe_card/routes.dart';
import 'package:coffe_card/drawer.dart';

int stater = 0;

class QQ extends StatelessWidget {
  const QQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      backgroundColor: const Color.fromARGB(240, 246, 255, 0),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bggg.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Us()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2, // Set width to 80% of the screen width
                      height: 80, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFFD6DD24),
                        borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                      ),
                      alignment: Alignment.center, // Center the child within the container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 30,),
                          Image.asset(
                            'assets/info.png', // Replace with your image path
                            width: 50,
                            height: 50,
                            // fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 40),
                          const Text(
                            'About Us',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Explore()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2, // Set width to 80% of the screen width
                      height: 80, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFFD6DD24),
                        borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                      ),
                      alignment: Alignment.center, // Center the child within the container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 20,),
                          Image.asset(
                            'assets/rasta.png', // Replace with your image path
                            width: 70,
                            height: 70,
                            // fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Bus Routes',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Choose()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2, // Set width to 80% of the screen width
                      height: 80, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFFD6DD24),
                        borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                      ),
                      alignment: Alignment.center, // Center the child within the container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 20,),
                          Image.asset(
                            'assets/team.png', // Replace with your image path
                            width: 70,
                            height: 70,
                            // fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 40),
                          const Text(
                            'Team',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Contact()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2, // Set width to 80% of the screen width
                      height: 80, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFFD6DD24),
                        borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
                      ),
                      alignment: Alignment.center, // Center the child within the container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 20,),
                          Image.asset(
                            'assets/contact.png', // Replace with your image path
                            width: 70,
                            height: 70,
                            // fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 40),
                          const Text(
                            'Contact',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
