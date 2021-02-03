import 'package:customer_delivery_app/Provider/pickup_model.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:provider/provider.dart';

class PickupAddress extends StatefulWidget {
  static const routeName = '/pickup-address';

  @override
  _PickupAddressState createState() => _PickupAddressState();
}

class _PickupAddressState extends State<PickupAddress> {
  final _pickupLocation = TextEditingController();
  final _addressDetail = TextEditingController();
  final _pincode = TextEditingController();
  final _instructionToreach = TextEditingController();
  final _contactDetail = TextEditingController();

  _savePick() {
    if (_pickupLocation.text.isEmpty ||
        _addressDetail.text.isEmpty ||
        _pincode.text.isEmpty ||
        _contactDetail.text.isEmpty)
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
    Provider.of<PickupProvider>(context, listen: false).addItems(
        _pickupLocation.text,
        _addressDetail.text,
        _pincode.text,
        _instructionToreach.text,
        _contactDetail.text);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickup Details'),
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
                  'Set Pickup Location :',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).cardColor),
                ),
                TextField(
                    controller: _pickupLocation,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        hintText: 'Pickup location',
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
                    controller: _addressDetail,
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
                    controller: _pincode,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'pincode',
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
                    controller: _instructionToreach,
                    decoration: InputDecoration(
                        hintText: 'Instruction to reach',
                        suffixIcon: Icon(Icons.add_road))),
                SizedBox(height: 10),
                Text(
                  'Pickup contact details:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).cardColor),
                ),
                TextField(
                    controller: _contactDetail,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Pickup contact details',
                        suffixIcon: Icon(Icons.contact_phone))),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: FlatButton(
        color: Theme.of(context).cardColor,
        onPressed: _savePick,
        child: Text(
          'Save',
        ),
      ),
    );
  }
}
