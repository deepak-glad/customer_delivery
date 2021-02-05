import 'package:flutter/material.dart';

class SaveAddress extends StatelessWidget {
  static const routeName = '/saved-address';

  @override
  Widget build(BuildContext context) {
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
        title: Text('Your Saved Address'),
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
          child: Column(
            children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
