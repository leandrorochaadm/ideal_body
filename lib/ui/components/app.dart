import 'package:flutter/material.dart';
import 'package:ideal_body/presenter/value_notifier_body_ideal.dart';
import 'package:ideal_body/ui/pages/pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corpo Ideal',
      home: HomePage(presenter: ValueNotifierBodyIdeal()),
    );
  }
}
