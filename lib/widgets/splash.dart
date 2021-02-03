import 'dart:async';
import 'package:customer_delivery_app/screen/Login.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<double> get _height => Future<double>.value(400);
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 2500),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        // AnimatedContainer(
        //   // height: 250,
        //   // color: Colors.yellow,
        //   height: 400,
        //   duration: Duration(seconds: 2),
        // child: Image.asset(
        //   'assets/logo.png',
        //   height: 250,
        // ),
        // ),
        Padding(
            padding: const EdgeInsets.only(bottom: 3.0, right: 1),
            child: FutureBuilder<double>(
                future: _height,
                initialData: 0.0,
                builder: (context, snapshot) {
                  return AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: 200,
                    child: Image.asset(
                      'assets/logo.png',
                      height: 250,
                    ),
                    height: snapshot.data, //voteCountList[0],
                    // decoration: BoxDecoration(
                    //     color: Colors.red,
                    //     borderRadius: BorderRadius.all(Radius.circular(2))),
                  );
                })),
        // Center(
        //     child: Image.asset(
        //   'assets/owl.png',
        //   height: 150,
        // )),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: LinearPercentIndicator(
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 1,
                center: Text("Loading..."),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.orange,
                backgroundColor: Colors.grey,
                // value: 1,
              ),
            ),
            // Text('Loading...')
          ],
        )
        // Column(children: [
        //   Container(
        //       color: Colors.yellow,
        //       height: 15,
        //       margin: EdgeInsets.all(15),
        //       child: Loading(
        //           indicator: BallPulseIndicator(),
        //           size: 100.0,
        //           color: Colors.deepOrange)),
        //   Text('Loading..')
        // ]),
      ]),
    );
  }
}
