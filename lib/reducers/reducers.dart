


import 'package:flutter_app/Actions/Actions.dart';
import 'package:flutter_app/reducers/test.dart';
import 'package:flutter_app/states/AppState.dart';

AppState appReducer(AppState state, action) {
  if (action is ResetStateAction) {
    return AppState();
  } else if (action is ResetPublishStateAction) {
//    return state.copyWith(
//      publish: PublishState(),
//    );
    return AppState();
  } else {
//    return state.copyWith(
//      account: accountReducer(state.account, action),
//      publish: publishReducer(state.publish, action),
//      post: postReducer(state.post, action),
//      user: userReducer(state.user, action),
//    );
    return tempReducer(state , action);
  }
}
