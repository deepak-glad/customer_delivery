import 'dart:io';
import 'package:customer_delivery_app/widgets/gender.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  static const routeName = '/edit-profile';

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _titleController = TextEditingController();
  final _mobileNumber = TextEditingController();
  final _email = TextEditingController();
  final _bd = TextEditingController();
  final _alternateno = TextEditingController();
  File _pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Theme.of(context).cardColor),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'HELP',
                style:
                    TextStyle(fontSize: 17, color: Theme.of(context).cardColor),
              )),
        ],
        iconTheme: IconThemeData(color: Theme.of(context).cardColor),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child:Theme(
          data:ThemeData(primaryColor: Colors.deepOrange),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Stack(children: [
                      Container(
                        child: CircleAvatar(radius: 50),
                        height: 130,
                        width: double.infinity,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.topLeft,
                                colors: [
                              Colors.orange[100],
                              Colors.deepOrange[300]
                            ])),
                      ),
                    ]),
                    SizedBox(height: 20),
                    Container(
                      width: 350,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.confirmation_number),
                          labelText: 'Mobile Number',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                        controller: _mobileNumber,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 350,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Title',
                          icon: Icon(Icons.perm_camera_mic),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
                        controller: _titleController,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 350,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          icon: Icon(Icons.email),
                        ),
                        controller: _email,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: 300,
                      child: GenderSelector(),
                      margin: EdgeInsets.only(left: 25),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 350,
                      child: TextField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            labelText: 'BirthDay',
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            icon: Icon(Icons.data_usage),
                          ),
                          controller: _bd),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 255,
                      child: Text(
                        'ALERTNATE MOBILE NUMBER',
                        // style: TextStyle(),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 350,
                      child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'ALERTNATE MOBILE NUMBER',
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            icon: Icon(Icons.confirmation_num),
                          ),
                          controller: _alternateno),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 10,
              color: Colors.black,
            ),
            Container(
              width: 300,
              margin: EdgeInsets.all(20),
              child: RaisedButton.icon(
                icon: Icon(
                  Icons.add,
                  color: Theme.of(context).canvasColor,
                ),
                label: Text(
                  'SAVE DETAILS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).canvasColor,
                  ),
                ),
                onPressed: () {},
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                color: Theme.of(context).cardColor,
              ),
            ),
          ],
        ),)
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:shop_app2/models/image.dart';
// import 'dart:io';
// import 'package:provider/provider.dart';
// import 'package:shop_app2/widgets/custom_radio.dart';
// import '../provider/profile_provider.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';

// class Personal extends StatefulWidget {
//   static const routeName = '/personal-information';

//   @override
//   _PersonalState createState() => _PersonalState();
// }

// class _PersonalState extends State<Personal> {

//   void _selectImage(File pickedImage) {
//     _pickedImage = pickedImage;
//   }

//   _savePlace() {
//     if (_titleController.text.isEmpty ||
//         _pickedImage == null ||
//         _mobileNumber.text.isEmpty) {
//       // return print('ff');
//       return Alert(
//         context: context,
//         type: AlertType.error,
//         title: "ERROR",
//         desc: "PLEASE ENTER FULL DETAILS.",
//         buttons: [
//           DialogButton(
//               child: Text(
//                 "BACK",
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               })
//         ],
//       ).show();
//     }
//     Provider.of<ProfilePhoto>(context, listen: false)
//         .addItems(_titleController.text, _pickedImage);
//     Navigator.of(context).pop();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         title: Text(
//           'Add Profile',
//           style: TextStyle(color: Theme.of(context).primaryColor),
//         ),
//         backgroundColor: Theme.of(context).canvasColor,
//       ),
//       body:
//     );
//   }
// }
