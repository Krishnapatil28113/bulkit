import 'package:bulkit/features/login/ui/login_screen.dart';
import 'package:bulkit/features/signup/ui/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        'login':(context) => LoginScreen(),
        'signup':(context) => SignUpScreen(),
        // 'home':(context) => HomeScreen(),
        // 'profile':(context) => ProfileScreen()
      },
      home: LoginScreen(),
    );
  }
}