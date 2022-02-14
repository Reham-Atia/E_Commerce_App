abstract class ECommerceStates {}

class ECommerceInitialState extends ECommerceStates{}

class ECommerceChangeBottomNavState extends ECommerceStates{}

class ECommerceChangeBottomSheetState extends ECommerceStates{}

class ECommerceGetCatLoadingState extends ECommerceStates{}

class ECommerceGetCatSuccessState extends ECommerceStates{}

class ECommerceGetCatErrorState extends ECommerceStates{
  final String error;

  ECommerceGetCatErrorState(this.error);
}


