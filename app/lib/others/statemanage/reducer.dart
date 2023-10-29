 
 // Create the reducer:
import 'package:day1/main.dart';
import 'package:day1/others/statemanage/action.dart';
import 'package:day1/others/statemanage/store.dart';


AppState appReducer(AppState state, dynamic action) {
  if (action == Actions.incrementCounter) {
    return AppState(counter: state.counter + 1);
  }
  return state;
}