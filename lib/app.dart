import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';


import 'page/FirstPage.dart';
import 'page/SecoundPage.dart';
import 'factory.dart';
import 'states/AppState.dart';
import 'theme.dart' as AppTheme;
import 'config.dart';


class MyApp extends StatelessWidget {
  final logger = Factory().getLogger('app');
  final Store<AppState> store;

  MyApp(this.store) {
    logger.info(
        'Config(debug: ${Config.debug}, loggerLevel: ${Config.loggerLevel})');
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: Config.packageInfo.appName,
        theme: AppTheme.Theme.theme,
        //路由
        routes: {
          '/' : (context) => FirstPage(),
          '/toSec' : (context) => SecoundPage()
        },
      ),
    );
  }
}
