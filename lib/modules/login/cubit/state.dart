
abstract class ECommerceLoginStates {}

class ECommerceLoginInitialStates extends ECommerceLoginStates {}

class ECommerceLoginLoadingStates extends ECommerceLoginStates {}

class ECommerceLoginSuccessStates extends ECommerceLoginStates {
  final String uId;

  ECommerceLoginSuccessStates(this.uId);
}

class ECommerceLoginErrorStates extends ECommerceLoginStates {
  final String error;

  ECommerceLoginErrorStates(this.error);
}

class ECommerceChangePasswordVisibilityState extends ECommerceLoginStates {}

class ECommerceSignInLoadingState extends ECommerceLoginStates{}

class ECommerceSignInSuccessState extends ECommerceLoginStates{}

class ECommerceSignInErrorState extends ECommerceLoginStates{}