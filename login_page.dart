// Updated LoginPage widget

import 'package:flutter/material.dart';
import 'package:classico/components/my_button.dart';
import 'package:classico/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // logo
                Image.asset(
                  "lib/img/Logo.png",
                  height: 100,
                  width: 100,
                ),

                const SizedBox(height: 50),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button
                MyButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 50),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  // Text editing controllers
  final TextEditingController userController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController mobnoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController repController = TextEditingController(); // Corrected name

  // Method to sign user in
  void signup() {
    // Implement your sign-up logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),

                // Logo image
                Image.asset(
                  'lib/img/Logo.png',
                  width: 100,
                  height: 100,
                ),

                SizedBox(height: 50),

                // Username textfield
                MyTextField(
                  controller: userController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                // Mobile number textfield
                MyTextField(
                  controller: mobnoController,
                  hintText: 'Mobile Number',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                // Email textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                // Password textfield
                MyTextField(
                  controller: pwdController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: 10),

                // Repeat password textfield
                MyTextField(
                  controller: repController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),

                SizedBox(height: 25),

                MyButton(
                  onTap: signup,
                ),
              ], // End of children list
            ), // End of Column
          ), // End of SingleChildScrollView
        ), // End of Center
      ), // End of SafeArea
    ); // End of Scaffold
  } // End of build method
} // End of LoginPage class

// sign user in method
void signUserIn(){}