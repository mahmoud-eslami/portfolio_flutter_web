import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/tools/url_launcher/custom_url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainScreenMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MobileCustomAppBar(),
      backgroundColor: AppColors.bgColor,
      body: MobileBody(),
    );
  }
}

class MobileBody extends StatefulWidget {
  @override
  _MobileBodyState createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> imageAnimation;
  Animation<double> titleAnimation;
  Animation<double> bodyAnimation;
  Animation<double> captionAnimation;
  Animation<double> skillsAnimation;
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
          curve: Interval(0.2, 0.35, curve: Curves.ease),
          parent: animationController),
    );
    bodyAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          curve: Interval(0.35, 0.55, curve: Curves.ease),
          parent: animationController),
    );
    captionAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          curve: Interval(0.55, 0.75, curve: Curves.ease),
          parent: animationController),
    );
    skillsAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          curve: Interval(0.75, 0.87, curve: Curves.ease),
          parent: animationController),
    );
    bottomBarAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          curve: Interval(0.87, 1.0, curve: Curves.ease),
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
          color: AppColors.textColor,
        );
        var subTitleSize = TextStyle(
          fontFamily: "ComfortBold",
          fontSize:
          (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
              ? 15
              : 10,
          color: AppColors.textColor,
        );
        var captionSize = TextStyle(
          fontFamily: "ComfortBold",
          fontSize:
          (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
              ? 12
              : 9,
          color: AppColors.textColor,
        );
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.heightMultiplier * 1),
              Column(
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
                    height: SizeConfig.heightMultiplier * 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          FadeTransition(
                            opacity: titleAnimation,
                            child: Text(
                              "Mahmoud Eslami 👋🏻",
                              style: titleSize,
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          FadeTransition(
                            opacity: bodyAnimation,
                            child: Text(
                              "Flutter developer",
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
                              style: subTitleSize,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 10,
                      ),
                      FadeTransition(
                        opacity: skillsAnimation,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Skills : ',
                              style: captionSize,
                            ),
                            SizedBox(height: SizeConfig.widthMultiplier * 1,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/dart.png',
                                  width: SizeConfig.widthMultiplier * 4,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/images/flutter.png',
                                  width: SizeConfig.widthMultiplier * 4,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/images/githubb.png',
                                  width: SizeConfig.widthMultiplier * 4,
                                ),SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/images/trello.png',
                                  width: SizeConfig.widthMultiplier * 4,
                                ),
                              ],
                            ),
                            SizedBox(height: SizeConfig.widthMultiplier * 1,),
                            Text(
                              'Familiar with : ',
                              style: captionSize,
                            ),
                            SizedBox(height: SizeConfig.widthMultiplier * 1,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/django.png',
                                  width: SizeConfig.widthMultiplier * 4,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/images/mysql.png',
                                  width: SizeConfig.widthMultiplier * 4,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/images/python.png',
                                  width: SizeConfig.widthMultiplier * 4,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/images/java.png',
                                  width: SizeConfig.widthMultiplier * 4,
                                ),
                              ],
                            ),
                            SizedBox(height: SizeConfig.widthMultiplier * 1,),
                            Text(
                              'Learn for the future : ',
                              style: captionSize,
                            ),
                            SizedBox(height: SizeConfig.widthMultiplier * 1,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/kotlin.png',
                                  width: SizeConfig.widthMultiplier * 4,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 10,
              ),
              FadeTransition(
                opacity: bottomBarAnimation,
                child: MobileBottomSocialBar(),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
            ],
          ),
        );
      },
    );
  }
}

class MobileBottomSocialBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            CustomUrlLauncher.urlLauncher(
                url: "https://github.com/mahmoud-eslami");
          },
          child: Image.asset(
            'assets/images/github.png',
            width: SizeConfig.widthMultiplier * 4,
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 5,
        ),
        GestureDetector(
          onTap: () {
            CustomUrlLauncher.urlLauncher(
                url: "https://www.instagram.com/bigproblembig/");
          },
          child: Image.asset(
            'assets/images/instagram.png',
            width: SizeConfig.widthMultiplier * 4,
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 5,
        ),
        GestureDetector(
          onTap: () {
            CustomUrlLauncher.urlLauncher(
                url: "https://www.linkedin.com/in/mahmoud-eslami-182351197/");
          },
          child: Image.asset(
            'assets/images/linkedin.png',
            width: SizeConfig.widthMultiplier * 4,
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 5,
        ),
        GestureDetector(
          onTap: () {
            CustomUrlLauncher.urlLauncher(
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

class MobileCustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var topButtonStyle = TextStyle(
          fontSize:
          (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
              ? 20
              : 10,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor,
        );

        var imagePadding = (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
            ? 8.0
            : 18.0;
        return AppBar(
          leading: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(imagePadding),
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
