import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DesktopScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: Duration(seconds: 6),
    )
      ..forward()
      ..addListener(() {});
    final animationDouble =
        Tween<double>(begin: 1, end: .2).animate(animationController);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: AppColors.bgColor,
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var bigTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize:
                (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                    ? 80
                    : 60,
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
                    ? 20
                    : 15,
            fontWeight: FontWeight.w300,
          );
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/itMan.png',
                width: SizeConfig.widthMultiplier * 80,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppString.myNameTitle,
                    style: bigTitleTheme,
                  ),
                  Text(
                    AppString.myMajor,
                    style: mediumTitleTheme,
                  ),
                  Container(
                    width: SizeConfig.widthMultiplier * 60,
                    child: Text(
                      AppString.introduceMySelf,
                      style: smallTitleTheme,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(
                        0,
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      side: MaterialStateProperty.all(
                        BorderSide(
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        AppString.downloadCv,
                        style: smallTitleTheme,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
