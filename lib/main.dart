import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'src/config/router/app_router.dart';
 void main()async {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return OKToast(child: MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerDelegate: appRouter.delegate(),
    routeInformationParser: appRouter.defaultRouteParser(),
   ));
  }
  
}