import 'package:e_commerce_app/modules/drawer/drawer_screen.dart';
import 'package:e_commerce_app/modules/home/box/box_screen.dart';
import 'package:e_commerce_app/modules/profile/address/address_screen.dart';
import 'package:e_commerce_app/modules/profile/my_order/my_order_screen.dart';
import 'package:e_commerce_app/modules/profile/my_personal_data/my_personal_data_screen.dart';
import 'package:e_commerce_app/modules/profile/payment/payment_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: Builder(
          builder: (context){
            return TextButton(
              onPressed: ()=> Scaffold.of(context).openDrawer(),
              child: Image(
                image: AssetImage('assets/images/menu.png'),
              ),
            );
          },
        ),
        backgroundColor: Color(0xffEFE6E9),
        centerTitle: true,
        title: Text(
          'حسابى',
        ),
        actions: [
          TextButton(
            onPressed: (){
              navigateTo(context, BoxScreen());
            },
            child: Image(
              image: AssetImage('assets/images/bag.png'),
            ),
          ),
        ],
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Text(
                'مرحبا !',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff9A5C6B),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                'ريهام عطية',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            InkWell(
              onTap: (){
                navigateTo(context, MyOrderScreen());
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/order.png'),
                      height: 30.0,
                      width: 39.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'طلباتى',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                      ),
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
                navigateTo(context, MyDataScreen());
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0,),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/profile.png'),
                      height: 30.0,
                      width: 39.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'بياناتى الشخصية',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                      ),
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
                navigateTo(context, AddressScreen());
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0,),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/gps.png'),
                      height: 30.0,
                      width: 39.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'عنوانى',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                      ),
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
                navigateTo(context, PaymentScreen());
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0,),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/moeny.png'),
                      height: 30.0,
                      width: 39.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'طرق الدفع',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
                      ),
                    ),
                    Spacer(),
                    Image(image: AssetImage('assets/images/arrow_back.png'),),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Container(
              height: 60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
                color: Color(0xff9A5C6B),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'تسجيل خروج',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}