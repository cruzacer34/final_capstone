import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/apis/profile_api.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:final_capstone/state/actions/actions_loading.dart';

class GetInitialProfilesAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final myProfile = await ProfileApi.fetchMyProfile();
    final supervisorProfile = await ProfileApi.fetchSupervisorProfile();
    return state.copyWith(
      myProfile: myProfile,
      supervisorProfile: supervisorProfile,
    );
  }

  @override
  void before() => dispatch(LoadingAction(isLoading: true));

  @override
  void after() => dispatch(LoadingAction(isLoading: false));
}

class GetAssociatesProfilesAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final associatesProfiles = await ProfileApi.fetchAssociates();
    return state.copyWith(associatesProfiles: associatesProfiles);
  }

  @override
  void before() => dispatch(LoadingAction(isLoading: true));

  @override
  void after() => dispatch(LoadingAction(isLoading: false));
}

class GetAllProfiles extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final allProfiles = await ProfileApi.fetchAllProfiles();
    return state.copyWith(allProfiles: allProfiles);
  }

  @override
  void before() => dispatch(LoadingAction(isLoading: true));

  @override
  void after() => dispatch(LoadingAction(isLoading: false));
}