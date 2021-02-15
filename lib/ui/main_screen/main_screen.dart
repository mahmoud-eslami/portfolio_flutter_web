import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/tools/url_launcher/custom_url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainScreenBrowser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          TopBar(),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('About'),
        Text('Projects'),
        Text('Contact'),
      ],
    );
  }
}
