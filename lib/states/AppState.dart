import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

import '../config.dart';

part 'AppState.g.dart';


@JsonSerializable()
@immutable
class AppState {
  final String version;
  final String account;
  final String post;
  final String publish;
  final String user;

  AppState({
    String version,
    String account,
    String post,
    String publish,
    String user,
  })  : this.version = version ?? Config.packageInfo.version,
        this.account = account ?? 'account ',
        this.post = post ?? 'post',
        this.publish = publish ?? 'publish',
        this.user = user ?? 'user';

  AppState copyWith({
    String version,
    String account,
    String post,
    String publish,
    String user,
    }){
   return AppState(version: version ?? this.version,
        account: account ?? this.account,
        post: post ?? this.post,
        publish :publish ?? this.publish,
        user : user ?? this.user);
   }

   //json  to AppState
  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  //AppState to json
  Map<String, dynamic> toJson() => _$AppStateToJson(this);
}
