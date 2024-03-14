import 'package:alpa/config/theme/colors.dart';
import 'package:alpa/core/injector/dependency_injection.dart';
import 'package:alpa/feature/dashboard/domain/usecase/dashboard_usecase.dart';
import 'package:alpa/feature/dashboard/presentation/ui/dashboard.dart';
import 'package:alpa/flavors.dart';
import 'package:flutter/material.dart';

intializeApp() {
  serviceLocatorIntializer();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    EnvConfig.initializeAppFlavor(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alpa Tech',
      theme: ThemeData(
        colorScheme: MyColor.lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: MyColor.darkColorScheme,
        useMaterial3: true,
      ),
      home: Dashboard(dashboardUsecase: getIt<DashboardUsecase>()),
    );
  }
}
