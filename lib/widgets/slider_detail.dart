import 'package:flutter/material.dart';

class SliderDetail extends StatelessWidget {
  final int orderNumber;
  SliderDetail(this.orderNumber);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Banglore to Manglore',
                style: TextStyle(
                    fontSize: 15, color: Theme.of(context).primaryColor),
              ),
              Text(
                'Order ID: $orderNumber',
                style: TextStyle(
                    fontSize: 15, color: Theme.of(context).primaryColor),
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Order in process',
            style: TextStyle(fontSize: 20, color: Colors.yellow),
          ),
          SizedBox(height: 8),
          Text(
            'Package arrived at expo Facility',
            overflow: TextOverflow.visible,
            style:
                TextStyle(fontSize: 15, color: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}
