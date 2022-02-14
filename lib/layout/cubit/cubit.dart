import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/layout/cubit/states.dart';
import 'package:e_commerce_app/models/cat_model.dart';
import 'package:e_commerce_app/modules/favorites/favorites_screen.dart';
import 'package:e_commerce_app/modules/home/home_screen.dart';
import 'package:e_commerce_app/modules/profile/profile_screen.dart';
import 'package:e_commerce_app/modules/sections/sections_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ECommerceCubit extends Cubit<ECommerceStates>
{
  ECommerceCubit() : super(ECommerceInitialState());

  static ECommerceCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens =
  [
    HomeScreen(),
    SectionsScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  void changeNavBar(int index)
  {
      currentIndex = index;
      emit(ECommerceChangeBottomNavState());
    }

    CatModel catModel;

    void getCatData()
    {
      emit(ECommerceGetCatLoadingState());
      FirebaseFirestore.instance
          .collection('cat')
          .get()
          .then((value) {
            for (int i = 0; i < value.docs.length; i++)
            {
              // catModel.add(CatModel.fromJson(value.docs[i].data()));
            }
            emit(ECommerceGetCatSuccessState());
            print(value.docs[0].data());
      })
          .catchError((error) {
        emit(ECommerceGetCatErrorState(error.toString()));
      });
    }


  bool isExpensive;

  void changeBottomSheet ()
  {
    isExpensive = true;
    emit(ECommerceChangeBottomSheetState());
  }


}