import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/ui/refactored_screen/resume.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:lottie/lottie.dart';

class DesktopScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var bigTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 50 : 40,
            fontWeight: FontWeight.w300,
          );
          var mediumTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 30 : 20,
            fontWeight: FontWeight.w300,
          );
          var smallTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 18 : 14,
            fontWeight: FontWeight.w300,
          );
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectableText(
                    AppString.myNameTitle,
                    style: bigTitleTheme,
                  ),
                  SelectableText(
                    AppString.myMajor,
                    style: mediumTitleTheme,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  Container(
                    width: SizeConfig.widthMultiplier * 60,
                    child: SelectableText(
                      AppString.introduceMySelf,
                      style: smallTitleTheme,
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
                        overlayColor: MaterialStateProperty.all(
                          AppColors.buttonColor,
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
              SizedBox(
                width: SizeConfig.widthMultiplier * 10,
              ),
              Lottie.asset(
                'assets/images/work.json',
                repeat: false,
                width: SizeConfig.widthMultiplier * 70
              ),

            ],
          );
        },
      ),
    );
  }
}
