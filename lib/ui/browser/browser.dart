import 'package:flutter/material.dart';
import 'package:portfolio/tools/size_config/size_config.dart';

class MainScreenBrowser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Color(0xfff4f1de),
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/images/m.png'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Work"),
              SizedBox(
                width: SizeConfig.widthMultiplier * 5,
              ),
              Text("Contact"),
              SizedBox(
                width: SizeConfig.widthMultiplier * 5,
              ),
              Text("About"),
            ],
          ),
        ),
      ],
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
