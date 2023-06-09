import 'package:flutter/material.dart';
import 'package:simple_login/components/custom_button.dart';
import 'package:simple_login/components/square_tile.dart';
import 'package:simple_login/components/textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 35,
                ),
                // Icon at the top
                const Icon(
                  Icons.person_pin,
                  size: 125,
                ),
                const SizedBox(
                  height: 25,
                ),
                // Text
                Text(
                  'Welcome Back to our app',
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 22),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Textfields
                CustomTextField(
                  hintText: 'Enter username',
                  obscureText: false,
                  controller: usernameController,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: 'Password',
                  controller: passwordController,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                // Forgot passowrd
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                  onTap: signUserIn,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SquareTile(
                      imagePath: 'assets/google.png',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SquareTile(
                      imagePath: 'assets/apple.png',
                    )
                  ],
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not yet a member? ', style: TextStyle(color: Colors.grey[700]),),
                    const Text('Register Now!', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),)
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
