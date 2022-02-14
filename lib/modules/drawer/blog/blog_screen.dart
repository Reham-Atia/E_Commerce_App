import 'package:e_commerce_app/layout/layout_screen.dart';
import 'package:e_commerce_app/modules/drawer/blog_details/blog_details_screen.dart';
import 'package:e_commerce_app/modules/home/home_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class BlogModel
{
  final String image;
  final String title;
  final String date;

  BlogModel({
    @required this.image,
    @required this.title,
    @required this.date,
  });
}

class BlocScreen extends StatelessWidget
{
  List<BlogModel> blog = [
    BlogModel(
      image: 'assets/images/laptop2.jpg',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/laptop2.jpg',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/laptop2.jpg',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/laptop2.jpg',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/laptop2.jpg',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/laptop2.jpg',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
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
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffEFE6E9),
        centerTitle: true,
        title: Text(
          'المدونة',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.7 / 2,
                children: List.generate(
                  blog.length,
                  (index) => catItem(blog[index], context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget catItem(BlogModel model, context) => InkWell(
    onTap: (){
      navigateTo(context, BlogDetailsScreen());
      print('blog details');
    },
    child: Card(
      elevation: 10.0,
      child: Column(
        children: [
          Image(
            image: AssetImage('${model.image}'),
            height: 118,
            width: 155,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '${model.title}',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '${model.date}',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 12.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}
