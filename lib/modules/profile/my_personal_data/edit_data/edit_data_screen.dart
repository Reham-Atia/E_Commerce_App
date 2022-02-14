import 'package:e_commerce_app/modules/profile/my_personal_data/edit_data/change_password/change_password_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class EditDataScreen extends StatelessWidget {

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
          'تعديل البيانات',
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
              TextFormField(
                cursorColor: Colors.black45,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0,),
                    ),
                  labelText: 'الاسم',
                  labelStyle: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                cursorColor: Colors.black45,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0,),
                  ),
                  labelText: 'رقم الهاتف',
                  labelStyle: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                cursorColor: Colors.black45,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0,),
                  ),
                  labelText: 'البريد الإلكترونى',
                  labelStyle: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                  onPressed: (){
                    navigateTo(context, ChangePasswordScreen());
                  },
                height: 60.0,
                color: Color(0xff9A5C6B),
                minWidth: double.infinity,
                child: Text(
                  'تغيير كلمة المرور',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(
                height: 70.0,
              ),
              MaterialButton(
                onPressed: (){},
                height: 60.0,
                color: Color(0xff333333),
                minWidth: double.infinity,
                child: Text(
                  'حفظ التغييرات',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 17.0,
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
