import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
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
                      onPressed: () {},
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
