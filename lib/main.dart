import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';

import 'config/theme/app_theme.dart';

void main() {
  runApp(KlopKbApp());
}

class KlopKbApp extends StatelessWidget {
  KlopKbApp({super.key});
  AppTheme get theme => AppTheme();
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: theme.lightTheme,
    );
  }
}
