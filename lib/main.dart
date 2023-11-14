import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var router = AppRouter();
  runApp(MaterialApp.router(
    builder: (context, child) => ResponsiveBreakpoints.builder(
      child: child!,
      breakpoints: [
        const Breakpoint(start: 0, end: 450, name: MOBILE),
        const Breakpoint(start: 451, end: 800, name: TABLET),
        const Breakpoint(start: 801, end: 1920, name: DESKTOP),
        const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ],
    ),
    routerConfig: router.config(),
  ));
}
