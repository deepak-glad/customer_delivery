import 'package:flutter/cupertino.dart';

class DeliveryModel {
  final String deliveryLocation;
  final String deliveryAddressDetail;
  final String deliveryPincode;
  final String deliveryInstructiontoReach;
  final String deliveryContactDetail;

  DeliveryModel({
    @required this.deliveryLocation,
    @required this.deliveryAddressDetail,
    @required this.deliveryPincode,
    this.deliveryInstructiontoReach,
    @required this.deliveryContactDetail,
  });
}

class DeliveryProvider with ChangeNotifier {
  // List<DeliveryModel> _list = [];
  // List<DeliveryModel> get list {
  //   return [..._list];
  // }

  String dlocation;
  String daddress;
  String dpin;
  String dinstruction;
  String dcontact;

  void addItems(
    String pickedLocation,
    String pickedaddress,
    String pickedPin,
    String pickedInstruction,
    String pickedContact,
  ) async {
    final newDataPicked = DeliveryModel(
        deliveryLocation: pickedLocation,
        deliveryAddressDetail: pickedaddress,
        deliveryPincode: pickedPin,
        deliveryContactDetail: pickedContact,
        deliveryInstructiontoReach: pickedInstruction);
    // print(newDataPicked.deliveryPincode);
    dlocation = newDataPicked.deliveryLocation;
    daddress = newDataPicked.deliveryAddressDetail;
    dpin = newDataPicked.deliveryPincode;
    dinstruction = newDataPicked.deliveryInstructiontoReach;
    dcontact = newDataPicked.deliveryContactDetail;
  }
  // void add(_list){
  //     DeliveryModel(deliveryAddressDetail: )
  // }
}
