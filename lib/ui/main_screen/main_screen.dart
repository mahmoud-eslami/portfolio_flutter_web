import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainScreenBrowser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            BodyWidgetBrowserView(),
          ],
        ),
      ),
    );
  }
}

class BodyWidgetBrowserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var bigTitleTheme = TextStyle(
          color: AppColors.textColor,
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 100
                  : 80,
          fontWeight: FontWeight.w300,
        );
        var mediumTitleTheme = TextStyle(
          color: AppColors.textColor,
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 40
                  : 30,
          fontWeight: FontWeight.w300,
        );
        var smallTitleTheme = TextStyle(
          color: AppColors.textColor,
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 30
                  : 20,
          fontWeight: FontWeight.w300,
        );
        return Column(
          children: [
            SizedBox(height: SizeConfig.heightMultiplier * 5,),
            ImageWidget(),
            Text(
              AppString.helloTitle,
              style: bigTitleTheme,
            ),
            Text(
              AppString.myNameTitle,
              style: smallTitleTheme,
            ),
            Text(
              AppString.myMajor,
              style: smallTitleTheme,
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 4,),
            SocialAccountWidget()
          ],
        );
      },
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.asset(
        'assets/images/myimg.jpg',
        fit: BoxFit.cover,
        width: SizeConfig.imageSizeMultiplier * 20,
        height: SizeConfig.imageSizeMultiplier * 20,
      ),
    );
  }
}

class SocialAccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          child: Image.asset(
            'assets/images/github.png',
            width: SizeConfig.widthMultiplier * 6,
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Image.asset(
            'assets/images/linkedin.png',
            width: SizeConfig.widthMultiplier * 6,
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Image.asset(
            'assets/images/trello.png',
            width: SizeConfig.widthMultiplier * 6,
          ),
          onPressed: () {},
        ),
        FlatButton(
          child: Image.asset(
            'assets/images/twitter.png',
            width: SizeConfig.widthMultiplier * 6,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var topBarTextTheme = TextStyle(
          color: AppColors.textColor,
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 30
                  : 20,
          fontWeight: FontWeight.w300,
        );
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                child: Text(
                  AppString.aboutTitle,
                  style: topBarTextTheme,
                ),
                onPressed: () {}),
            SizedBox(
              width: SizeConfig.widthMultiplier * 5,
            ),
            FlatButton(
                child: Text(
                  AppString.projectTitle,
                  style: topBarTextTheme,
                ),
                onPressed: () {}),
            SizedBox(
              width: SizeConfig.widthMultiplier * 5,
            ),
            FlatButton(
                child: Text(
                  AppString.contactTitle,
                  style: topBarTextTheme,
                ),
                onPressed: () {}),
          ],
        );
      },
    );
  }
}
