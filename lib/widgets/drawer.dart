import 'package:customer_delivery_app/screen/home.dart';
import 'package:customer_delivery_app/screen/orders.dart';
import 'package:customer_delivery_app/screen/profile.dart';
import 'package:customer_delivery_app/screen/saved_address.dart';
import 'package:customer_delivery_app/screen/wallet.dart';
import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
                child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(Profile.routeName);
              },
              child: Column(
                children: [
                  CircleAvatar(radius: 50),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Username',
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                ],
              ),
            )),
            // ListTile(
            //   leading: Icon(
            //     Icons.home,
            //     color: Theme.of(context).cardColor,
            //   ),
            //   title: Text('Home'),
            //   subtitle: Text('tap to see home page'),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.of(context).pop();
            //     Navigator.of(context).pop();
            //     Navigator.of(context).pushNamed(HomeScreen.routename);
            //   },
            // ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Theme.of(context).cardColor,
              ),
              title: Text('Profile'),
              subtitle: Text('tap to see more detail'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(Profile.routeName);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).cardColor,
              ),
              title: Text('Your orders'),
              subtitle: Text('tap to see more detail'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(YourOrders.routeName);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.saved_search,
                color: Theme.of(context).cardColor,
              ),
              title: Text('Saved Addresses'),
              subtitle: Text('tap to see more detail'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(SaveAddress.routeName);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.wallet_giftcard,
                color: Theme.of(context).cardColor,
              ),
              title: Text('Wallet'),
              subtitle: Text('tap to see more detail'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(Wallet.routeName);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.insert_invitation_sharp,
                color: Theme.of(context).cardColor,
              ),
              title: Text('invite & referals'),
              subtitle: Text('tap to see more detail'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Theme.of(context).cardColor,
              ),
              title: Text('Logout'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
            SizedBox(height: 15),
            Text('All rights reserve'),
            Text('1.0.02')
          ],
        ),
      ),
    );
  }
}
