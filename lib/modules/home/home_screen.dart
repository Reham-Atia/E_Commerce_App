import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/modules/drawer/drawer_screen.dart';
import 'package:e_commerce_app/modules/home/box/box_screen.dart';
import 'package:e_commerce_app/modules/home/home_details/home_details_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/styles/icons_broken.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class productModel {
  final String image;
  final String backImage;
  final String text;
  final String textPrice;
  final String price;

  productModel({
    @required this.image,
    @required this.backImage,
    @required this.text,
    @required this.textPrice,
    @required this.price,
  });

}

class HomeScreen extends StatelessWidget
{

  List<productModel> products =
  [
    productModel(
      image: 'assets/images/cup.png',
      backImage: 'assets/images/blue.png',
      text: 'طاقم بورسلين أزرق',
      textPrice: 'S.R',
      price: '350'
    ),
    productModel(
        image: 'assets/images/table.png',
        backImage: 'assets/images/pink.png',
        text: 'طاوله خشبية',
        textPrice: 'S.R',
        price: '350'
    ),
    productModel(
        image: 'assets/images/dishes.png',
        backImage: 'assets/images/white.png',
        text: 'طاقم أطباق مزخرف',
        textPrice: 'S.R',
        price: '350'
    ),
    productModel(
        image: 'assets/images/table.png',
        backImage: 'assets/images/pink.png',
        text: 'طاوله خشبية',
        textPrice: 'S.R',
        price: '350'
    ),
  ];

  var carouselController = CarouselController();
  var indicatorController = PageController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Colors.black,
        ),
        leading: Builder(
          builder: (context){
            return TextButton(
              onPressed: ()=> Scaffold.of(context).openDrawer(),
              child: Image(
                image: AssetImage('assets/images/menu.png'),
              ),
            );
          },
        ),
        backgroundColor: Color(0xffEFE6E9),
        centerTitle: true,
        title: Image(
          image: NetworkImage('https://cdn.discordapp.com/attachments/874742686450589777/924118280451551272/unknown.png',),
          height: 70.0,
        ),
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
      drawer: DrawerScreen(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'ابحث من هنا',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                      prefixIcon: Image(
                        image: AssetImage('assets/images/search.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              CarouselSlider(
                carouselController: carouselController,
                  items: [
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        Image(
                          image: AssetImage('assets/images/image1.png',
                          ),
                        height: 120,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Image(
                            image: AssetImage('assets/images/image2.png',
                            ),
                            height: 85,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Image(
                            image: AssetImage('assets/images/light.png',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 30.0,
                            right: 20.0,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'أباجورات مودرن',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20.0,
                            top: 25.0,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              'أسعار تبدا من ',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 40.0,
                            right: 30.0,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              '100',
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.white,
                                fontFamily: 'Almarai-Bold',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 40.0,
                            left: 55.0,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'S.R',
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  options: CarouselOptions(
                    height: 100.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    pageSnapping: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                padding: EdgeInsets.all(4.0),
                color: Colors.grey[400],
                child: SmoothPageIndicator(
                  controller: indicatorController,
                  count: 6,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.black,
                    dotHeight: 6.0,
                    dotWidth: 5.0,
                    spacing: 9.0,
                    radius: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    'الأكثر بيعا',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 Spacer(),
                  Text(
                    'عرض الكل',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Image(
                      image: AssetImage(
                          'assets/images/arrow.png',
                      ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 220,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15.0,
                  ),
                  itemBuilder: (context, index) => catItem( products[index], context),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    'اخترنا لك',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'عرض الكل',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/arrow.png',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 220,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15.0,
                  ),
                  itemBuilder: (context, index) => catItem( products[index], context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget catItem(productModel model, context) => Row(
    children: [
      Container(
        width: 125,
        child: InkWell(
          onTap: (){
            navigateTo(context, HomeDetailsScreen());
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image(image: AssetImage('${model.backImage}'),
                  height: 155,
                    width: 126,
                  ),
                  Image(image: AssetImage('${model.image}'),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${model.text}',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  InkWell(
                    child: Icon(
                      IconBroken.Heart,
                      size: 20.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    '${model.textPrice}',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xff9A5C6B),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '${model.price}',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xff9A5C6B),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );

}