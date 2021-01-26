import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/tools/custom_painter/custom_painter.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/tools/url_launcher/custom_url_launcher.dart';
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

class _BrowserBodyState extends State<BrowserBody>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> imageAnimation;
  Animation<double> titleAnimation;
  Animation<double> bodyAnimation;
  Animation<double> captionAnimation;
  Animation<double> bottomBarAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 2,
      ),
    )..forward();
    imageAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          curve: Interval(0.1, 0.2, curve: Curves.ease),
          parent: animationController),
    );
    titleAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          curve: Interval(0.2, 0.4, curve: Curves.ease),
          parent: animationController),
    );
    bodyAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          curve: Interval(0.4, 0.6, curve: Curves.ease),
          parent: animationController),
    );
    captionAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          curve: Interval(0.6, 0.8, curve: Curves.ease),
          parent: animationController),
    );
    bottomBarAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          curve: Interval(0.8, 1.0, curve: Curves.ease),
          parent: animationController),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
        return SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeTransition(
                    opacity: imageAnimation,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/myimg.jpg",
                        height: SizeConfig.heightMultiplier * 20,
                        width: SizeConfig.heightMultiplier * 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  Column(
                    children: [
                      FadeTransition(
                        opacity: titleAnimation,
                        child: Text(
                          "Mahmoud Eslami",
                          style: titleSize,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      FadeTransition(
                        opacity: bodyAnimation,
                        child: Text(
                          "I,m a Flutter developer",
                          style: bodySize,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      FadeTransition(
                        opacity: captionAnimation,
                        child: Text(
                          "I,m software developer and focus on Flutter \nand passion for learn more about Kotlin and \nNative in android .",
                          style: captionSize,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Text(
                        'Skills : ',
                        style: captionSize,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/dart.png',
                            width: SizeConfig.widthMultiplier * 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/images/flutter.png',
                            width: SizeConfig.widthMultiplier * 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/images/githubb.png',
                            width: SizeConfig.widthMultiplier * 5,
                          ),
                        ],
                      ),
                      Text(
                        'Familiar with : ',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/django.png',
                            width: SizeConfig.widthMultiplier * 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/images/mysql.png',
                            width: SizeConfig.widthMultiplier * 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/images/python.png',
                            width: SizeConfig.widthMultiplier * 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/images/java.png',
                            width: SizeConfig.widthMultiplier * 5,
                          ),
                        ],
                      ),
                      Text(
                        'Wish List : ',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/kotlin.png',
                            width: SizeConfig.widthMultiplier * 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              FadeTransition(
                opacity: bottomBarAnimation,
                child: BottomSocialBar(),
              ),
            ],
          ),
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
        GestureDetector(
          onTap: () {
            CustomUrlLauncher.emailUrlLauncher(
                url: "https://github.com/mahmoud-eslami");
          },
          child: Image.asset(
            'assets/images/github.png',
            width: SizeConfig.widthMultiplier * 4,
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 3,
        ),
        GestureDetector(
          onTap: () {
            CustomUrlLauncher.emailUrlLauncher(
                url: "https://www.instagram.com/bigproblembig/");
          },
          child: Image.asset(
            'assets/images/instagram.png',
            width: SizeConfig.widthMultiplier * 4,
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 3,
        ),
        GestureDetector(
          onTap: () {
            CustomUrlLauncher.emailUrlLauncher(
                url: "https://www.linkedin.com/in/mahmoud-eslami-182351197/");
          },
          child: Image.asset(
            'assets/images/linkedin.png',
            width: SizeConfig.widthMultiplier * 4,
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 3,
        ),
        GestureDetector(
          onTap: () {
            CustomUrlLauncher.emailUrlLauncher(
                url: "https://twitter.com/es_mahmoud_");
          },
          child: Image.asset(
            'assets/images/twitter.png',
            width: SizeConfig.widthMultiplier * 4,
          ),
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
