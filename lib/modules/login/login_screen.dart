import 'package:e_commerce_app/layout/layout_screen.dart';
import 'package:e_commerce_app/modules/login/cubit/cubit.dart';
import 'package:e_commerce_app/modules/login/cubit/state.dart';
import 'package:e_commerce_app/modules/register/social_register_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/network/local/cache_helper.dart';
import 'package:e_commerce_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget
{
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => ECommerceLoginCubit(),
      child: BlocConsumer<ECommerceLoginCubit, ECommerceLoginStates>(
        listener: (context, state)
        {
          if(state is ECommerceLoginErrorStates)
          {
            showToast(
              text: state.error,
              state: ToastStates.ERROR,
            );
          }
          if(state is ECommerceLoginSuccessStates){
            CacheHelper.saveData(
              key: 'uId',
              value: state.uId,
            ).then((value)
            {
              navigateAndFinish(context, LayoutScreen());
            });
          }

        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Color(0xffEFE6E9),
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Color(0xffEFE6E9),
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  right: 20.0,
                  left: 20.0,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Image(
                                  image: NetworkImage('https://cdn.discordapp.com/attachments/874742686450589777/924118280451551272/unknown.png',),
                                  height: MediaQuery.of(context).size.height *.14,
                                ),
                                Text(
                                  'متجرنا',
                                  style: TextStyle(
                                    fontSize: 35.0,
                                    color: Color(0xff9A5C6B),
                                    height: .06,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  'تسجيل الدخول',
                                  style: Theme.of(context).textTheme.headline5.copyWith(
                                    color: Color(0xff222222),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            defaultTextFormField(
                              controller: emailController,
                              type: TextInputType.emailAddress,
                              label: 'البريد الإلكتروني',
                              prefix: Icons.email_outlined,
                              validate: (String value)
                              {
                                if(value.isEmpty){
                                  return 'please enter your email address';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            defaultTextFormField(
                              controller: passwordController,
                              type: TextInputType.visiblePassword,
                              label: 'كلمة المرور',
                              prefix: Icons.lock,
                              suffix: ECommerceLoginCubit.get(context).suffix,
                              isPassword: ECommerceLoginCubit.get(context).isPassword,
                              suffixPressed: (){
                                ECommerceLoginCubit.get(context).changePasswordVisibility();
                              },
                              onSubmit: (value)
                              {
                                if(formKey.currentState.validate())
                                {
                                  ECommerceLoginCubit.get(context).userLogin(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                                }
                              },
                              validate: (String value)
                              {
                                if(value.isEmpty){
                                  return 'password is too short';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            defaultText(
                              text: 'هل نسيت كلمة المرور ؟',
                              color: Colors.grey[700],
                              alignment: Alignment.topRight,
                              fontSize: 18.0,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            defaultButton(
                                text: 'دخول',
                                background: Color(0xff333333),
                                function: ()
                                {
                                  if(formKey.currentState.validate())
                                  {
                                    ECommerceLoginCubit.get(context).userLogin(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    );
                                  }
                                }
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      defaultText(
                        text: 'أنشي حسابك',
                        fontSize: 20.0,
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: (){
                          navigateTo(context, ECommerceRegisterScreen());
                        },
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height *.06,
                            width: MediaQuery.of(context).size.width *.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xff9A5C6B),
                            ),
                            child: defaultText(
                              text: 'سجل الآن',
                              fontSize: 18.0,
                              color: Colors.white,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                      // // Container(
                      // //   decoration: BoxDecoration(
                      // //     borderRadius: BorderRadius.circular(
                      // //       12.0,
                      // //     ),
                      // //     color: Colors.grey.shade50,
                      // //   ),
                      // //   child: OutlinedButton(
                      // //     clipBehavior: Clip.antiAliasWithSaveLayer,
                      // //     onPressed: () {},
                      // //     child: Padding(
                      // //       padding: const EdgeInsets.symmetric(
                      // //         vertical: 15.0,
                      // //       ),
                      // //       child: Row(
                      // //         children: [
                      // //           Image(
                      // //             image: NetworkImage(
                      // //               'https://cdn.discordapp.com/attachments/734028401505075300/922296823211765772/unknown.png',
                      // //             ),
                      // //           ),
                      // //           SizedBox(
                      // //             width: 40.0,
                      // //           ),
                      // //           defaultText(
                      // //             text: 'Sign In with Facebook',
                      // //             fontSize: 18.0,
                      // //           ),
                      // //         ],
                      // //       ),
                      // //     ),
                      // //   ),
                      // // ),
                      // // SizedBox(
                      // //   height: 15.0,
                      // // ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(
                      //       12.0,
                      //     ),
                      //     color: Colors.grey.shade50,
                      //   ),
                      //   child: OutlinedButton(
                      //     onPressed: ()
                      //     {
                      //       //ECommerceCubit.get(context).googleSignInMethod();
                      //     },
                      //     child: Padding(
                      //       padding: const EdgeInsets.symmetric(
                      //         vertical: 15.0,
                      //       ),
                      //       child: Row(
                      //         children: [
                      //           Image(
                      //             image: NetworkImage(
                      //               'https://cdn.discordapp.com/attachments/734028401505075300/922296975427244122/unknown.png',
                      //             ),
                      //           ),
                      //           SizedBox(
                      //             width: 20.0,
                      //           ),
                      //           defaultText(
                      //             text: 'تسجيل الدخول عبر البريد الألكتروني',
                      //             fontSize: 18.0,
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
