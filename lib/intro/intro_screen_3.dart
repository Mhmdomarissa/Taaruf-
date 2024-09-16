import 'package:flutter/material.dart';
import 'sign_in_screen.dart';

class IntroScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5F7), // Background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Align items vertically
        crossAxisAlignment:
            CrossAxisAlignment.center, // Align items horizontally in the center
        children: [
          // Add padding to the top and center the image
          Padding(
            padding: const EdgeInsets.only(
                top: 60.0), // Adjust the top padding as needed
            child: Center(
              child: Image.asset(
                'assets/images/intro3.png', // Path to the PNG file
                width: MediaQuery.of(context).size.width *
                    0.8, // 80% of the screen width
                height: MediaQuery.of(context).size.height *
                    0.5, // 50% of the screen height
              ),
            ),
          ),
          // White rounded container with title, description, and button
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width *
                  0.9, // 90% of the screen width
              height: MediaQuery.of(context).size.height *
                  0.3, // Adjust height accordingly
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0), // Rounded corners
              ),
              child: Padding(
                padding:
                    const EdgeInsets.all(20.0), // Padding inside the container
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Send a Royal Gesture', // Title
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23, // Font size as per your design
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10), // Space between title and description
                    Text(
                      'Send crowns as a unique and thoughtful gift to express your interest and make your connections feel valued.', // Description
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13, // Font size as per your design
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Poppins',
                        color: Colors.grey[600], // Grey color for description
                      ),
                    ),
                    SizedBox(height: 20), // Space before the button
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to SignInScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 80.0), // Button size
                        backgroundColor: Color(0xFFEE2737), // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Text(
                        'GET STARTED',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
