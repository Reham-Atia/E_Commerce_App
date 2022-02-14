import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/models/user_model.dart';
import 'package:e_commerce_app/modules/register/cubit/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ECommerceRegisterCubit extends Cubit<ECommerceRegisterStates>
{
  ECommerceRegisterCubit() : super(ECommerceRegisterInitialState());

  static ECommerceRegisterCubit get(context) => BlocProvider.of(context);

  void userRegister({
    @required String name,
    @required String email,
    @required String password,
    @required String phone,
  })
  {
    emit(ECommerceRegisterLoadingState());

    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
    ).then((value)
    {
      userCreate(
          name: name,
          email: email,
          phone: phone,
          uId: value.user.uid,
      );
    }).catchError((error)
    {
      emit(ECommerceRegisterErrorState(error.toString()));
    });
  }


  void userCreate({
    @required String name,
    @required String email,
    @required String phone,
    @required String uId,
}){
    UserModel model = UserModel(
      name : name,
      email : email,
      phone : phone,
      uId : uId,
      image: 'https://as1.ftcdn.net/v2/jpg/02/45/10/16/1000_F_245101600_TAOjE6DN7Z6rf7EZbKgB0TwzMLlAdwUx.jpg',
    );

    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toMap()
    ).then((value)
    {
      emit(ECommerceUserCreateSuccessState());
    }).catchError((error)
    {
      emit(ECommerceUserCreateErrorState(error.toString()));
      print(error.toString());
    });
  }

  IconData suffix = Icons.visibility_off_outlined;
  bool isPassword = true;

  void changePasswordVisibility ()
  {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined ;

    emit(ECommerceRegisterChangePasswordVisibilityState());
  }


}