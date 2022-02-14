import 'package:conditional_builder/conditional_builder.dart';
import 'package:e_commerce_app/layout/layout_screen.dart';
import 'package:e_commerce_app/modules/login/cubit/cubit.dart';
import 'package:e_commerce_app/modules/login/login_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/styles/colors.dart';
import 'package:e_commerce_app/shared/styles/icons_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';


class ECommerceRegisterScreen extends StatelessWidget
{
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => ECommerceRegisterCubit(),
      child: BlocConsumer<ECommerceRegisterCubit, ECommerceRegisterStates>(
        listener: (context, state)
        {
          if (state is ECommerceUserCreateSuccessState)
          {
            navigateAndFinish(context, LayoutScreen());
          }
        },
        builder: (context, state)
        {
          return Scaffold(
            backgroundColor: Color(0xffEFE6E9),
            appBar: AppBar(
              backgroundColor: Color(0xffEFE6E9),
              elevation: 0.0,
              // leading: IconButton(
              //   onPressed: (){
              //     navigateTo(context, LoginScreen());
              //   },
              //   icon: Icon(
              //     IconBroken.Arrow___Left_2,
              //     color: Colors.black,
              //   ),
              // ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'أنشئ حسابك',
                          style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        defaultTextFormField(
                          controller: nameController,
                          type: TextInputType.name,
                          validate: (String value)
                          {
                            if (value.isEmpty) {
                              return 'please enter your name';
                            }
                          },
                          label: 'الأسم',
                          prefix: Icons.person,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        defaultTextFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          validate: (String value) {
                            if (value.isEmpty) {
                              return 'please enter your email address';
                            }
                          },
                          label: 'البريد الإلكتروني',
                          prefix: Icons.email_outlined,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        defaultTextFormField(
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          label: 'كلمة المرور',
                          prefix: Icons.lock,
                          suffix: ECommerceRegisterCubit.get(context).suffix,
                          isPassword: ECommerceRegisterCubit.get(context).isPassword,
                          suffixPressed: (){
                            ECommerceRegisterCubit.get(context).changePasswordVisibility();
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
                        defaultTextFormField(
                          controller: phoneController,
                          type: TextInputType.phone,
                          validate: (String value) {
                            if (value.isEmpty) {
                              return 'please enter your phone number';
                            }
                          },
                          label: 'رقم الهاتف',
                          prefix: Icons.phone,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        ConditionalBuilder(
                          condition: state is! ECommerceRegisterLoadingState,
                          builder: (context) => defaultButton(
                            background: defaultColor,
                            function: () {
                              if (formKey.currentState.validate())
                              {
                                ECommerceRegisterCubit.get(context).userRegister(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  phone: phoneController.text,
                                );
                              }
                            },
                            text: 'تسجيل',
                            isUpperCase: true,
                          ),
                          fallback: (context) =>
                              Center(child: CircularProgressIndicator(
                                color: Color(0xffBB929C),
                              )),
                        ),
                      ],
                    ),
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