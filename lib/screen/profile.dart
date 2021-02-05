import 'package:customer_delivery_app/widgets/drawer.dart';
import 'package:customer_delivery_app/widgets/edit_profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawerwidget(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(EditProfile.routeName);
              },
              child: Text(
                'EDIT',
                style:
                    TextStyle(fontSize: 17, color: Theme.of(context).cardColor),
              )),
        ],
        iconTheme: IconThemeData(color: Theme.of(context).cardColor),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(radius: 60),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Deepak',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text('945052585')
                  ],
                ),
              ),
              Text('Gender'),
              Text(
                'MALE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              Text('Date of Birth'),
              Text(
                '15 Oct 1999',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              Text('Email ID'),
              Text(
                'deepakyadav1025@gmail.com',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              Text('Password'),
              Text(
                '************',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              Text('Address'),
              Text(
                '005 tempo facility sharjah UAE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
