import 'package:flutter_create_framework/layout/Home/Home.dart';
import 'package:flutter_create_framework/layout/Run/Run.dart';
import 'package:flutter_create_framework/view/change_language_view.dart';

List<Map<String,dynamic>> Routes(){
  return [
    {
      "path":"/",
      "view":Run(),
    },
    {
      "path":"/Home",
      "view":Home(),
    },
    {
      "path":"/changeLanguage",
      "view":ChangeLanguage()
    }
//    //嵌套路由示例
//     {
//    //上层路由无需view
//       "path":"/busManage",
//       "children":[
//          //匹配规则为"/busManage/demo1"
//         {
//           "path":"/demo1",
//           "view":Demo1()
//         },{
//          //匹配规则为"/busManage/demo2/demo3"
//           "path":"/demo2",
//           "children":[
//             {
//               "path":"/demo3",
//               "view":Demo3()
//             }
//           ]
//         },
//       ]
//     }
  ];
}