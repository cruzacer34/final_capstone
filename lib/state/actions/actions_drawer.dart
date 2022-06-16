import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/state/app_state.dart';

class GoToAnotherPageAction extends ReduxAction<AppState> {
  final int index;

  GoToAnotherPageAction({required this.index});

  @override
  AppState reduce() {
    if(index == 0){
      return state.copyWith(menuIndex: 0);
    } else if(index == 1){
      return state.copyWith(menuIndex: 1);
    } else {
      return state.copyWith(menuIndex: 2);
    }
  }
}
