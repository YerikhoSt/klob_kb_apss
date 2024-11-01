import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:klob_kb_apps/config/router/app_router.dart';
import 'package:klob_kb_apps/util/constants/app_resources.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.router.replace(const HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(AppIcons.imgSplash, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
