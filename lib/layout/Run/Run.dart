import 'package:flutter/material.dart';
import 'package:flutter_create_framework/util/router_util.dart';

// 首屏启动页

class Run extends StatefulWidget {
  @override
  _RunState createState() => _RunState();
}

class _RunState extends State<Run> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 500),(){
      RouterUtil.pushReplacementNamed(context, "/Home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("启动页"),
      ),
    );
  }
}
