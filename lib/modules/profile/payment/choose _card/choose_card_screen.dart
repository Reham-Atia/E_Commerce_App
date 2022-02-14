import 'package:e_commerce_app/modules/profile/payment/choose%20_card/card_information/card_information_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class ChooseCardScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffEFE6E9),
        centerTitle: true,
        title: Text(
          'اختر نوع البطاقة',
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                navigateTo(context, CardInformationScreen());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/visa.png'),
                      height: 19,
                      width: 62,
                    ),
                    Spacer(),
                    Image(image: AssetImage('assets/images/arrow_back.png'),),
                  ],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){
                navigateTo(context, CardInformationScreen());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/mastercard.png'),
                      height: 37,
                      width: 62,
                    ),
                    Spacer(),
                    Image(image: AssetImage('assets/images/arrow_back.png'),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
