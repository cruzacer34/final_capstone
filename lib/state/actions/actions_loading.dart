import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/state/app_state.dart';

class LoadingAction extends ReduxAction<AppState> {
  final bool? isLoading;

  LoadingAction({
    this.isLoading,
  });

  @override
  AppState reduce() {
    return state.copyWith(
      isLoading: isLoading ?? state.isLoading,
    );
  }
}
