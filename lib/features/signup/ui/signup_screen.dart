import 'package:bulkit/components/lock_icon.dart';
import 'package:bulkit/components/my_buttons.dart';
import 'package:bulkit/components/my_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/square_tile.dart';
import '../../home/ui/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // @override

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmPasswordController =
      new TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              LockIcon(),
              SizedBox(
                height: 40,
              ),
              Text("Let's create you an account!"),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextField(
                        controller: passwordController,
                        hintText: 'Password',
                        obscureText: true),
                    SizedBox(
                      height: 15,
                    ),
                    MyTextField(
                      controller: confirmPasswordController,
                      hintText: 'Confirm Password',
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
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        });
                      },
                      text: "Sign Up",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                          color: Colors.grey.shade400,
                        )),
                        Text('Or Continue with'),
                        Expanded(child: Divider())
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
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Text('Login Here'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
