import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/tools/size_config/size_config.dart';

class MainScreenBrowser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppColors.bgColor,
      body: BrowserBody(),
    );
  }
}

class BrowserBody extends StatefulWidget {
  @override
  _BrowserBodyState createState() => _BrowserBodyState();
}

class _BrowserBodyState extends State<BrowserBody> {
  @override
  Widget build(BuildContext context) {
    var headerTitleStyle = TextStyle(
      fontFamily: "ComfortBold",
      fontSize: SizeConfig.textMultiplier * 4,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    );
    var bodyTextStyle = TextStyle(
      fontFamily: "ComfortBold",
      fontSize: SizeConfig.textMultiplier * 2,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    );
    var captionTextStyle = TextStyle(
      fontFamily: "ComfortBold",
      fontSize: SizeConfig.textMultiplier * 1,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    );
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi There 😝!",
                style: headerTitleStyle,
              ),
              Text(
                "I,m Mahmoud Eslami a Flutter developer",
                style: bodyTextStyle,
              ),
              Text(
                "I,m software developer and focus on Flutter \nand passion for learn more about Kotlin and Native in android .",
                style: captionTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Material(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              "assets/images/myimg.jpg",
              height: SizeConfig.heightMultiplier * 30,
            ),
          )
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    var topButtonStyle = TextStyle(
      fontFamily: "ComfortBold",
      fontSize: SizeConfig.textMultiplier * 1,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    );
    return AppBar(
      leading: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/ml.png'),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Work",
                  style: topButtonStyle,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 2,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Contact",
                  style: topButtonStyle,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 2,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "About",
                  style: topButtonStyle,
                ),
              ),
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
