import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/tools/custom_painter/custom_painter.dart';
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
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    );
    var bodyTextStyle = TextStyle(
      fontFamily: "ComfortBold",
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    );
    var captionTextStyle = TextStyle(
      fontFamily: "ComfortBold",
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    );
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: CustomPaint(
            painter: ShapeOne(),
          ),
        ),
        SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/myimg.jpg",
                      height: SizeConfig.heightMultiplier * 20,
                      width: SizeConfig.heightMultiplier * 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Hi There !",
                        style: headerTitleStyle,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Text(
                        "I,m a \nFlutter developer",
                        style: bodyTextStyle,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Text(
                        "I,m software developer and focus on Flutter \nand passion for learn more about Kotlin and \nNative in android .",
                        style: captionTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BottomSocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
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
