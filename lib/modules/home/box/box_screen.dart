import 'package:e_commerce_app/layout/layout_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class BoxScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            navigateTo(context, LayoutScreen());
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30.0,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffEFE6E9),
        centerTitle: true,
        title: Text(
          'السلة',
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Image(image: AssetImage('assets/images/bag2.png'),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/images/sad.png'),),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            Text(
              'السلة فارغة',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'املأ سلتك بالعديد من المنتجات ',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 60.0,
              width: 325.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
                color: Color(0xff9A5C6B),
              ),
              child: TextButton(
                  onPressed: (){
                navigateTo(context, LayoutScreen());
              },
                  child: Text(
                    'الذهاب للمنتجات',
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
