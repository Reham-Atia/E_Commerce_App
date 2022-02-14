import 'package:e_commerce_app/modules/login/login_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
   final String image;
   final String title;
   final String body;

  BoardingModel({
    @required this.image,
    @required this.title,
    @required this.body,
  });

}

class OnBoardingScreen extends StatefulWidget {

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
{
  List<BoardingModel> boarding =
  [
    BoardingModel(
      image: 'assets/images/onboard_1.png',
      title: 'العروض والهدايا',
      body: 'عروض خاصة وهدايا على مختلف المشتريات من  خلال المتجر',
    ),
    BoardingModel(
      image: 'assets/images/onboard_2.png',
      title: 'التوصيل السريع',
      body: 'أسرع التسليم والتسليم إلى  باب المنزل في جميع أنحاء المملكة ',
    ),
    BoardingModel(
      image: 'assets/images/onboard_2.png',
      title: 'خدمة العملاء',
      body: 'يسعدنا الرد عليك في أي وقت ، بغض  النظر عن استفسارك أو مشكلتك ونعدك بحل سريع ',
    ),
  ];

  var boardController = PageController();
  bool isLast = false;

  void submit() {
    CacheHelper.saveData(
      key: 'onBoarding',
      value: true,
    ).then((value){
      if(value == true)
      {
        navigateAndFinish(context, LoginScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Color(0xffEFE6E9),
        leading: defaultTextBottom(
          function: submit,
          text: 'تخطي',
          color: Colors.grey,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                onPageChanged: (int index){
                  if(index== boarding.length - 1)
                  {
                    setState(() {
                      isLast = true;
                    });
                  }else
                  {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                controller: boardController,
                itemBuilder: (context, index) => buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  count: boarding.length,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    dotHeight: 12,
                    activeDotColor: Color(0xff9A5C6B),
                    dotWidth: 10,
                    expansionFactor: 3,
                    spacing: 5.0,
                  ),
                ),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: Color(0xff9A5C6B),
                  onPressed: ()
                  {
                    if(isLast== true)
                    {
                      submit();
                    }else
                    {
                      boardController.nextPage(
                        duration: Duration(
                          milliseconds: 750,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Image(
          image: AssetImage('${model.image}'),
        ),
      ),
      SizedBox(
        height: 30.0,
      ),
      Center(
        child: Text(
          '${model.title}',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Center(
        child: Text(
          '${model.body}',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black54,
          ),
        ),
      ),
      SizedBox(
        height: 30.0,
      ),
    ],
  );
}
