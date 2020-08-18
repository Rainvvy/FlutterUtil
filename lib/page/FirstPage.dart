import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/reducers/test.dart';
import 'package:flutter_app/states/AppState.dart';
import 'package:flutter_redux/flutter_redux.dart';
class FirstPage extends StatelessWidget {
  FirstPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return StoreConnector<AppState,_AppStateViewModel>(

        converter: (store) => _AppStateViewModel(store.state.account),
        builder: (context,v){
          return  Scaffold(
            appBar: AppBar(
                title: Text('First Page')
            ),
            body: Center(
              child: Text(
                  'First page data  ${v._account}'
              ),

            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.exit_to_app),
              onPressed: (){
//                StoreProvider.of<AppState>(context).dispatch();
//                toSecAction(context);
                StoreProvider.of<AppState>(context).dispatch(toSecAction());   // reducers  文件夹里

//                print('action secound 313123121235235');
//                Navigator.of(context).pushNamed('/toSec');
              },
            ),
          );
        }
    );

  }

}





class _AppStateViewModel{
  final String _account;
  _AppStateViewModel(this._account);
}