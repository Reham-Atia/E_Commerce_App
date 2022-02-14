import 'package:e_commerce_app/modules/profile/my_personal_data/edit_data/edit_data_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class MyAddressScreen extends StatelessWidget {

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
          vertical: 20.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Image(image: AssetImage('assets/images/gps.png'),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'عنوان المنزل',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'الرياض , شارع النصر عمارة 9',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){
                        navigateTo(context, EditDataScreen());
                      },
                      child: Image(
                        image: AssetImage('assets/images/edit&menu.png'),
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: MaterialButton(
                          onPressed: (){},
                        color: Color(0xff9A5C6B),
                        padding: EdgeInsets.zero,
                        child: Text(
                          'الافتراضى',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Divider(),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: Image(image: AssetImage('assets/images/gps.png'),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'عنوان المنزل',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'الرياض , شارع الملك بن عبد العزيز',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){
                        navigateTo(context, EditDataScreen());
                      },
                      child: Image(
                        image: AssetImage('assets/images/edit&menu.png'),
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
