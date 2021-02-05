import 'Sign_vender.dart';
import '../screen/register.dart';
import '../widgets/auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(100)),
                        gradient: LinearGradient(
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [
                              0.0,
                              2.0
                            ],
                            colors: [
                              Colors.deepOrange[500],
                              Colors.orange,
                            ])),
                    child: Image.asset('assets/logo.png'),
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                      margin: const EdgeInsets.all(20),
                      child: Text(
                        !isLogin ? 'Register' : 'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
              if (isLogin) AuthPage(),
              if (!isLogin) RegisterForVender(),
              if (!isLogin)
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignUpAsVender.routename);
                    },
                    child: Text(
                      'Become a Vendor',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )),
              // SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isLogin ? "Don't have account ?" : 'Already have account',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          isLogin = !isLogin;
                        });
                      },
                      child: Text(
                        isLogin ? 'Register' : 'Login',
                        style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
