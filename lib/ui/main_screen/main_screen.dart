import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/tools/custom_painter/custom_painter.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var titleSize = TextStyle(
          fontFamily: "ComfortBold",
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 40
                  : 20,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor,
        );
        var bodySize = TextStyle(
          fontFamily: "ComfortBold",
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 20
                  : 15,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor,
        );
        var captionSize = TextStyle(
          fontFamily: "ComfortBold",
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 15
                  : 10,
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
            Center(
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
                          "Mahmoud Eslami",
                          style: titleSize,
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1,
                        ),
                        Text(
                          "I,m a Flutter developer",
                          style: bodySize,
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 2,
                        ),
                        Text(
                          "I,m software developer and focus on Flutter \nand passion for learn more about Kotlin and \nNative in android .",
                          style: captionSize,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 5,
                    ),
                    BottomSocialBar(),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class BottomSocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/github.png',
          width: SizeConfig.widthMultiplier * 5,
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 2,
        ),
        Image.asset(
          'assets/images/instagram.png',
          width: SizeConfig.widthMultiplier * 5,
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 2,
        ),
        Image.asset(
          'assets/images/linkedin.png',
          width: SizeConfig.widthMultiplier * 5,
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 2,
        ),
        Image.asset(
          'assets/images/twitter.png',
          width: SizeConfig.widthMultiplier * 5,
        ),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var topButtonStyle = TextStyle(
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 20
                  : 15,
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
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
