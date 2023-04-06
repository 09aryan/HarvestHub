// import 'dart:js_util';
// import 'dart:js_util';s

import 'package:flutter/material.dart';
import 'package:foodapp/screens/home/drawer_side.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'dart:ui';

// ignore: camel_case_types
class myProfile extends StatelessWidget {
  // const myProfile({super.key});

  // const myProfile({super.key});
  Widget listTile({required IconData icon, required String title}) {
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 620,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 244, 244),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Aryan Kumar",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("gmail"),
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 12,
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                  ),
                                  backgroundColor:
                                      Color.fromARGB(255, 240, 241, 241),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    listTile(icon: Icons.shop, title: "My orders"),
                    listTile(
                        icon: Icons.location_on_outlined,
                        title: "My Divilery Address"),
                    listTile(
                        icon: Icons.person_outline, title: "Refer a friends"),
                    listTile(
                        icon: Icons.file_copy_outlined,
                        title: "Terms and conditions"),
                    listTile(
                        icon: Icons.policy_outlined, title: "Privacy policy"),
                    listTile(icon: Icons.add_chart, title: "My Chart"),
                    listTile(icon: Icons.exit_to_app_outlined, title: "LogOut"),
                    //  listTile(icon: Icons.shop, title: "My orders"),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.yellow,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/robot-doing-peace-sign_1048-3527.jpg?w=2000'),
                radius: 45,
                backgroundColor: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}
