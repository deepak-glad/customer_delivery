import 'package:customer_delivery_app/Provider/dateTime_provider.dart';
import 'package:customer_delivery_app/screen/order_summary.dart';
import 'package:customer_delivery_app/widgets/drawer.dart';
import 'package:customer_delivery_app/widgets/send_package_detail.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class SendPackage extends StatefulWidget {
  static const routeName = 'send-packages';

  @override
  _SendPackageState createState() => _SendPackageState();
}

class _SendPackageState extends State<SendPackage> {
  double _height;
  double _width;
  String _setTime, _setDate;
  String _hour, _minute, _time;
  String dateTime;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        dateController.text = DateFormat.yMd().format(selectedDate);
      });
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null)
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = _hour + ' : ' + _minute;
        timeController.text = _time;
        timeController.text = formatDate(
            DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
            [hh, ':', nn, " ", am]).toString();
      });
  }

  Future<Null> _trySave() async {
    final String date = dateController.text;
    final String time = timeController.text;

    _selectDate(context);
    _selectTime(context);
    if (dateController.text.isNotEmpty || timeController.text.isNotEmpty)
      Navigator.of(context)
          .pushNamed(OrderSummary.routeName, arguments: 'schedule');
    return Provider.of<SelectdatetimeProvider>(context, listen: false)
        .additems(date, time);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Send Packages',
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
          height: 800,
          padding: const EdgeInsets.only(left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailSend(),
              Container(
                width: MediaQuery.of(context).size.width - 70,
                child: Theme(
                  data: ThemeData(primaryColor: Colors.deepOrange),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Add Instrunction if any',
                        suffixIcon: Icon(Icons.edit)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Payment Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Delivery charge:'), Text("\₹ 45")],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Amount payable:'), Text("\₹ 45")],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15)),
              // ignore: deprecated_member_use
              child: FlatButton(
                  padding: const EdgeInsets.all(10),
                  height: 40,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  minWidth: MediaQuery.of(context).size.width / 2 - 30,
                  color: Theme.of(context).primaryColor,
                  child: Text('Schedule',
                      style: TextStyle(
                          color: Theme.of(context).cardColor, fontSize: 22)),
                  onPressed: _trySave),
            ),
            // ignore: deprecated_member_use
            FlatButton(
                padding: const EdgeInsets.all(10),
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                minWidth: MediaQuery.of(context).size.width / 2 - 20,
                color: Theme.of(context).cardColor,
                child: Text('Pick Up Now',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 22)),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(OrderSummary.routeName, arguments: 'pick');
                }),
          ],
        ),
      ),
    );
  }
}
