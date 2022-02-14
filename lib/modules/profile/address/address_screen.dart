import 'package:e_commerce_app/modules/profile/address/add_address/add_address_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffEFE6E9),
        centerTitle: true,
        title: Text(
          'عنواني',
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 100.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: AssetImage('assets/images/address.png'),
            width: double.infinity,
            ),
            Text(
              'لا يوجد عنوان',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'قم بإضافة عنواينك التي تود أن نرسل طلبك إليها',
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              onPressed: (){
                navigateTo(context, AddAddressScreen());
              },
              height: 60.0,
              color: Color(0xff333333),
              minWidth: double.infinity,
              child: Text(
                'أضف عنوان',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
