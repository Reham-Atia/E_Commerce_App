abstract class ECommerceRegisterStates {}

class ECommerceRegisterInitialState extends ECommerceRegisterStates {}

class ECommerceRegisterLoadingState extends ECommerceRegisterStates {}

class ECommerceRegisterSuccessState extends ECommerceRegisterStates {}

class ECommerceRegisterErrorState extends ECommerceRegisterStates
{
  final String error;

  ECommerceRegisterErrorState(this.error);
}


class ECommerceUserCreateSuccessState extends ECommerceRegisterStates {}

class ECommerceUserCreateErrorState extends ECommerceRegisterStates
{
  final String error;

  ECommerceUserCreateErrorState(this.error);
}

class ECommerceRegisterChangePasswordVisibilityState extends ECommerceRegisterStates {}