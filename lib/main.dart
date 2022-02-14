import 'package:e_commerce_app/layout/cubit/cubit.dart';
import 'package:e_commerce_app/layout/layout_screen.dart';
import 'package:e_commerce_app/modules/login/login_screen.dart';
import 'package:e_commerce_app/shared/bloc_observer.dart';
import 'package:e_commerce_app/shared/network/local/cache_helper.dart';
import 'package:e_commerce_app/shared/styles/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'modules/on_boarding/on_boarding_screen.dart';


void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();

  dynamic onBoarding = CacheHelper.getData(key: 'onBoarding');
  String token = CacheHelper.getData(key: 'token');

  Widget widget;

  if(onBoarding != null)
  {
    if(token != null)
    {
      widget = LayoutScreen();
    } else
    {
      widget = LoginScreen();
    }
  } else
  {
    widget = OnBoardingScreen();
  }

  var uId = CacheHelper.getData(key: 'uId');

  if(uId != null)
  {
    widget = LayoutScreen();
  }else
  {
    widget = LoginScreen();
  }


  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget
{
  final Widget startWidget;

  MyApp({
    this.startWidget
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => ECommerceCubit()..changeBottomSheet()),
      ],
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ar', 'AE'), // English, no country code
        ],
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        themeMode: ThemeMode.light,
        //AppCubit.get(context).isDark? ThemeMode.dark :
        darkTheme: darkTheme,
        home: startWidget,
      ),
    );
  }
}