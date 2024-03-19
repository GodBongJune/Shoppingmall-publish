import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:shoppingmall/ui/pages/splash_page/splash_page.dart';

import 'core/constant/move.dart';
import 'core/constant/theme.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      child: const Shoppingmall(),
    ),
  );
}

class Shoppingmall extends StatelessWidget {
  const Shoppingmall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      routes: getRouters(),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      theme: theme(),
    );
  }
}
