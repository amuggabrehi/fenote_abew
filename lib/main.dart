import 'package:fenote_abew/auth/login/login.dart';
import 'package:fenote_abew/auth/register/register.dart';

import '../landing/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/main_screen.dart';
import '../utils/constants.dart';
import '../utils/providers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providers,
        child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier notifier, child){
            return MaterialApp(
                title: Constants.appName,
                debugShowCheckedModeBanner: false,
                theme: notifier.dark! ?  Constants.darkTheme : Constants.lightTheme,
                home: Landing(),
                routes: {
                  TabScreen.routeName : (ctx)=>TabScreen(),
                  Register.routeName : (ctx)=>Register(),
                  Login.routeName : (ctx)=>Login()
                },
            );
          },
        ),
    );
  }
}


