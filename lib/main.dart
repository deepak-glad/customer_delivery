import 'package:customer_delivery_app/Provider/dateTime_provider.dart';
import 'package:customer_delivery_app/Provider/pickup_model.dart';
import 'package:customer_delivery_app/screen/Login.dart';
import 'package:customer_delivery_app/screen/Sign_vender.dart';
import 'package:customer_delivery_app/screen/delivery_address.dart';
import 'package:customer_delivery_app/screen/home.dart';
import 'package:customer_delivery_app/screen/order_summary.dart';
import 'package:customer_delivery_app/screen/orders.dart';
import 'package:customer_delivery_app/screen/package_Detail.dart';
import 'package:customer_delivery_app/screen/payment_method.dart';
import 'package:customer_delivery_app/screen/pickup_address.dart';
import 'package:customer_delivery_app/screen/profile.dart';
import 'package:customer_delivery_app/screen/saved_address.dart';
import 'package:customer_delivery_app/screen/send_package.dart';
import 'package:customer_delivery_app/screen/wallet.dart';
import 'package:customer_delivery_app/widgets/edit_profile.dart';
import 'package:customer_delivery_app/screen/track_detail.dart';
import 'package:customer_delivery_app/widgets/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/delivery_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: SelectdatetimeProvider()),
        ChangeNotifierProvider.value(value: PickupProvider()),
        ChangeNotifierProvider.value(value: DeliveryProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delivery APP',
        theme: ThemeData(
          primaryColor: Colors.white,
          cardColor: Color.fromRGBO(255, 128, 31, 1),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        home: SplashScreen(),
        routes: {
          SignUpAsVender.routename: (ctx) => SignUpAsVender(),
          HomeScreen.routename: (ctx) => HomeScreen(),
          SendPackage.routeName: (ctx) => SendPackage(),
          PackageDetail.routeName: (ctx) => PackageDetail(),
          PickupAddress.routeName: (ctx) => PickupAddress(),
          DeliveryAddress.routeName: (ctx) => DeliveryAddress(),
          OrderSummary.routeName: (ctx) => OrderSummary(),
          PaymentMethod.routename: (ctx) => PaymentMethod(),
          Profile.routeName: (ctx) => Profile(),
          EditProfile.routeName: (ctx) => EditProfile(),
          YourOrders.routeName: (ctx) => YourOrders(),
          TrackOrders.routeName: (ctx) => TrackOrders(),
          SaveAddress.routeName: (ctx) => SaveAddress(),
          Wallet.routeName: (ctx) => Wallet(),
        },
      ),
    );
  }
}
