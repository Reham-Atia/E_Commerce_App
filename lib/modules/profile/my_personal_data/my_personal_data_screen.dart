import 'package:e_commerce_app/modules/profile/my_personal_data/edit_data/edit_data_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDataScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEFE6E9),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'بياناتى الشخصية',
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          TextButton(
            onPressed: (){
              navigateTo(context, EditDataScreen());
            },
            child: Image(
              image: AssetImage('assets/images/edit&menu.png'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 40.0,
            ),
            child: Container(
              width: double.infinity,
              height: 450,
              child: Card(
                elevation: 10.0,
                color: Color(0xffEFE6E9),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(
                       'الاسم',
                       style: TextStyle(
                         fontWeight: FontWeight.w300,
                         fontSize: 17.0,
                         color: Colors.grey,
                       ),
                     ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'ريهام عطية',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Divider(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'رقم الهاتف',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        '01251566534',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17.0,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Divider(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'البريد الإلكترونى',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Rehamatia259@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
