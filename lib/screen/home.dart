import 'package:carousel_slider/carousel_slider.dart';
import 'package:customer_delivery_app/screen/send_package.dart';
import 'package:customer_delivery_app/widgets/drawer.dart';
import 'package:customer_delivery_app/widgets/slider_detail.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routename = 'omescreen';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).cardColor,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'HELP',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ))
        ],
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      drawer: Drawerwidget(),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(250),
                bottomRight: Radius.circular(250)),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 3)
            ]),
        height: size.height / 2 + 50,
        width: size.width,
        child: Column(
          children: [
            Container(
              height: size.height / 3 - 20,
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: ListTile(
                // contentPadding: const EdgeInsets.all(70),
                title: Text('Tempo Delivery',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).cardColor)),
                subtitle: Text(
                  'Connecting Lives',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Theme.of(context).cardColor),
                ),
              ),
            ),
            // ignore: deprecated_member_use
            FlatButton(
                padding: const EdgeInsets.all(10),
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                minWidth: size.width - 60,
                color: Theme.of(context).primaryColor,
                child: Text('Start Sending Packages',
                    style: TextStyle(
                        color: Theme.of(context).cardColor, fontSize: 22)),
                onPressed: () {
                  Navigator.of(context).pushNamed(SendPackage.routeName);
                }),
          ],
        ),
      ),
      bottomSheet: CarouselSlider(
        options: CarouselOptions(
            enlargeCenterPage: true,
            pauseAutoPlayOnTouch: true,
            autoPlayCurve: Curves.easeInBack,
            autoPlay: true,
            height: 190.0),
        items: [1, 2, 3].map((e) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: size.width,
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(30),
                      // color: Colors.grey[100],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            spreadRadius: 1.5)
                      ]),
                  child: SliderDetail(e));
            },
          );
        }).toList(),
      ),
    );
  }
}
