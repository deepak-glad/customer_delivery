import 'package:customer_delivery_app/Provider/delivery_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DeliveryAddress extends StatefulWidget {
  static const routeName = '/delivery_address';

  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  final _deliveryLocation = TextEditingController();
  final _deliveryaddressDetail = TextEditingController();
  final _deliverypincode = TextEditingController();
  final _deliveryinstructionToreach = TextEditingController();
  final _deliverycontactDetail = TextEditingController();

  _save() {
    if (_deliveryLocation.text.isEmpty ||
        _deliveryaddressDetail.text.isEmpty ||
        _deliverypincode.text.isEmpty ||
        _deliverycontactDetail.text.isEmpty)
      return Alert(
        context: context,
        type: AlertType.error,
        title: "ERROR",
        desc: "PLEASE ENTER FULL DETAILS.",
        buttons: [
          DialogButton(
              child: Text(
                "BACK",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      ).show();
    Provider.of<DeliveryProvider>(context, listen: false).addItems(
        _deliveryLocation.text,
        _deliveryaddressDetail.text,
        _deliverypincode.text,
        _deliveryinstructionToreach.text,
        _deliverycontactDetail.text);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Address'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(8),
          child: Theme(
            data: ThemeData(primaryColor: Colors.black),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Set Delivery Location :',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).cardColor),
                ),
                TextField(
                    controller: _deliveryLocation,
                    onSubmitted: (value) {},
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: 'Delivery location',
                        suffixIcon: Icon(Icons.location_on))),
                SizedBox(height: 10),
                Text(
                  'Address Detail:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).cardColor),
                ),
                TextField(
                    controller: _deliveryaddressDetail,
                    decoration: InputDecoration(
                        hintText: 'Address detail',
                        suffixIcon: Icon(Icons.home))),
                SizedBox(height: 10),
                Text(
                  'Pin code:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).cardColor),
                ),
                TextField(
                    controller: _deliverypincode,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Pincode',
                        suffixIcon: Icon(Icons.location_city))),
                SizedBox(height: 10),
                Text(
                  'Instruction to reach location:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).cardColor),
                ),
                TextField(
                    controller: _deliveryinstructionToreach,
                    decoration: InputDecoration(
                        hintText: 'Instruction to reach',
                        suffixIcon: Icon(Icons.add_road))),
                SizedBox(height: 10),
                Text(
                  'Delivery contact details:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).cardColor),
                ),
                TextField(
                    controller: _deliverycontactDetail,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Delivery contact details',
                        suffixIcon: Icon(Icons.contact_phone))),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: FlatButton(
        color: Theme.of(context).cardColor,
        onPressed: _save,
        child: Text(
          'Save',
        ),
      ),
    );
  }
}
