import 'package:flutter/material.dart';
import 'package:uscholarcrm/provider/controller.dart';
import 'package:uscholarcrm/utils/constants.dart';

import 'package:uscholarcrm/views/auth/loggin.dart';

import 'package:provider/provider.dart';
import 'package:uscholarcrm/views/home/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Controller(),
        ),
      ],
      child: MaterialApp(
        title: 'CRM',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: white),
          useMaterial3: true,
          fontFamily: 'PublicSans',
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
