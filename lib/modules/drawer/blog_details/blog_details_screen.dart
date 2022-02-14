import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/modules/drawer/blog/blog_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class BlogDetailsScreen extends StatelessWidget {
  var carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            carouselController: carouselController,
            items: [
              Stack(
                fit: StackFit.passthrough,
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Image(
                      image: AssetImage(
                        'assets/images/laptop2.jpg',
                      ),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 166.0,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.center,

                      child: Text(
                        'تفاصيل المدونة',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 166.0,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: IconButton(
                        onPressed: (){
                          navigateTo(context, BlocScreen());
                        },
                        icon: Icon(
                            Icons.arrow_back,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 23.0,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Image(
                        image: AssetImage(
                            'assets/images/indecator.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * .38,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              viewportFraction: 1.0,
              pageSnapping: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              right: 30.0,
            ),
            child: Text(
              'خبراء التسويق الإلكترونى',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 19.0,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0,),
            child: Column(
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
              ],
            ),
          ),
        ],
      ),
    )
    );
  }
}
