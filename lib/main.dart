import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Bibliothèque "URL"

// Email :
const toEmail = "K.ouaras@univ-boumerdes.dz";
const subject = "Mail";
const message = "Hello Logan\nHow are you ?\nI'm fine !!";
final Uri urlEmail =
    Uri.parse('mailto:$toEmail?subject=$subject&body=$message');

// Link :
final Uri urlInBrowser = Uri.parse('https://fs.univ-boumerdes.dz');

// Call & SMS :
const phoneNumber = "+213662725658";
final Uri urlPN = Uri.parse('tel:$phoneNumber');
final Uri urlSMS = Uri.parse('sms:$phoneNumber');
void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
    debugShowCheckedModeBanner: false,
  ));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          "ID Card",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[900],
        elevation: 1.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage("images/LoganImage.jpg"),
                backgroundColor: Colors.transparent,
              ),
            ),
            const Divider(
              height: 30.0,
              color: Color.fromRGBO(255, 111, 0, 1),
            ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0), // Separator with tow elements
            const Text(
              "Logan Ouaras",
              style: TextStyle(
                color: Color.fromARGB(255, 247, 113, 3),
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              "AGE",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0), // Separator with tow elements
            const Text(
              "20",
              style: TextStyle(
                color: Color.fromARGB(255, 247, 113, 3),
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(width: 10.0),
                Text(
                  "K.ouaras@univ-boumerdes.dz",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 247, 113, 3),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(width: 10.0),
                Text(
                  "+231 662 72 56 58",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 247, 113, 3),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.work,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Student at UMBB -FS-",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 247, 113, 3),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.computer,
                  color: Colors.white,
                  size: 35,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Computer Science '3rd years' (IS)",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 247, 113, 3),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20.0,
              color: Color.fromRGBO(255, 111, 0, 1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Width
              children: <Widget>[
                ElevatedButton(
                  onPressed: () async {
                    launchUrl(urlPN);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 111, 0, 1),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Call"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    launchUrl(urlSMS);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 111, 0, 1),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("SMS"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    launchUrl(urlEmail);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 111, 0, 1),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Email"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    launchUrl(urlInBrowser,

                        /// /// Leaves the decision of how to launch the URL to the platform implementation.
                        /// LaunchMode.platformDefault,
                        /// /// Loads the URL in an in-app web view (e.g., Safari View Controller).
                        /// LaunchMode.inAppWebView
                        /// /// Passes the URL to the OS to be handled by another application.
                        /// LaunchMode.externalApplication
                        /// /// Passes the URL to the OS to be handled by another non-browser application.
                        /// LaunchMode.externalNonBrowserApplication,
                        mode: LaunchMode.inAppWebView,
                        webViewConfiguration: const WebViewConfiguration(),
                        webOnlyWindowName: '_self');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 111, 0, 1),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Lien"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
