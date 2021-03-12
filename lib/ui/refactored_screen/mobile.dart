import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/ui/refactored_screen/resume.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var bigTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize:
                (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                    ? 50
                    : 40,
            fontWeight: FontWeight.w300,
          );
          var mediumTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize:
                (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                    ? 30
                    : 20,
            fontWeight: FontWeight.w300,
          );
          var smallTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize:
                (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                    ? 18
                    : 14,
            fontWeight: FontWeight.w300,
          );
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: SizeConfig.widthMultiplier * 80,
                    height: SizeConfig.heightMultiplier * 30,
                    child: Lottie.asset(
                      'assets/images/work.json',
                      repeat: false,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
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
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 23,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(
                              0,
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.transparent,
                            ),
                            overlayColor: MaterialStateProperty.all(
                              AppColors.buttonColor,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            side: MaterialStateProperty.all(
                              BorderSide(
                                color: AppColors.buttonColor,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Get.to(ResumeScreen());
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              AppString.muResume,
                              style: smallTitleTheme,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
