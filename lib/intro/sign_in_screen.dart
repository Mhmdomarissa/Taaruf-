// import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart'; // Import the package

// class SignInScreen extends StatefulWidget {
//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   bool _isPasswordVisible = false; // Track visibility of the password
//   bool _isTermsAccepted = false; // Track if terms are accepted

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: Color(0xFFFFFFFF),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Red container with logo and text
//             Container(
//               width: screenWidth, // Full width of the screen
//               height: MediaQuery.of(context).size.height * 0.35,
//               decoration: BoxDecoration(
//                 color: Color(0xFFEE2839),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(40),
//                   bottomRight: Radius.circular(40),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 50, left: 50),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       'assets/images/logo.png',
//                       height: 80,
//                     ),
//                     SizedBox(height: 70),
//                     Text(
//                       'Join the Taaruf Community',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.white,
//                         height: 1.25,
//                       ),
//                     ),
//                     Text(
//                       'by signing in',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.white,
//                         height: 1.25,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 50), // Space after red container

//             // Country picker with phone number input field
//             Container(
//               width: screenWidth * 0.85, // Set custom width
//               child: IntlPhoneField(
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Color(0xFFF6F6F7), // Set background color
//                   hintText: 'Enter your phone number',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30), // Rounded edges
//                     borderSide: BorderSide.none,
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     vertical: 20,
//                     horizontal: 16,
//                   ),
//                 ),
//                 initialCountryCode: 'LB', // Lebanon as the initial country
//                 onChanged: (phone) {
//                   print(phone.completeNumber); // Output the phone number
//                 },
//               ),
//             ),
//             SizedBox(height: 20), // Space between input fields

//             // Password input field
//             Container(
//               width: screenWidth * 0.85, // Set custom width
//               child: TextField(
//                 obscureText: !_isPasswordVisible, // Mask/unmask the password
//                 decoration: InputDecoration(
//                   filled: true,
//                   fillColor: Color(0xFFF6F6F7), // Set background color
//                   hintText: 'Your password',
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _isPasswordVisible
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         _isPasswordVisible = !_isPasswordVisible;
//                       });
//                     },
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide.none,
//                   ),
//                   contentPadding: EdgeInsets.symmetric(
//                     vertical: 20,
//                     horizontal: 16,
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 20), // Space between input fields

// // Align checkbox and forgot password
// Container(
//   width: screenWidth * 0.85, // Same width as input fields
//   child: Column(
//     crossAxisAlignment:
//         CrossAxisAlignment.start, // Align to the left
//     children: [
//       Row(
//         children: [
//           Theme(
//             data: ThemeData(
//               unselectedWidgetColor:
//                   Colors.grey, // Border color when unchecked
//             ),
//             child: Checkbox(
//               activeColor: Color(0xFFEE2737), // Set red color
//               value: _isTermsAccepted,
//               onChanged: (bool? value) {
//                 setState(() {
//                   _isTermsAccepted = value ?? false;
//                 });
//               },
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               // Navigate to Terms and Conditions page
//               print('Navigating to Terms and Conditions');
//             },
//             child: Text(
//               'Agree to terms and conditions?',
//               style: TextStyle(
//                 color: Colors.blue,
//               ),
//             ),
//           ),
//         ],
//       ),
//       // Forgot password link aligned below the checkbox
//       Align(
//         alignment: Alignment.centerRight, // Align to the right
//         child: GestureDetector(
//           onTap: () {
//             // Navigate to Forgot Password page
//             print('Navigating to Forgot Password');
//           },
//           child: Padding(
//             padding: const EdgeInsets.only(
//                 right: 8.0), // Add padding to align right
//             child: Text(
//               'Forgot password?',
//               style: TextStyle(color: Color(0xFFC41E2C)),
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),

//             SizedBox(height: 20), // Space between fields and button

