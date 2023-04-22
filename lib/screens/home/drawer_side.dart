// import 'dart:html';
// import 'dart:ui';

//import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/auth/sign_in.dart';
import 'package:foodapp/screens/home/home_screen.dart';
import 'package:foodapp/screens/my_profile/my_profile.dart';
import 'package:foodapp/screens/review_cart/review_cart.dart';

class DrawerSide extends StatelessWidget {
  //const DrawerSide({super.key});
  Widget listTile(
      {required IconData icon, required String title, required onTab1}) {
    return ListTile(
      // ignore: prefer_const_constructors
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
      onTap: onTab1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.yellow,
        child: ListView(children: [
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white54,
                  radius: 43,
                  child:
                      CircleAvatar(radius: 40, backgroundColor: Colors.yellow),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Welcome Guest"),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignIn()));
                        },
                        child: Text("Login"),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    side: BorderSide(width: 2)))),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          listTile(
              icon: Icons.home_outlined,
              title: "home",
              onTab1: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              }),
          listTile(
              icon: Icons.person_outline,
              title: "My profile",
              onTab1: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => myProfile()));
              }),
          listTile(
              icon: Icons.notifications_outlined,
              title: "notification",
              onTab1: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => myProfile()));
              }),
          listTile(
              icon: Icons.star_outline,
              title: "rating & complaint",
              onTab1: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => myProfile()));
              }),
          listTile(
              icon: Icons.favorite_outline,
              title: "Review Cart",
              onTab1: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ReviewCart()));
              }),
          listTile(
              icon: Icons.copy_outlined,
              title: "Raise a complaint",
              onTab1: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => myProfile()));
              }),
          listTile(
              icon: Icons.question_answer_outlined,
              title: "FAQS",
              onTab1: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => myProfile()));
              }),
          Container(
            height: 350,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("contact support"),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text("call us:"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("+91 9650845408"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text("Mail us"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("+91 9650845408"),
                  ],
                ),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
