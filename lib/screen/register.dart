import 'package:flutter/material.dart';

class RegisterForVender extends StatefulWidget {
  @override
  _RegisterForVenderState createState() => _RegisterForVenderState();
}

class _RegisterForVenderState extends State<RegisterForVender> {
  final _formKey = GlobalKey<FormState>();

  var _username = '';

  var _passwordI = false;

  var valuefirst = false;

  var _password = '';

  void _trysave() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState.save();
      print(_username);
      print(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Container(
      // height: h < 553 ? h : h / 2 + 20,
      margin: const EdgeInsets.all(15),
      child: Form(
        key: _formKey,
        child: Theme(
          data: ThemeData(primaryColor: Theme.of(context).cardColor),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'CUSTOMER REGISTRATION',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child:
                        Text('Email address *', style: TextStyle(fontSize: 16)),
                  ),
                  TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    key: ValueKey('username'),
                    validator: (value) {
                      if (value.isEmpty || value.length < 4) {
                        return 'Please enter atleast 4 characters ';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _username = value;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'username',
                        prefixIcon: Icon(Icons.person),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text('Password *', style: TextStyle(fontSize: 16)),
                  ),
                  TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    key: ValueKey('password'),
                    validator: (value) {
                      if (value.isEmpty) return 'Please enter password';
                      return null;
                    },
                    onSaved: (value) {
                      _password = value;
                    },
                    obscureText: !_passwordI,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye,
                                color: this._passwordI
                                    ? Colors.blue
                                    : Colors.grey),
                            onPressed: () {
                              setState(
                                  () => this._passwordI = !this._passwordI);
                            }),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                  ),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //       checkColor: Colors.greenAccent,
                  //       activeColor: Colors.blue,
                  //       value: this.valuefirst,
                  //       onChanged: (bool value) {
                  //         setState(() {
                  //           this.valuefirst = value;
                  //         });
                  //       },
                  //     ),
                  //     Text(
                  //       'Remember me!',
                  //       style: TextStyle(fontSize: 17.0),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 15),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [

                  FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      minWidth: MediaQuery.of(context).size.width,
                      height: 40,
                      color: Theme.of(context).cardColor,
                      // hoverColor: Theme.of(context).cardColor,
                      child: Text('REGISTER',
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      onPressed: () {
                        // Navigator.of(context).pushNamed(HomePage.routeName);
                      }),
                  // ],
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
