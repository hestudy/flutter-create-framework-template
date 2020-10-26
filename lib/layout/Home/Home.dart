import 'package:flutter/material.dart';
import 'package:flutter_create_framework/generated/l10n.dart';
import 'package:flutter_create_framework/util/location_storge_util.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  initLanguage()async{
    String language = LocationStrogeUtil().get("language");
    if(language==null||language.isEmpty){
      await LocationStrogeUtil().set("language", "zh");
      S.load(Locale("zh"));
    }else{
      S.load(Locale(language));
    }
  }

  // 获取国际化
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    initLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).app_name),
        actions: <Widget>[
          FlatButton(onPressed: (){
            Navigator.of(context).pushReplacementNamed("/changeLanguage");
          }, child: Text(S.of(context).change_language)),
        ],
      ),
      body: Center(
        child: Text("demo"),
      ),
    );
  }
}





