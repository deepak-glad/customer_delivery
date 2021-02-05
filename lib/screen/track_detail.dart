import 'package:customer_delivery_app/widgets/step.dart';
import 'package:flutter/material.dart';

class TrackOrders extends StatelessWidget {
  static const routeName = '/track-orders';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track'),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'HELP',
                style: TextStyle(color: Theme.of(context).cardColor),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Column(
                children: [
                  Text(
                    'Order in progress',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Order ID:56226'),
                  ),
                ],
              ),
              Column(children: [
                Text(
                  'Order date',
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('May 15,15:03')),
              ]),
            ]),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Bangalore #104,11003,17 main road 24th cross road main gate in Marathahalli-Sarjapur Outer Ring Road, Adarsh Palm Retreat, Bellandur',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textHeightBehavior: TextHeightBehavior(
                    applyHeightToFirstAscent: true,
                    applyHeightToLastDescent: false),
              ),
            ),
            Text('Shreyansh 70145282588'),
            SizedBox(height: 10),
            StepStepper(),
            Text(
              'Bangalore #104,11003,17 main road 24th cross road main gate in Marathahalli-Sarjapur Outer Ring Road, Adarsh Palm Retreat, Bellandur',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Shram: 87052085102'),
            ),
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              // margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 0.9)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Package details',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Medium Package      X 1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Laptop,Mobile and Charger cable'),
                  )
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 0.9)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Receipt details',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 15),
                  ListTile(
                    minLeadingWidth: 100,
                    title: Text('Deepak kumar'),
                    leading: Text('Name:'),
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    // minVerticalPadding: -1,
                    title: Text(
                        'Dubai is a city and emirate in the United Arab Emirates'),
                    leading: Text('ADDRESS : '),
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    title: Text('Instruction'),
                    leading: Text('Instruction:'),
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    title: Text('85294651248'),
                    leading: Text('Contact Number:'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey[400], blurRadius: 0.9)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sender details',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 15),
                  ListTile(
                    minLeadingWidth: 100,
                    title: Text('Nitesh kumar'),
                    leading: Text('Name:'),
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    // minVerticalPadding: -1,
                    title: Text(
                        'Dubai is a city and emirate in the United Arab Emirates'),
                    leading: Text('ADDRESS : '),
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    title: Text('Instruction'),
                    leading: Text('Instruction:'),
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    title: Text('85294651248'),
                    leading: Text('Contact Number:'),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
