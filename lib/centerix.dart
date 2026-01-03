import 'package:center/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'core/routing/router.dart';

class Centerix extends StatelessWidget {
  const Centerix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Centerix',
      initialRoute: Routes.splash,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
