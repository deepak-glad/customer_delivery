import 'package:flutter/cupertino.dart';

class SelectedDateTime {
  final String date;
  final String time;
  SelectedDateTime({@required this.date, @required this.time});
}

class SelectdatetimeProvider with ChangeNotifier {
  String date;
  String time;

  void additems(String datePicker, String timePicker) {
    final newData = SelectedDateTime(date: datePicker, time: timePicker);
    date = datePicker;
    time = timePicker;
    // print(datePicker);
    // print(timePicker);
    // print(date);
    // print(newData.date);
    notifyListeners();
  }
}
