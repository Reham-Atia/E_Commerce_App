import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffEFE6E9),
        centerTitle: true,
        title: Text(
          'تغيير كلمة المرور',
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
                      labelText: 'كلمة المرور الحالية',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
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
                      labelText: 'كلمة المرور الجديدة',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
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
                      labelText: 'تأكيد كلمة المرور الجديدة',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              MaterialButton(
                onPressed: (){},
                height: 60.0,
                color: Color(0xff333333),
                minWidth: double.infinity,
                child: Text(
                  'حفظ كلمة المرور الجديدة',
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
