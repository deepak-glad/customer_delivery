import 'package:customer_delivery_app/Provider/dateTime_provider.dart';
import 'package:customer_delivery_app/Provider/delivery_provider.dart';
import 'package:customer_delivery_app/Provider/pickup_model.dart';
import 'package:customer_delivery_app/screen/payment_method.dart';
import 'package:customer_delivery_app/screen/pickup_address.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderSummary extends StatelessWidget {
  static const routeName = '/summary-Page';
  @override
  Widget build(BuildContext context) {
    // var data = Provider.of<SelectdatetimeProvider>(context, listen: false);
    var data1 = Provider.of<PickupProvider>(context, listen: false);
    var data2 = Provider.of<DeliveryProvider>(context, listen: false);
    var route = ModalRoute.of(context).settings.arguments as String;
    _box(
      String addresshead,
      String location,
      String locationinfo,
      String addressDetil,
      String addressinfo,
      String pincode,
      String pininfo,
      String instruction,
      String instructioninfo,
      String contact,
      String contactInfo,
    ) {
      return Container(
        // height: 150,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey)]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                addresshead,
                style: TextStyle(
                    fontSize: 22,
                    color: Theme.of(context).cardColor,
                    fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'edit',
                    style: TextStyle(fontSize: 17),
                  ))
            ],
          ),
          SizedBox(height: 10),
          Text(
            location,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.deepOrange),
              Flexible(
                child: Text(
                  locationinfo,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Text(
            addressDetil,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.deepOrange),
              Flexible(
                child: Text(
                  addressinfo,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Text(
            pincode,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.deepOrange),
              Flexible(
                child: Text(
                  pininfo,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Text(
            instruction,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.deepOrange),
              Flexible(
                child: Text(
                  instructioninfo,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Text(
            contact,
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.deepOrange),
              Flexible(
                child: Text(
                  contactInfo,
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ]),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Order Summary'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(children: [
            // if (data.date != null) Text(data.date),
            // if (data.time != null) Text(data.time),
            // if (data1.ppin != null) Text(data1.ppin),
            // if (data2.dpin != null) Text(data2.dpin),
            // Text('d'),

            Consumer<SelectdatetimeProvider>(builder: (context, value, _) {
              if (value != null && route == 'schedule')
                return Container(
                  // height: 150,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.grey)]),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your scheduled pickup time is:',
                          style: TextStyle(
                              fontSize: 22,
                              color: Theme.of(context).cardColor,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Date:',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                value.date,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Time:',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              value.time,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ]),
                );
              return Container();
            }),
            // if (data != null && route == 'schedule')
            //   data == null
            //       ? null
            //       : Container(
            //           // height: 150,
            //           width: MediaQuery.of(context).size.width,
            //           margin: const EdgeInsets.all(8),
            //           padding: const EdgeInsets.all(8),
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(15),
            //               color: Colors.white,
            //               boxShadow: [BoxShadow(color: Colors.grey)]),
            //           child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Your scheduled pickup time is:',
            //                   style: TextStyle(
            //                       fontSize: 22,
            //                       color: Theme.of(context).cardColor,
            //                       fontWeight: FontWeight.w500),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 8.0),
            //                   child: Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                         'Date:',
            //                         style: TextStyle(
            //                             fontSize: 17,
            //                             fontWeight: FontWeight.w400),
            //                       ),
            //                       Text(
            //                         data != null ? data.date : null,
            //                         style: TextStyle(
            //                             fontSize: 17,
            //                             fontWeight: FontWeight.w400),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Text(
            //                       'Time:',
            //                       style: TextStyle(
            //                           fontSize: 17,
            //                           fontWeight: FontWeight.w400),
            //                     ),
            //                     Text(
            //                       data != null ? data.time : null,
            //                       style: TextStyle(
            //                           fontSize: 17,
            //                           fontWeight: FontWeight.w400),
            //                     )
            //                   ],
            //                 ),
            //               ]),
            //         ),
            _box(
              'Pickup Address',
              'Pickup location',
              'Dubai is a city and emirate in the United Arab Emirates',
              'Address Detail',
              'Dubai is a city and emirate in the United Arab Emirates',
              'Pincode',
              '550050',
              'Instruction to reach location',
              'instructioninfo',
              'Pickup contact detail',
              '5269562962',
            ),
            _box(
              'Delivery Address',
              'Delivery location',
              'Dubai is a city and emirate in the United Arab Emirates',
              'Address Detail',
              'Dubai is a city and emirate in the United Arab Emirates',
              'Pincode',
              '550050',
              'Instruction to reach location',
              'instruction  info',
              'Pickup contact detail',
              '85269562962',
            ),
            Container(
              // height: 150,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.grey)]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Package Detail',
                      style: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).cardColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Product sized',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'small',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '       \$ 45',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select item category-',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Books Documents Files',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ]),
            ),
            // Text('please proceed further'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(PaymentMethod.routename);
              },
              child: Text('Pay now'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepOrange),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
