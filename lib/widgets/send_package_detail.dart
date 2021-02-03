import 'package:customer_delivery_app/screen/delivery_address.dart';
import 'package:customer_delivery_app/screen/package_Detail.dart';
import 'package:customer_delivery_app/screen/pickup_address.dart';
import 'package:flutter/material.dart';

class DetailSend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      margin: const EdgeInsets.only(top: 15),
      child: Container(
        width: MediaQuery.of(context).size.width - 120,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text(
                'Pickup Address',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                'Select PickUp Location',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(PickupAddress.routeName);
              },
            ),
            Divider(color: Colors.black),
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text(
                'Delivery Address',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                'Select delivery Location',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(DeliveryAddress.routeName);
              },
            ),
            Divider(color: Colors.black),
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text(
                'Package Detail',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                'eg: small medium large',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(PackageDetail.routeName);
              },
            ),
            Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
