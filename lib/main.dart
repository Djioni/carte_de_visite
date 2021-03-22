import 'package:visit_card/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/app_theme.dart';
import 'ui/activity/welcome/welcome_act.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) async {

    runApp(VisitCard());
  });
}

//void main() => runApp(MyApp());

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VisitCard',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: WelcomeActivity(),
      routes: Routes.routes,

    );
  }
}


