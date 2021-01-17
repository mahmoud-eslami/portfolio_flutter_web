import 'package:flutter/material.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/ui/browser/browser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Mahmoud eslami',
              theme: ThemeData(
                primarySwatch: Colors.amber,
              ),
              home: MainScreenBrowser(),
            );
          },
        );
      },
    );
  }
}
