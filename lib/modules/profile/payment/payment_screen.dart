import 'package:e_commerce_app/modules/profile/payment/choose%20_card/choose_card_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget
{

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
          'طرق الدفع',
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
            Image(image: AssetImage('assets/images/payment.png'),
              width: double.infinity,
            ),
            Text(
              'لا يوجد طرق دفع',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'قم بإضافة طرق الدفع الخاصة بك لتسهيل عملية الشارع',
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
                navigateTo(context, ChooseCardScreen());
              },
              height: 60.0,
              color: Color(0xff333333),
              minWidth: double.infinity,
              child: Text(
                'أضف بطاقة',
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
