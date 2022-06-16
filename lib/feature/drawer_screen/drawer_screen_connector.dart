import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/feature/drawer_screen/drawer_screen.dart';
import 'package:final_capstone/feature/drawer_screen/drawer_screen_vm_factory.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:flutter/cupertino.dart';

class DrawerScreenConnector extends StatelessWidget {
  static const String route = '/drawer-screen';

  const DrawerScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DrawerScreenVM>(
      vm: () => DrawerScreenFactory(context: context),
      builder: (context, vm) => DrawerScreen(
        menuIndex: vm.menuIndex,
        goToHomeScreen: vm.goToHomeScreen,
        goToBusinessCardScreen: vm.goToBusinessCardScreen,
        goToTimeTrackingScreen: vm.goToTimeTrackingScreen,
      ),
    );
  }
}
