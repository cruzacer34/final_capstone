import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/feature/business_card_screen/business_card_screen.dart';
import 'package:final_capstone/state/actions/actions_profiles.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:final_capstone/feature/home_screen/home_screen_vm_factory.dart';

class BusinessCardScreenConnector extends StatelessWidget {
  static const String route = '/business-card-screen';

  const BusinessCardScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeScreenVM>(
      onInit: (store) => store.dispatch(GetInitialProfilesAction()),
      vm: () => HomeScreenFactory(),
      builder: (context, vm) => BusinessCardScreen(
        myProfile: vm.myProfile,
        supervisorProfile: vm.supervisorProfile,
        isLoggingIn: vm.isLoggingIn,
      ),
    );
  }
}
