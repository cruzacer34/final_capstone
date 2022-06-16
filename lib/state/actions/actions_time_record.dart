import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/apis/time_record_api.dart';
import 'package:final_capstone/models/time_record.dart';
import 'package:final_capstone/state/actions/actions_loading.dart';
import 'package:final_capstone/state/app_state.dart';

class AddTimeRecordAction extends ReduxAction<AppState> {
  final TimeRecord timeRecord;
  final DateTime today;

  AddTimeRecordAction({
    required this.timeRecord,
    required this.today,
  });

  @override
  Future<AppState?> reduce() async {
    try {
      await TimeRecordApi.addTimeRecord(timeRecord, today);
    } catch (e) {
      rethrow;
    }
    return null;
  }

  @override
  void before() => dispatch(LoadingAction(isLoading: true));

  @override
  void after() => dispatch(LoadingAction(isLoading: false));
}

class GetTimeRecordsAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final timeRecords = await TimeRecordApi.fetchTimeRecords();
    return state.copyWith(timeRecords: timeRecords);
  }

  @override
  void before() => dispatch(LoadingAction(isLoading: true));

  @override
  void after() => dispatch(LoadingAction(isLoading: false));
}
