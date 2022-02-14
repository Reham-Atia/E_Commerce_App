import 'package:e_commerce_app/layout/cubit/cubit.dart';
import 'package:e_commerce_app/layout/cubit/states.dart';
import 'package:e_commerce_app/modules/home/box/box_screen.dart';
import 'package:e_commerce_app/modules/home/home_details/home_details_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/styles/icons_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class sectionModel {
  final String image;
  final String backImage;
  final String text;
  final String textPrice;
  final String price;

  sectionModel({
    @required this.image,
    @required this.backImage,
    @required this.text,
    @required this.textPrice,
    @required this.price,
  });
}

class PorcelainSetsScreen extends StatelessWidget {

  @override
  List<sectionModel> sections = [
    sectionModel(
      image: 'assets/images/cup_blue_sec.png',
      backImage: 'assets/images/blue_sec.png',
      text: 'طاقم بورسلين أزرق',
      textPrice: 'S.R',
      price: '350',
    ),
    sectionModel(
      image: 'assets/images/cup_white_sec.png',
      backImage: 'assets/images/white_sec.png',
      text: 'طاقم بورسلين أزرق',
      textPrice: 'S.R',
      price: '350',
    ),
    sectionModel(
      image: 'assets/images/cup_blue_sec.png',
      backImage: 'assets/images/blue_sec.png',
      text: 'طاقم بورسلين أزرق',
      textPrice: 'S.R',
      price: '350',
    ),
    sectionModel(
      image: 'assets/images/cup_white_sec.png',
      backImage: 'assets/images/white_sec.png',
      text: 'طاقم بورسلين أزرق',
      textPrice: 'S.R',
      price: '350',
    ),
    sectionModel(
      image: 'assets/images/cup_blue_sec.png',
      backImage: 'assets/images/blue_sec.png',
      text: 'طاقم بورسلين أزرق',
      textPrice: 'S.R',
      price: '350',
    ),
    sectionModel(
      image: 'assets/images/cup_white_sec.png',
      backImage: 'assets/images/white_sec.png',
      text: 'طاقم بورسلين أزرق',
      textPrice: 'S.R',
      price: '350',
    ),
  ];

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ECommerceCubit, ECommerceStates>(
      listener: (context, state){},
      builder: (context, state)
      {
        var cubit = ECommerceCubit.get(context);
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            title: Text(
              'أطقم بورسلين',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            backgroundColor: Color(0xffEFE6E9),
            centerTitle: true,
            actions: [
              TextButton(
                onPressed: () {
                  navigateTo(context, BoxScreen());
                },
                child: Image(
                  image: AssetImage('assets/images/bag.png'),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 265,
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
                              fontSize: 13.0,
                            ),
                            prefixIcon: Image(
                              image: AssetImage('assets/images/search.png'),
                              height: 18.0,
                              width: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        scaffoldKey.currentState.showBottomSheet(
                              (context) => Container(
                            width: double.infinity,
                            height: 211,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    'ترتيب حسب',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 21.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      cubit.isExpensive = false;
                                      print('false');
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          'الأقل سعرا',
                                          style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        Spacer(),
                                        if(cubit.isExpensive == false)
                                          Image(image: AssetImage('assets/images/check-mark.png'),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  GestureDetector(
                                    onTap: ()
                                    {
                                      cubit.isExpensive = true;
                                      print('true');
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          'الأعلى سعرا',
                                          style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        Spacer(),
                                        if(cubit.isExpensive == true)
                                          Image(image: AssetImage('assets/images/check-mark.png'),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/images/menu_arrow.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 2.71 / 4.6,
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    children: List.generate(
                      sections.length,
                          (index) => sectionsItem(sections[index], context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget sectionsItem(sectionModel model, context) => Container(
    height: 296,
    width: 162,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image(image: AssetImage('${model.backImage}'),
            ),
            Image(image: AssetImage('${model.image}'),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              '${model.text}',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            Spacer(),
            InkWell(
              child: Icon(
                IconBroken.Heart,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              '${model.textPrice}',
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xff9A5C6B),
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              '${model.price}',
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xff9A5C6B),
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
