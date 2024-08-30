import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _Cscreen();
}

class _Cscreen extends State<Contact> {

  Future<void> _launchEmail(String emailAddress) async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: emailAddress,
    queryParameters: {
      'subject': 'Hello',
      'body': 'I wanted to discuss something regarding the app.'
    },
  );

  try {
    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(
        emailLaunchUri,
        mode: LaunchMode.externalApplication, // Ensure it opens in an external app
      );
    } else {
      throw 'Could not launch email client';
    }
  } catch (e) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Could not launch email app')),
    );
    print('The error is: $e');
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 255, 0),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/pol.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0), // Add padding around the text
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "CONTACT  US",
                    style: TextStyle(
                      fontSize: 30.0, // Set the font size
                      fontFamily: 'Merriweather', // Set the font family
                      fontWeight: FontWeight.bold, // Set the font weight
                      color: Colors.black, // Set the font color
                      height: 1.5, // Set the line heig
                    ),
                    textAlign: TextAlign.justify, // Set the text alignment
                  ),
                ),
                SizedBox(height: 60), // Adjust the height as needed
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Get In Touch.",
                    style: TextStyle(
                      fontSize: 35.0, // Set the font size
                      fontFamily: 'Merriweather', // Set the font weight
                      color: Colors.black, // Set the font color
                      height: 1.2, // Set the line height
                    ),
                    textAlign: TextAlign.start, // Set the text alignment
                  ),
                ]),
                SizedBox(height: 30),
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "If you have any inquiries, get in \n                   touch with us. \n     We’ll be happy to help you.",
                    style: TextStyle(
                      fontSize: 15.0, // Set the font size
                      fontFamily: 'Merriweather', // Set the font weight
                      color: Colors.black, // Set the font color
                      height: 1.2, // Set the line height
                    ),
                    textAlign: TextAlign.start, // Set the text alignment
                  ),
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _launchEmail('zaineb.makati@ahss.habib.edu.pk'),
                  child: Row(children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width /
                          1.3, // Set width to 80% of the screen width
                      height: 60, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFFD6DD24),
                        borderRadius: BorderRadius.circular(
                            16.0), // Adjust the radius as needed
                      ),
                      alignment: Alignment
                          .centerLeft, // Center the child within the container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/contact.png', // Replace with your image path
                            width: 40,
                            height: 40,
                            // fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'zaineb.makati@ahss.habib.edu.pk',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                GestureDetector(
                  onTap: () => _launchEmail('mk07218@st.habib.edu.pk'),
                  child: Row(children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width /
                          1.3, // Set width to 80% of the screen width
                      height: 60, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFFD6DD24),
                        borderRadius: BorderRadius.circular(
                            16.0), // Adjust the radius as needed
                      ),
                      alignment: Alignment
                          .centerLeft, // Center the child within the container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/contact.png', // Replace with your image path
                            width: 40,
                            height: 40,
                            // fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'mk07218@st.habib.edu.pk',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                GestureDetector(
                  onTap: () => _launchEmail('mk07950@st.habib.edu.pk'),
                  child: Row(children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width /
                          1.3, // Set width to 80% of the screen width
                      height: 60, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFFD6DD24),
                        borderRadius: BorderRadius.circular(
                            16.0), // Adjust the radius as needed
                      ),
                      alignment: Alignment
                          .centerLeft, // Center the child within the container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/contact.png', // Replace with your image path
                            width: 40,
                            height: 40,
                            // fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'mk07950@st.habib.edu.pk',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                GestureDetector(
                  onTap: () => _launchEmail('ds08517@st.habib.edu.pk'),
                  child: Row(children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width /
                          1.3, // Set width to 80% of the screen width
                      height: 60, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFFD6DD24),
                        borderRadius: BorderRadius.circular(
                            16.0), // Adjust the radius as needed
                      ),
                      alignment: Alignment
                          .centerLeft, // Center the child within the container
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/contact.png', // Replace with your image path
                            width: 40,
                            height: 40,
                            // fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'ds08517@st.habib.edu.pk',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
