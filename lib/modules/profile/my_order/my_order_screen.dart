import 'package:e_commerce_app/modules/profile/my_order/order_details/end_order_setails_screen.dart';
import 'package:e_commerce_app/modules/profile/my_order/order_details/order_details_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffEFE6E9),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            'طلباتى',
            style: TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(0.0,),
            ),
            indicatorColor: Colors.black,
            padding: EdgeInsets.symmetric(
                horizontal: 20
            ),
            tabs:
            [
              Tab(
                child: Text(
                  'الحالية',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Tab(
                  child: Text(
                    'المنتهية',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
              ),
            ],
          ),
        ),
        body: Container(
          height: 250,
          child: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    InkWell(
                      onTap: (){
                        navigateTo(context, OrderDetailsScreen());
                      },
                      child: Container(
                        child: Align(
                          alignment: AlignmentDirectional.topCenter,
                          child: Card(
                            elevation: 5.0,
                            color: Color(0xffEFE6E9),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'رقم الطلب',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        '505225',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'عدد المنتجات',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Stack(
                                        alignment: AlignmentDirectional.center,
                                        children: [
                                          Image(image: AssetImage('assets/images/blue.png'),
                                            height: 63,
                                            width: 55,
                                          ),
                                          Image(image: AssetImage('assets/images/cup blue.png'),
                                            height: 40,
                                            width: 41,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Stack(
                                        alignment: AlignmentDirectional.center,
                                        children: [
                                          Image(image: AssetImage('assets/images/pink.png'),
                                            height: 63,
                                            width: 55,
                                          ),
                                          Image(image: AssetImage('assets/images/table.png'),
                                            height: 40,
                                            width: 41,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'السعر الأجمالى',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            'S.R',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Color(0xff9A5C6B),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            '700',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Color(0xff9A5C6B),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 195.0,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Color(0xffB3B3B3),
                            child: CircleAvatar(
                              radius: 10.0,
                              backgroundColor: Colors.grey[500],
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Color(0xff333333),),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 260,
                            child: Card(
                              elevation: 5.0,
                              color: Color(0xffEFE6E9),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'الطلب في طريقه إليك',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '05:30 PM',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '22 May 2020',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  navigateTo(context, EndOrderScreen());
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Align(
                          alignment: AlignmentDirectional.topCenter,
                          child: Card(
                            elevation: 5.0,
                            color: Color(0xffEFE6E9),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'رقم الطلب',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        '505225',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'عدد المنتجات',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Stack(
                                        alignment: AlignmentDirectional.center,
                                        children: [
                                          Image(image: AssetImage('assets/images/blue.png'),
                                            height: 63,
                                            width: 55,
                                          ),
                                          Image(image: AssetImage('assets/images/cup blue.png'),
                                            height: 40,
                                            width: 41,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Stack(
                                        alignment: AlignmentDirectional.center,
                                        children: [
                                          Image(image: AssetImage('assets/images/pink.png'),
                                            height: 63,
                                            width: 55,
                                          ),
                                          Image(image: AssetImage('assets/images/table.png'),
                                            height: 40,
                                            width: 41,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'السعر الأجمالى',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            'S.R',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Color(0xff9A5C6B),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            '700',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Color(0xff9A5C6B),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        height: 195.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
