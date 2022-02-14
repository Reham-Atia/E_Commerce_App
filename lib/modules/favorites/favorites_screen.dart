import 'package:e_commerce_app/modules/home/home_details/home_details_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/styles/icons_broken.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class FavoritesScreen extends StatelessWidget
{
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

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Color(0xffEFE6E9),
        title: Text(
          'المفضلة',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 19.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          children: [
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
                Icons.favorite,
                color: Color(0xff9A5C6B),
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
