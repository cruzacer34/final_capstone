import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/feature/home_screen/home_screen.dart';
import 'package:final_capstone/feature/home_screen/home_screen_vm_factory.dart';
import 'package:final_capstone/state/actions/actions_profiles.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenConnector extends StatelessWidget {
  static const String route = '/home-screen';

  const HomeScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeScreenVM>(
      onInit: (store) => store.dispatch(GetInitialProfilesAction()),
      vm: () => HomeScreenFactory(),
      builder: (context, vm) => HomeScreen(
        myProfile: vm.myProfile,
        supervisorProfile: vm.supervisorProfile,
        isLoggingIn: vm.isLoggingIn,
      ),
    );
  }
}
