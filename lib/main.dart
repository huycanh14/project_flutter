import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:shared_preferences/shared_preferences.dart';
import 'app/router/router.gr.dart';

var initialRoute;
void main() async  {
  WidgetsFlutterBinding.ensureInitialized(); // The point is to add WidgetsFlutterBinding.ensureInitialized() in the first line of the main class
  await setInitialRoute();
  runApp(MyApp());
}

Future<void> setInitialRoute() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.getString('accountData') != null) {
    initialRoute = Routes.homeView;
  } else {
    initialRoute = Routes.loginView;
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator.builder<Router>(router: Router(),
          // pass anything navigation related to ExtendedNav instead of MaterialApp
          initialRoute: initialRoute
      ),
    );
  }
}