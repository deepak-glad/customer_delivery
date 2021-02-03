import 'package:customer_delivery_app/widgets/packagedetail_item.dart';
import 'package:flutter/material.dart';

class PackageDetail extends StatefulWidget {
  static const routeName = 'package-Detail';
  @override
  _PackageDetailState createState() => _PackageDetailState();
}

class _PackageDetailState extends State<PackageDetail> {
  List<Widget> items = [
    PAckageDetailItems(),
  ];

  _addPackage() {
    setState(() {
      items.add(PAckageDetailItems());
    });
  }

  _removePackage() {
    setState(() {
      items.removeAt(1);
    });
  }

  _trysave() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package Detail'),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'HELP',
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // PAckageDetailItems(),
            // ListView.builder(itemCount: items.length,itemBuilder: (context,index){return Container(child: items,);),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items,
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (items.length > 1)
                    FloatingActionButton(
                      // style: ButtonStyle(
                      //     backgroundColor:
                      //         MaterialStateProperty.all<Color>(Colors.red)),
                      backgroundColor: Colors.red,
                      onPressed: () {
                        _removePackage();
                      },
                      child: Icon(Icons.delete),
                    ),
                  SizedBox(height: 10),
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
                        minWidth: MediaQuery.of(context).size.width,
                        color: Theme.of(context).primaryColor,
                        child: Text('Add another Package',
                            style: TextStyle(
                                color: Theme.of(context).cardColor,
                                fontSize: 22)),
                        onPressed: () {
                          _addPackage();
                        }),
                  ),
                  SizedBox(height: 10),
                  // ignore: deprecated_member_use
                  FlatButton(
                    padding: const EdgeInsets.all(10),
                    height: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    minWidth: MediaQuery.of(context).size.width,
                    color: Theme.of(context).cardColor,
                    child: Text('Next',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 22)),
                    onPressed: _trysave,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
