// importar


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upordown/config/router/app_router.dart';
import 'package:upordown/config/theme/theme.dart';

Future<void> main() async {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
     debugShowCheckedModeBanner: false,
     routerConfig: appRouter,
     theme: AppTheme().themeData,
    );
  }
}
