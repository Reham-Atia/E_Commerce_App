import 'package:e_commerce_app/modules/sections/porcelain_sets/porcelain_sets_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/styles/icons_broken.dart';
import 'package:flutter/material.dart';

class SectionsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEFE6E9),
        centerTitle: true,
        title: Text(
          'الأقسام',
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ExpansionTile(
              childrenPadding: EdgeInsetsDirectional.only(
                start: 20.0,
                end: 5.0,
              ),
              tilePadding: EdgeInsetsDirectional.only(
                top: 40.0,
                start: 20.0,
                end: 20.0,
              ),
              leading: Image(image: AssetImage('assets/images/table_sec.png'),
                height: 30.0,
                width: 30.0,
              ),
              title: Text(
                'ديكور المنزل',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: Image(image: AssetImage('assets/images/arrow_down.png'),
              ),
              textColor: Colors.grey,
              children: [
                Row(
                  children: [
                    Text(
                      'أطقم بورسلين',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){
                        navigateTo(context, PorcelainSetsScreen());
                      },
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'أطقم طاولات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'سلات ومناديل',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'عربيات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'صوانى تقديم',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'طفايات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            ExpansionTile(
              childrenPadding: EdgeInsetsDirectional.only(
                start: 20.0,
                end: 5.0,
              ),
              tilePadding: EdgeInsetsDirectional.only(
                top: 20.0,
                start: 20.0,
                end: 20.0,
              ),
              leading: Image(image: AssetImage('assets/images/dishes_sec.png'),
                height: 30.0,
                width: 38.0,
              ),
              title: Text(
                ' أدوات المائدة',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: Image(image: AssetImage('assets/images/arrow_back.png'),
              ),
              textColor: Colors.grey,
              children: [
                Row(
                  children: [
                    Text(
                      'أطقم بورسلين',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'أطقم طاولات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'سلات ومناديل',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'عربيات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'صوانى تقديم',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'طفايات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            ExpansionTile(
              childrenPadding: EdgeInsetsDirectional.only(
                start: 20.0,
                end: 5.0,
              ),
              tilePadding: EdgeInsetsDirectional.only(
                top: 20.0,
                start: 20.0,
                end: 20.0,
              ),
              leading: Image(image: AssetImage('assets/images/antique_sec.png'),
                height: 30.0,
                width: 35.0,
              ),
              title: Text(
                'أنتيك',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: Image(image: AssetImage('assets/images/arrow_back.png'),
              ),
              textColor: Colors.grey,
              children: [
                Row(
                  children: [
                    Text(
                      'أطقم بورسلين',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'أطقم طاولات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'سلات ومناديل',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'عربيات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'صوانى تقديم',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'طفايات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            ExpansionTile(
              childrenPadding: EdgeInsetsDirectional.only(
                start: 20.0,
                end: 5.0,
              ),
              tilePadding: EdgeInsetsDirectional.only(
                top: 20.0,
                start: 20.0,
                end: 20.0,
              ),
              leading: Image(image: AssetImage('assets/images/gift_sec.png'),
                height: 30.0,
                width: 30.0,
              ),
              title: Text(
                'هدايا',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: Image(image: AssetImage('assets/images/arrow_back.png'),
              ),
              textColor: Colors.grey,
              children: [
                Row(
                  children: [
                    Text(
                      'أطقم بورسلين',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'أطقم طاولات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'سلات ومناديل',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'عربيات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'صوانى تقديم',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'طفايات',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.grey,
                      ),
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
