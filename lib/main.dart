import 'package:flutter/material.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/ui/main_screen/main_screen.dart';
import 'package:portfolio/ui/mobile_screen/mobile_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
                primarySwatch: Colors.blueGrey,
                fontFamily: "OpenSansR",
                brightness: Brightness.dark,
              ),
              home: ResponsiveBuilder(
                builder: (context, sizingInformation) {
                  return (sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop)
                      ? MainScreenBrowser()
                      : MainScreenMobile();
                },
              ),
            );
          },
        );
      },
    );
  }
}
