import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              child: Column(
            children: [
              CircleAvatar(radius: 50),
              Text(
                'Username',
                style: TextStyle(fontSize: 17),
              )
            ],
          )),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Theme.of(context).cardColor,
            ),
            title: Text('Profile'),
            subtitle: Text('tap to see more detail'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).cardColor,
            ),
            title: Text('Your orders'),
            subtitle: Text('tap to see more detail'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.saved_search,
              color: Theme.of(context).cardColor,
            ),
            title: Text('Saved Addresses'),
            subtitle: Text('tap to see more detail'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.wallet_giftcard,
              color: Theme.of(context).cardColor,
            ),
            title: Text('Wallet'),
            subtitle: Text('tap to see more detail'),
            onTap: () {},
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
          Text('All right reserves'),
          Text('1.0.02')
        ],
      ),
    );
  }
}
