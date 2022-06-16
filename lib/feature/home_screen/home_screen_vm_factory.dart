import 'package:final_capstone/state/app_state.dart';
import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/models/profile.dart';
import 'package:final_capstone/feature/home_screen/home_screen_connector.dart';

class HomeScreenFactory extends VmFactory<AppState, HomeScreenConnector> {
  @override
  Vm fromStore() {
    return HomeScreenVM(
      myProfile: state.myProfile,
      supervisorProfile: state.supervisorProfile,
      isLoggingIn: state.isLoading,
    );
  }
}

class HomeScreenVM extends Vm {
  final Profile myProfile;
  final Profile supervisorProfile;
  final bool isLoggingIn;

  HomeScreenVM({
    required this.myProfile,
    required this.supervisorProfile,
    required this.isLoggingIn,
  }) : super(equals: [
          myProfile,
          supervisorProfile,
          isLoggingIn,
        ]);
}
