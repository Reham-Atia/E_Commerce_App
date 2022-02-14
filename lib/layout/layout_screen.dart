import 'package:e_commerce_app/layout/cubit/cubit.dart';
import 'package:e_commerce_app/layout/cubit/states.dart';
import 'package:e_commerce_app/modules/drawer/drawer_screen.dart';
import 'package:e_commerce_app/shared/styles/icons_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var cubit = ECommerceCubit.get(context);
    return BlocConsumer<ECommerceCubit, ECommerceStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xff9A5C6B),
            onTap: (index)
            {
              cubit.changeNavBar(index);
            },
            currentIndex: cubit.currentIndex,
            items:
            const [
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Home,
                  size: 22,
                ),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Category,
                  size: 22,
                ),
                label: 'الأقسام',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Heart,
                  size: 22,
                ),
                label: 'المفضلة',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconBroken.Profile,
                  size: 22,
                ),
                label: 'حسابي',
              ),
            ],
          ),
        );
      },
    );
  }


}
