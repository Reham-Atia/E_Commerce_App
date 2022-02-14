import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/modules/login/cubit/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ECommerceLoginCubit extends Cubit<ECommerceLoginStates>
{
  ECommerceLoginCubit() : super(ECommerceLoginInitialStates());

  static ECommerceLoginCubit get(context) => BlocProvider.of(context);


  IconData suffix = Icons.visibility_off_outlined;
  bool isPassword = true;

  void userLogin({
    @required String email,
    @required String password,
})
  {
    emit(ECommerceLoginLoadingStates());

   FirebaseAuth.instance.signInWithEmailAndPassword(
       email: email,
       password: password,
   ).then((value)
   {
     print(value.user.email);
     print(value.user.uid);
     emit(ECommerceLoginSuccessStates(value.user.uid));
   }).catchError((error)
   {
     emit(ECommerceLoginErrorStates(error.toString()));
     print('Erroooor  ${error.toString()}');
   });
  }

  void changePasswordVisibility ()
  {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined ;

    emit(ECommerceChangePasswordVisibilityState());
  }

  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

  void googleSignInMethod() async
  {
    emit(ECommerceSignInLoadingState());

    GoogleSignInAccount googleUser = await googleSignIn.signIn();

    GoogleSignInAuthentication googleSignInAuthentication = await googleUser.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    print(googleUser);
    print(userCredential.user);

    // .then((value)
    // {
    //   emit(ECommerceSignInSuccessState());
    //   print('googleUser');
    // }).catchError((error)
    // {
    //   emit(ECommerceSignInErrorState());
    // }) as GoogleSignInAccount;
  }

// FacebookLogin facebookLogin;
//
// void facebookSignInMethod() async
// {
//   FacebookLoginResult result = await
//   FacebookLogin().logIn(customPermissions: ['email']);
//
//   final accessToken = result.accessToken.token;
//
//   if(result.status == FacebookLoginStatus.success)
//   {
//     final faceCredential = FacebookAuthProvider.credential(accessToken);
//
//     await FirebaseAuth.instance.signInWithCredential(faceCredential);
//   }
// }
}

