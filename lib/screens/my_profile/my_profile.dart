import 'package:flutter/material.dart';
import 'package:foodapp/screens/home/drawer_side.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class myProfile extends StatelessWidget {
  // const myProfile({super.key});

  // const myProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      drawer: DrawerSide(),
    );
  }
}
