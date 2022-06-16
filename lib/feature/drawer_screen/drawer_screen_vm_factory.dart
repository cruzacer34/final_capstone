import 'package:final_capstone/feature/drawer_screen/drawer_screen_connector.dart';
import 'package:final_capstone/state/actions/actions_drawer.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/utilities/app_router.dart';
import 'package:flutter/cupertino.dart';

class DrawerScreenFactory extends VmFactory<AppState, DrawerScreenConnector> {
  final BuildContext context;

  DrawerScreenFactory({required this.context});

  @override
  Vm fromStore() {
    return DrawerScreenVM(
      menuIndex: state.menuIndex,
      goToHomeScreen: () {
        dispatch(GoToAnotherPageAction(index: 0));
        Navigator.of(context).popAndPushNamed('/home-screen');
      },
      goToBusinessCardScreen: () {
        dispatch(GoToAnotherPageAction(index: 1));
        Navigator.of(context).popAndPushNamed('/business-card-screen');
      },
      goToTimeTrackingScreen: () {
        dispatch(GoToAnotherPageAction(index: 2));
        Navigator.of(context).popAndPushNamed(
          '/time-tracking-screen',
          arguments: TimeTrackingScreenArguments(
            chosenDate: DateTime.now(),
          ),
        );
      },
    );
  }
}

class DrawerScreenVM extends Vm {
  final int menuIndex;
  final Function() goToHomeScreen;
  final Function() goToBusinessCardScreen;
  final Function() goToTimeTrackingScreen;

  DrawerScreenVM({
    required this.menuIndex,
    required this.goToHomeScreen,
    required this.goToBusinessCardScreen,
    required this.goToTimeTrackingScreen,
  }) : super(equals: [menuIndex]);
}
