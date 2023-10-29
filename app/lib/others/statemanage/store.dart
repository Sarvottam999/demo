// import 'package:flutter_redux/flutter_redux.dart';
// 3. Create the store:
import 'package:day1/main.dart';
import 'package:day1/others/statemanage/reducer.dart';
import 'package:redux/redux.dart';

final store = Store<AppState>(
  appReducer,
  initialState: AppState(),
);

// data
class AppState {
  int counter;

  AppState({this.counter = 0});
}

