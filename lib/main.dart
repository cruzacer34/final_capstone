import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/final_capstone.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final store = Store<AppState>(initialState: AppState.initialState());
  initializeDateFormatting().then((_) => runApp(FinalCapstone(store: store)));
}
