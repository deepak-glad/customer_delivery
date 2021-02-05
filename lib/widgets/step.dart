import 'package:flutter/material.dart';

class StepStepper extends StatefulWidget {
  @override
  _StepStepperState createState() => _StepStepperState();
}

class _StepStepperState extends State<StepStepper> {
  List<Step> steps = [
    Step(
        state: StepState.complete,
        isActive: true,
        title: Text('Pickup request received'),
        content: Text('')),
    Step(title: Text('Partner on the way for pickup'), content: Text('ss')),
    Step(title: Text('Package has been picked up'), content: Text('')),
    Step(
        title: Text('Package arrived at an tempo facility dubai UAE'),
        content: Text('s')),
    Step(
        title: Text('Package arrived at an tempo facility sharjah UAE'),
        content: Text('a')),
    Step(title: Text('out for delivery'), content: Text('')),
    Step(title: Text('Delivered'), content: Text('')),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: 280,
            // height: 500,
            child: Theme(
              data: ThemeData(primaryColor: Colors.deepOrange),
              child: Stepper(
                  steps: steps, physics: const NeverScrollableScrollPhysics()),
            ),
          ),
          Container(
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Theme(
                    data: ThemeData(cardColor: Colors.white),
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Container(
                          width: 50,
                          height: 25,
                          child: Text(
                            "call",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Theme(
                    data: ThemeData(cardColor: Colors.white),
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Container(
                          width: 50,
                          height: 25,
                          child: Text(
                            "call",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
