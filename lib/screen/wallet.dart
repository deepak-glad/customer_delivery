import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  static const routeName = '/wallet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My E-Wallet'),
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: () {})
          ],
          iconTheme: IconThemeData(color: Colors.deepOrange),
        ),
        body: SingleChildScrollView(
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 210,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [Colors.deepOrange, Colors.blueGrey]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/credit.png', height: 90),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Total Balance',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Text(
                      '\₹ 123',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 22),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.payment_outlined),
                title: Text('Amount Deducted'),
                subtitle: Text('Payment for previous delivery'),
                trailing: Text('-\₹ 80',
                    style: TextStyle(color: Colors.red, fontSize: 22)),
              ),
              ListTile(
                leading: Icon(Icons.payments_outlined),
                title: Text('Amount credited'),
                subtitle: Text('Payment for previous delivery'),
                trailing: Text('\₹ 80',
                    style: TextStyle(color: Colors.green, fontSize: 22)),
              ),
              ListTile(
                leading: Icon(Icons.payment_outlined),
                title: Text('Amount Deducted'),
                subtitle: Text('Payment for previous delivery'),
                trailing: Text('-\₹ 120',
                    style: TextStyle(color: Colors.red, fontSize: 22)),
              ),
              ListTile(
                leading: Icon(Icons.payment_outlined),
                title: Text('Amount Deducted'),
                subtitle: Text('Payment for previous delivery'),
                trailing: Text('-\₹ 500',
                    style: TextStyle(color: Colors.red, fontSize: 22)),
              ),
              ListTile(
                leading: Icon(Icons.payments_outlined),
                title: Text('Amount credited'),
                subtitle: Text('Payment for previous delivery'),
                trailing: Text('\₹ 508',
                    style: TextStyle(color: Colors.green, fontSize: 22)),
              ),
              ListTile(
                leading: Icon(Icons.payment_outlined),
                title: Text('Amount Credited'),
                subtitle: Text('Payment for previous delivery'),
                trailing: Text('\₹ 80',
                    style: TextStyle(color: Colors.green, fontSize: 22)),
              ),
            ]),
          ),
        ));
  }
}
