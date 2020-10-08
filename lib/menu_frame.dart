import 'package:flutter/material.dart';
import 'package:sl/create_login.dart';
import 'package:sl/sign_in.dart';
import './home_signin_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './sign_in.dart';

class MenuFrame extends StatelessWidget {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 40),
            child: Column(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.heartBroken,
                  color: Color.fromRGBO(245, 48, 111, 1.0),
                  size: 60.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'CONN',
                      style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(245, 48, 111, 1.0),
                      ),
                    ),
                    Text(
                      'EXION',
                      style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Find and meet people around to find Love',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 85),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: <Widget>[
                      HomeSignInWidget(
                        goToSignIn: () {
                          pageController.animateToPage(1,
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                        },
                        goToSignUp: () {
                          pageController.animateToPage(2,
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                        },
                      ),
                      SignIn(),
                      CreateLogin(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(255, 123, 67, 1.0),
              Color.fromRGBO(245, 50, 111, 1.0),
            ])),
      ),
    );
  }
}
