import 'package:customer_delivery_app/screen/status_payment.dart';
import 'package:customer_delivery_app/widgets/card.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  static const routename = '/payment-method';

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool isExpanded = false;
  bool isNetBanking = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Select Payment option'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Another payment method',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1.5)]),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.credit_card_sharp),
                    title: Text(
                      'Add Card',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('credit or debit'),
                    trailing: isExpanded
                        ? Icon(Icons.arrow_circle_up)
                        : Icon(Icons.arrow_circle_down),
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                  ),
                  if (isExpanded) AddCard(),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 1.5)
                ]),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.money),
                      title: Text(
                        'Net Banking',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('credit or debit'),
                      trailing: isNetBanking
                          ? Icon(Icons.arrow_circle_up)
                          : Icon(Icons.arrow_circle_down),
                      onTap: () {
                        setState(() {
                          isNetBanking = !isNetBanking;
                        });
                      },
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 1.5)
                ]),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.pages),
                      title: Text(
                        'Cash Delivery',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'Due to high demand and to ensure social distancing, Pay on Delivery is not available.'),
                      trailing: isNetBanking
                          ? Icon(Icons.arrow_circle_up)
                          : Icon(Icons.arrow_circle_down),
                      onTap: () {
                        setState(() {
                          isNetBanking = !isNetBanking;
                        });
                      },
                    ),
                  ],
                )),
          ],
        ),
      ),
      bottomSheet: FlatButton(
          height: 40,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          minWidth: MediaQuery.of(context).size.width,
          color: Theme.of(context).cardColor,
          child:
              Text('Pay', style: TextStyle(color: Colors.white, fontSize: 22)),
          onPressed: () {
            Navigator.of(context).pushNamed(PaymentStatus.routeName);
          }),
    );
  }
}
