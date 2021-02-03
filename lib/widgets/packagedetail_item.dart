import 'package:flutter/material.dart';

class PAckageDetailItems extends StatefulWidget {
  @override
  _PAckageDetailItemsState createState() => _PAckageDetailItemsState();
}

class _PAckageDetailItemsState extends State<PAckageDetailItems> {
  final _otherItems = TextEditingController();
  var isSelected;
  var bookODoc = false;
  var clothes = false;
  var food = false;
  var gadgets = false;
  var medicine = false;
  var valuables = false;
  @override
  void initState() {
    isSelected = [true, false, false];
    super.initState();
  }

  _category(String name, Widget checkbox) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          checkbox,
          Text(
            name,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'Select the corresponding size of your percel',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    isSelected[0]
                        ? 'assets/small.jpg'
                        : isSelected[1]
                            ? 'assets/medium.jpg'
                            : 'assets/mobile.png',
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                ),
                Container(
                  // margin: const EdgeInsets.only(right: 35, top: 10),
                  // alignment: Alignment.topLeft,
                  // color: Colors.yellow,
                  margin: const EdgeInsets.all(15),
                  child: Text(
                    isSelected[0]
                        ? 'Size as about 5 KG'
                        : isSelected[1]
                            ? 'Weight between 5 KG to 15 KG'
                            : 'Weight above 15 kG ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            ToggleButtons(
                direction: Axis.vertical,
                textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                color: Colors.black,
                fillColor: Theme.of(context).cardColor,
                selectedColor: Theme.of(context).primaryColor,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Small'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Medium'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Large'),
                  )
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = i == index;
                    }
                  });
                },
                isSelected: isSelected)
          ],
        ),
        SizedBox(height: 12),
        Text(
          'Select item category',
          style: TextStyle(fontSize: 18),
        ),
        _category(
          'Books Documents Files',
          Checkbox(
              activeColor: Theme.of(context).cardColor,
              value: bookODoc,
              onChanged: (bool value) {
                setState(() {
                  bookODoc = value;
                });
              }),
        ),
        _category(
          'Clothes and Accessories',
          Checkbox(
              activeColor: Theme.of(context).cardColor,
              value: this.clothes,
              onChanged: (bool value) {
                setState(() {
                  clothes = value;
                });
              }),
        ),
        _category(
          'Food items',
          Checkbox(
              activeColor: Theme.of(context).cardColor,
              value: this.food,
              onChanged: (bool value) {
                setState(() {
                  this.food = value;
                });
              }),
        ),
        _category(
          'Laptop mobiles other gadgets',
          Checkbox(
              activeColor: Theme.of(context).cardColor,
              value: this.gadgets,
              onChanged: (bool value) {
                setState(() {
                  this.gadgets = value;
                });
              }),
        ),
        _category(
          'Medicine',
          Checkbox(
              activeColor: Theme.of(context).cardColor,
              value: this.medicine,
              onChanged: (bool value) {
                setState(() {
                  this.medicine = value;
                });
              }),
        ),
        _category(
          'Jewellery, other valuables',
          Checkbox(
              activeColor: Theme.of(context).cardColor,
              value: this.valuables,
              onChanged: (bool value) {
                setState(() {
                  this.valuables = value;
                });
              }),
        ),
        SizedBox(height: 10),
        Theme(
          data: ThemeData(primaryColor: Colors.black),
          child: TextField(
            controller: _otherItems,
            decoration: InputDecoration(
                hintText: 'Other items not listed here',
                suffixIcon: Icon(Icons.edit)),
          ),
        ),
      ]),
    );
  }
}
