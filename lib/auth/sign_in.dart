import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:foodapp/providers/user_provider.dart';
import 'package:foodapp/screens/home/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'dart:ui';

import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late UserProvider userProvider;
  _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      userProvider.addUserData(
        currentUser: user!,
        userEmail: user.email!,
        userImage: user.photoURL!,
        userName: user.displayName!,
      );

      return user;
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/fd2.jpeg'))),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 400,
            width: double.infinity,
            //  color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("sign to contimue"),
                Text(
                  'Vegi',
                  style:
                      TextStyle(fontSize: 100, color: Colors.white, shadows: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color.fromARGB(255, 4, 85, 10),
                      offset: Offset(3, 3),
                    )
                  ]),
                ),

// with custom text
                Column(
                  children: [
                    SignInButton(
                      Buttons.Google,
                      text: "Sign up with Google Id",
                      onPressed: () {
                        _googleSignUp().then((value) => Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(
                                builder: (context) => const HomeScreen())));
                      },
                    ),
                    SignInButton(
                      Buttons.Apple,
                      text: "Sign up with Apple Id",
                      onPressed: () {},
                    )
                  ],
                ),

                Column(
                  children: [
                    Text(
                      'By signing in you are ageering to our',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                    Text(
                      'Terms and Pricacy Policy',
                      style: TextStyle(color: Colors.grey[800]),
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
