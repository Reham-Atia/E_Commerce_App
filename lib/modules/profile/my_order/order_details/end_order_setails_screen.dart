import 'package:flutter/material.dart';

class EndOrderScreen extends StatelessWidget {

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
          'تفاصيل الطلب',
          style: TextStyle(
            fontSize: 19.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.grey[300],
              color: Color(0xffEFE6E9),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'رقم الطلب',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '505225',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'عدد المنتجات',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '2',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
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
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'طاقم بورسلين أزرق',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  'S.R',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '350',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
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
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'طاوله خشبية',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  'S.R',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '350',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'السعر',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'S.R',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '700',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'خدمة التوصيل',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'S.R',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'إجمالى السعر',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'S.R',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                                color: Color(0xff9A5C6B),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '700',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0,
                                color: Color(0xff9A5C6B),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Container(
              width: double.infinity,
              child: Card(
                elevation: 10.0,
                shadowColor: Colors.grey[300],
                color: Color(0xffEFE6E9),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/gps.png'),
                        height: 40.0,
                        width: 40.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مكان التوصيل',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'الرياض , شارع النصر عمارة 9',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15.0,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
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