//             // Sign in button
//             Container(
//               width: screenWidth * 0.85, // Set custom width
//               child: ElevatedButton(
//                 onPressed: _isTermsAccepted
//                     ? () {
//                         // Navigate to another page
//                         print('Navigating to the next page');
//                       }
//                     : null, // Disable if terms are not accepted
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: _isTermsAccepted
//                       ? Color(0xFFC41E2C)
//                       : Color(
//                           0xFFF6F6F7), // Change button color based on checkbox state
//                   padding:
//                       EdgeInsets.symmetric(vertical: 24), // Increase height
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 child: Text(
//                   'SIGN IN',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 20), // Space between button and sign-up

//             // Sign up link
//             Center(
//               child: TextButton(
//                 onPressed: () {
//                   // Navigate to Sign Up page
//                   print('Navigating to Sign Up');
//                 },
//                 child: Text(
//                   'SIGN UP',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black,
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart'; // Import the package
import 'package:http/http.dart' as http; // For API requests
import 'dart:convert'; // For JSON encoding/decoding

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isPasswordVisible = false; // Track visibility of the password
  bool _isTermsAccepted = false; // Track if terms are accepted

  String _phoneNumber = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Red container with logo and text
            Container(
              width: screenWidth, // Full width of the screen
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                color: Color(0xFFEE2839),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 80,
                    ),
                    SizedBox(height: 70),
                    Text(
                      'Join the Taaruf Community',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        height: 1.25,
                      ),
                    ),
                    Text(
                      'by signing in',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        height: 1.25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50), // Space after red container

            // Country picker with phone number input field
            Container(
              width: screenWidth * 0.85, // Set custom width
              child: IntlPhoneField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF6F6F7), // Set background color
                  hintText: 'Enter your phone number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded edges
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 16,
                  ),
                ),
                initialCountryCode: 'LB', // Lebanon as the initial country
                onChanged: (phone) {
                  _phoneNumber = phone.completeNumber;
                  print(_phoneNumber); // Output the phone number
                },
              ),
            ),
            SizedBox(height: 20), // Space between input fields

            // Password input field
            Container(
              width: screenWidth * 0.85, // Set custom width
              child: TextField(
                obscureText: !_isPasswordVisible, // Mask/unmask the password
                onChanged: (value) {
                  _password = value; // Capture password input
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF6F6F7), // Set background color
                  hintText: 'Your password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 16,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20), // Space between input fields

            // Align checkbox and forgot password
            Container(
              width: screenWidth * 0.85, // Same width as input fields
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align to the left
                children: [
                  Row(
                    children: [
                      Theme(
                        data: ThemeData(
                          unselectedWidgetColor:
                              Colors.grey, // Border color when unchecked
                        ),
                        child: Checkbox(
                          activeColor: Color(0xFFEE2737), // Set red color
                          value: _isTermsAccepted,
                          onChanged: (bool? value) {
                            setState(() {
                              _isTermsAccepted = value ?? false;
                            });
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to Terms and Conditions page
                          print('Navigating to Terms and Conditions');
                        },
                        child: Text(
                          'Agree to terms and conditions?',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Forgot password link aligned below the checkbox
                  Align(
                    alignment: Alignment.centerRight, // Align to the right
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to Forgot Password page
                        print('Navigating to Forgot Password');
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Add padding to align right
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(color: Color(0xFFC41E2C)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20), // Space between fields and button

            // Sign in button
            Container(
              width: screenWidth * 0.85, // Set custom width
              child: ElevatedButton(
                onPressed: _isTermsAccepted
                    ? () {
                        _signIn(_phoneNumber, _password);
                      }
                    : null, // Disable if terms are not accepted
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isTermsAccepted
                      ? Color(0xFFC41E2C)
                      : Color(
                          0xFFF6F6F7), // Change button color based on checkbox state
                  padding:
                      EdgeInsets.symmetric(vertical: 24), // Increase height
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20), // Space between button and sign-up

            // Sign up link
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigate to Sign Up page
                  print('Navigating to Sign Up');
                  // Replace with actual navigation code
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to handle Sign In API call
  Future<void> _signIn(String phoneNumber, String password) async {
    final response = await http.post(
      Uri.parse('YOUR_SIGNIN_API_URL'), // Replace with actual API URL
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'phone': phoneNumber,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      if (data['authorized'] == true) {
        // Navigate to dashboard or main page
        print("Sign in successful");
      } else {
        // Show an error message: Incorrect password
        print("Incorrect credentials");
      }
    } else {
      // Handle error: Show an error message
      print("Failed to sign in");
    }
  }
}
