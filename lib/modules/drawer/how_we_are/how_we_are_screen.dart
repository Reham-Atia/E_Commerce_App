import 'package:flutter/material.dart';

class HowWeAreScreen extends StatelessWidget
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
        // leading: IconButton(
        //   onPressed: (){},
        //   icon: Icon(IconBroken.Arrow___Right),),
        centerTitle: true,
        title: Text(
          'من نحن',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال "lorem ipsum" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                height: 1.4,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'بالتأكيد نعم، و لسوف نتعرف مع عيادة أسنان اندلسية علي بعض الإرشادات والنصائح التي تمكن مريض السكري من الاستفادة من هذا التطور الطبي وإجراء زراعة الأسنان واستعادة الابتسامة المفقودة',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                height: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'أو تواصل معنا عبر',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: Image(image: AssetImage('assets/images/facebook.png',),
                    height: 37.0,
                    width: 37.0,
                  ),
                ),
                SizedBox(
                  width: 13.0,
                ),
                InkWell(
                  child: Image(image: AssetImage('assets/images/twitter.png',),
                    height: 37.0,
                    width: 37.0,
                  ),
                ),
                SizedBox(
                  width: 13.0,
                ),
                InkWell(
                  child: Image(image: AssetImage('assets/images/google.png',),
                    height: 37.0,
                    width: 37.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
