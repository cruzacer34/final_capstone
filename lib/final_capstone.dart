import 'package:async_redux/async_redux.dart';
import 'package:final_capstone/feature/login_screen.dart';
import 'package:final_capstone/state/app_state.dart';
import 'package:final_capstone/utilities/app_router.dart';
import 'package:flutter/cupertino.dart';

class FinalCapstone extends StatelessWidget {
  final Store<AppState> store;

  const FinalCapstone({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: const CupertinoApp(
        initialRoute: LoginScreen.route,
        onGenerateRoute: AppRouter.generateRoute,
        theme: CupertinoThemeData(
          barBackgroundColor: CupertinoColors.white,
          scaffoldBackgroundColor: CupertinoColors.systemGrey6,
        ),
      ),
    );
  }
}
