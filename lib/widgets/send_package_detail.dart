import 'package:customer_delivery_app/screen/delivery_address.dart';
import 'package:customer_delivery_app/screen/package_Detail.dart';
import 'package:customer_delivery_app/screen/pickup_address.dart';
import 'package:flutter/material.dart';

class DetailSend extends StatefulWidget {
  @override
  _DetailSendState createState() => _DetailSendState();
}

class _DetailSendState extends State<DetailSend> {
  StepperType stepperType = StepperType.vertical;

  int currentStep = 0;
  StepState stat = StepState.indexed;
  bool complet = false;

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  List<Step> steps = [
    Step(
      isActive: true,
      state: StepState.indexed,
      title: Text(
        'Pickup Address',
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
      ),
      content: Text(
        'Select PickUp Location',
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
      ),
    ),
    Step(
      isActive: true,
      state: StepState.indexed,
      title: Text(
        'Delivery Address',
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
      ),
      content: Text(
        'Select delivery Location',
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
      ),
    ),
    Step(
      isActive: true,
      state: StepState.indexed,
      title: Text(
        'Package Detail',
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
      ),
      content: Text(
        'eg: small medium large',
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // var dtaa = Provider.of<DeliveryProvider>(context);
    // print(dtaa.daddress);
    next() {
      // if (dtaa.daddress != null)
      currentStep + 1 != steps.length
          ? goTo(currentStep + 1)
          : setState(() {
              complet = true;
              stat = StepState.complete;
            });
      currentStep == 0
          ? Navigator.of(context).pushNamed(PickupAddress.routeName)
          : currentStep == 1
              ? Navigator.of(context).pushNamed(DeliveryAddress.routeName)
              : Navigator.of(context).pushNamed(PackageDetail.routeName);
    }

    return Container(
      // height: 300,
      // margin: const EdgeInsets.only(top: 15),
      child: Theme(
        data: ThemeData(primaryColor: Colors.deepOrange),
        child: Stepper(
          type: stepperType,
          steps: steps,
          currentStep: currentStep,
          onStepContinue: next,
          onStepTapped: (step) => goTo(step),
          onStepCancel: cancel,
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
