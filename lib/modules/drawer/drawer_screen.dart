import 'package:e_commerce_app/layout/layout_screen.dart';
import 'package:e_commerce_app/modules/drawer/blog/blog_screen.dart';
import 'package:e_commerce_app/modules/drawer/how_we_are/how_we_are_screen.dart';
import 'package:e_commerce_app/modules/home/home_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      backgroundColor: Color(0xffEFE6E9),
      child: ListView(
        padding: EdgeInsets.only(
          top: 40.0,
          right: 5.0,
        ),
        children:
        [
          ListTile(
           leading: Icon(
             Icons.close,
             color: Colors.grey,
             size: 30.0,
           ),
            onTap: (){
              print('close');
              navigateTo(context, LayoutScreen());
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 30.0,
              bottom: 40.0,
            ),
            child: Text(
              'القائمة الجانبية',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'ديكور المنزل',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              print('ديكور المنزل');
            },
          ),
          ListTile(
            title: Text(
              'أدوات المائدة',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              print('أدوات المائدة');
            },
          ),
          ListTile(
            title: Text(
              'أنتيك',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              print('أنتيك');
            },
          ),
          ListTile(
            title: Text(
              'هدايا',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            // trailing: ClipOval(
            //   child: Container(
            //     color: Colors.red,
            //     width: 20.0,
            //     height: 20.0,
            //     child: Center(
            //       child: Text(
            //         '4',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 12.0,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            onTap: () {
              print('هدايا');
            },
          ),
          ListTile(
            title: Text(
              'من نحن',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              print('من نحن');
              navigateTo(context, HowWeAreScreen());
            },
          ),
          ListTile(
            title: Text(
              'المدونة',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              print('المدونة');
              navigateTo(context, BlocScreen());
            },
          ),
          ListTile(
            title: Text(
              'مشاركة التطبيق',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              print('مشاركة التطبيق');
            },
          ),
        ],
      ),
    );
  }
}
