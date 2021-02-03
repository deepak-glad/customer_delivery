import 'package:flutter/material.dart';

class SignUpAsVender extends StatefulWidget {
  static const routename = 'SignUpAsVender-page';
  @override
  _SignUpAsVenderState createState() => _SignUpAsVenderState();
}

class _SignUpAsVenderState extends State<SignUpAsVender> {
  final _formKey = GlobalKey<FormState>();
  var _username = '';
  var _name = '';
  var _lastname = '';
  var _storeName = '';
  var _address = '';
  var _city = '';
  var _country = '';
  var _storePhone = '';
  var _tradeLicenseNumber = '';
  var _expiry = '';
  var _emireteNumber = '';
  var _password = '';
  var _confirmPassword = '';
  var _uploadId = '';
  var _uploadLicenses = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'VENDOR REGISTRATION',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).cardColor,
          iconTheme: IconThemeData(color: Theme.of(context).cardColor),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width - 50,
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.all(Radius.circular(5)),
            //     color: Colors.white10,
            //     boxShadow: [
            //       BoxShadow(
            //         blurRadius: 1.0,
            //         spreadRadius: .5,
            //         color: Colors.grey[300],
            //       )
            //     ]),
            child: Form(
              key: _formKey,
              child: Theme(
                data: ThemeData(primaryColor: Theme.of(context).cardColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('REGISTRATION',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.blue[800],
                          fontWeight: FontWeight.w500,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Email *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
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
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'First Name ',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('first Name'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _name = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'first name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Last name',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('lastName'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _lastname = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Last Name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Store Name *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('storename'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _storeName = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Store Name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Address 1 *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('address1'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _address = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Address1',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Address 2',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('address2'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _address = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Address2',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'City/Town',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('city'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _city = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'City Name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'State/Country',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('state'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _country = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'State name',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Store Phone *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('phone'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _storePhone = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Store Phone number',
                          prefix: Text('+971'),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Trading License Number *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('TradeLicenseNumber'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _tradeLicenseNumber = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Trade Licenses Number',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Trading License Expiry*',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('Trading License Expiry'),
                      validator: (value) {
                        if (value.isEmpty || value.length < 4) {
                          return 'Please enter atleast 4 characters ';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _expiry = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'YYYY-MM-DD',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Emirates ID Number*',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('Number'),
                      onSaved: (value) {
                        _emireteNumber = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Enter Here',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Upload Trade License*',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Upload Emirates ID*',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Password *',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('Password'),
                      onSaved: (value) {
                        _password = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Enter password',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Confirm password*',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextFormField(
                      key: ValueKey('passwordAgain'),
                      onSaved: (value) {
                        _confirmPassword = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Enter Here password',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 15),
                    FlatButton(
                        height: 40,
                        minWidth: MediaQuery.of(context).size.width,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        color: Theme.of(context).cardColor,
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
