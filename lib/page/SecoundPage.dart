import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/states/AppState.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

class SecoundPage extends StatefulWidget {
  SecoundPage({
    Key key,
  }) : super(key: key);



  @override
  State<StatefulWidget> createState() => _SecoudPageState();
}

class _SecoudPageState extends State<SecoundPage>{


  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      builder: (context, store) => Scaffold(
        appBar: AppBar(title: Text('Sec Page')),
        body: Center(
          child: Text('${store.state.account} page data'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.exit_to_app),
        ),
      ),
    );
  }


}
