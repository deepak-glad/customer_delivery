import 'package:flutter/cupertino.dart';

class PickupModel {
  final String pickupLocation;
  final String pickupAddressDetail;
  final String pickupPincode;
  final String pickupInstructiontoReach;
  final String pickupContactDetail;

  PickupModel({
    @required this.pickupLocation,
    @required this.pickupAddressDetail,
    @required this.pickupPincode,
    this.pickupInstructiontoReach,
    @required this.pickupContactDetail,
  });
}

class PickupProvider with ChangeNotifier {
  List<PickupModel> _items = [];
  List<PickupModel> get items {
    return [..._items];
  }

  String plocation;
  String paddress;
  String ppin;
  String pinstruction;
  String pcontact;

  void addItems(
    String pickedLocation,
    String pickedaddress,
    String pickedPin,
    String pickedInstruction,
    String pickedContact,
  ) async {
    final newDataPicked = PickupModel(
        pickupLocation: pickedLocation,
        pickupAddressDetail: pickedaddress,
        pickupPincode: pickedPin,
        pickupContactDetail: pickedContact,
        pickupInstructiontoReach: pickedInstruction);
    print(newDataPicked.pickupAddressDetail);
    plocation = newDataPicked.pickupLocation;
    paddress = newDataPicked.pickupAddressDetail;
    ppin = newDataPicked.pickupPincode;
    pinstruction = newDataPicked.pickupInstructiontoReach;
    _items.add(PickupModel(
        pickupLocation: plocation,
        pickupAddressDetail: paddress,
        pickupPincode: ppin,
        pickupInstructiontoReach: pickedInstruction,
        pickupContactDetail: pcontact));
    notifyListeners();
  }
}
