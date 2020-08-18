import 'package:flutter_app/states/AppState.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

final tempReducer = combineReducers<AppState>([
  TypedReducer<AppState,_tempAction>(_change)
]);

AppState _change(AppState state , _tempAction action){

  return state.copyWith(account: action._tempCount);
}

class _tempAction {
  final _tempCount;
  _tempAction(this._tempCount);
}

ThunkAction<AppState> toSecAction() => (Store<AppState> store) async {
  //模拟网络操作
  await Future.delayed(Duration(seconds: 3));

  //返回结果
  print('action secound 3');
  //刷新界面  状态
  store.dispatch(_tempAction('toOne12312312'));
};