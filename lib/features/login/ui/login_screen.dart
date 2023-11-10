import 'package:bulkit/components/lock_icon.dart';
import 'package:bulkit/features/home/ui/home_screen.dart';
import 'package:bulkit/features/signup/ui/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/my_buttons.dart';
import '../../../components/my_text_field.dart';
import '../../../components/square_tile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // @override

  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              LockIcon(),
              SizedBox(
                height: 40,
              ),
              Text('Welcome Back!'),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              SizedBox(
                height: 15,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot Password?'),
                    ),
                  ],
                ),
              ),
              MyButton(
                text: 'Sign In',
                onTap: () {
                  setState(() {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => HomeScreen()));
                  });
                },
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Text('Or Continue with'),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: 'lib/images/google-logo.png',
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SquareTile(
                    imagePath: 'lib/images/apple_logo.png',
                    onTap: () {},
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        // CupertinoPageRoute(builder: (context) => SignUpScreen());
                        Navigator.push(context, CupertinoPageRoute(builder: (context) => SignUpScreen()));
                      });
                    },
                    child: Text('Register here'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
