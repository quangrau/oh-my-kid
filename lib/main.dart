import 'package:flutter/material.dart';
import 'package:oh_my_kids/src/screens/alphabet/alphabet_view.dart';
import 'package:oh_my_kids/src/screens/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oh My Kids!',
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case AlphabetView.routeName:
                return const AlphabetView();
              case HomeView.routeName:
              default:
                return const HomeView();
            }
          },
        );
      },
    );
  }
}
