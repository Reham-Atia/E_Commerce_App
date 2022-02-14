import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';


class CardInformationScreen extends StatelessWidget
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
          'املأ بيانات البطاقة',
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 50.0,
          ),
          child: Column(
            children: [
              Card(
                elevation: 10.0,
                color: Color(0xffEFE6E9),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black45,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Card Number',
                      labelStyle: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 10.0,
                color: Color(0xffEFE6E9),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black45,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Valid Until',
                      labelStyle: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 10.0,
                color: Color(0xffEFE6E9),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black45,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'CVV',
                      labelStyle: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                elevation: 10.0,
                color: Color(0xffEFE6E9),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black45,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Card Holder',
                      labelStyle: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Image(image: AssetImage('assets/images/switch.png'),),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'تعيين كافتراضى',
                    style: TextStyle(
                      height: .2,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              MaterialButton(
                onPressed: (){},
                height: 60.0,
                color: Color(0xff333333),
                minWidth: double.infinity,
                child: Text(
                  'إضافة',
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
      ),
    );
  }
}

