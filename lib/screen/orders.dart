import 'package:customer_delivery_app/widgets/drawer.dart';
import 'package:customer_delivery_app/screen/track_detail.dart';
import 'package:flutter/material.dart';

class YourOrders extends StatelessWidget {
  static const routeName = 'your-orders';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Your Orders',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Help',
                style:
                    TextStyle(fontSize: 17, color: Theme.of(context).cardColor),
              )),
        ],
        iconTheme: IconThemeData(color: Theme.of(context).cardColor),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              ListTile(
                  minLeadingWidth: 80,
                  leading: Image.asset('assets/food.jpg',
                      width: 90, fit: BoxFit.fill),
                  subtitle: Text('approx delivery at 06-jan-2021'),
                  title: Text('Food Items'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pushNamed(TrackOrders.routeName);
                  }),
              ListTile(
                minLeadingWidth: 80,
                leading: Image.asset('assets/clothes.jpg',
                    width: 90, fit: BoxFit.fill),
                subtitle: Text('Delivered at 12-jun-2021'),
                title: Text('Clothes and more'),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                minLeadingWidth: 80,
                leading: Image.asset('assets/gadgets.jpg',
                    width: 90, fit: BoxFit.fill),
                subtitle: Text('Delivered at 30-mar-2021'),
                title: Text('Mobile and accessory Gadgets'),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                minLeadingWidth: 80,
                leading:
                    Image.asset('assets/owl.png', width: 90, fit: BoxFit.fill),
                subtitle: Text('Delivered at 06-jan-2021'),
                title: Text('other Items'),
                trailing: Icon(Icons.arrow_right),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
