import 'package:e_commerce_app/layout/layout_screen.dart';
import 'package:e_commerce_app/modules/home/box/box_screen.dart';
import 'package:e_commerce_app/modules/home/home_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/styles/icons_broken.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeDetailsScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD4DCE9),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xffD4DCE9),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
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
        backgroundColor: Color(0xffD4DCE9),
        actions: [
          TextButton(
            onPressed: (){
              navigateTo(context, BoxScreen());
            },
            child: Image(
              image: AssetImage('assets/images/bag.png'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .47,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(image: AssetImage('assets/images/ind.png'),),
                SizedBox(
                  width: 20.0,
                ),
                Image(image: AssetImage('assets/images/cup blue.png'),),
              ],
            ),
          ),
          Expanded(
            child: Card(
              elevation: 10.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10.0,
                        bottom: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'طاقم بورسلين أزرق',
                            style: TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          InkWell(
                            child: Icon(
                              IconBroken.Heart,
                              size: 30.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'أدوات المائدة',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14.0,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال "lorem ipsum" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها.',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[500],
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'S.R',
                            style: TextStyle(
                              fontSize: 23.0,
                              color: Color(0xff9A5C6B),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '350',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Color(0xff9A5C6B),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.add,
                              size: 18.0,
                            ),
                            color: Colors.grey[400],
                            height: 25.0,
                            width: 20.0,
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          Container(
                            child: Center(
                              child: Text('-',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            color: Colors.grey[400],
                            height: 25.0,
                            width: 20.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 60.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        color: Color(0xff9A5C6B),
                      ),
                      child: TextButton(
                        onPressed: (){
                          navigateTo(context, BoxScreen());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'أضف للسلة',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Image(image: AssetImage('assets/images/bag.png'),
                            height: 26.0,
                              width: 20.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
