import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: Colors.black),
      child: Container(
        height: 190,
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.5,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                alignment: Alignment.topRight,
                child: Text(
                  'VISA',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              Text(
                'CARD NUMBER:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              TextField(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Expiry Date',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '22/2021',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Card Holder Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'SUDHIR SINGH',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
