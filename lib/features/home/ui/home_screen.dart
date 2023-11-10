import 'package:bulkit/utils/color_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: KscaffoldColor,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi,Krishna!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: KscaffoldColor),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.grey.shade500,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.0,),

            Expanded(
              child: Container(
                width: double.infinity,
                color: KcontainerBackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
