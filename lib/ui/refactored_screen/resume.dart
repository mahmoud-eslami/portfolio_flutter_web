import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/tools/url_launcher/custom_url_launcher.dart';
import 'package:portfolio/ui/main_screen/main_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var bigTitleTheme = TextStyle(
          color: AppColors.textColor,
          fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 30 : 20,
          fontWeight: FontWeight.bold,
        );
        var descriptionTheme = TextStyle(
          color: AppColors.textColor,
          fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 20 : 15,
          fontWeight: FontWeight.w300,
        );
        var captionTheme = TextStyle(
          color: AppColors.textColor,
          fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 15 : 10,
          fontWeight: FontWeight.w300,
        );
        var urlTheme = TextStyle(
          color: Colors.blueAccent,
          fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 20 : 15,
          fontWeight: FontWeight.w300,
        );
        var miniUrlTheme = TextStyle(
          color: Colors.blueAccent,
          fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 15 : 10,
          fontWeight: FontWeight.w300,
        );
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  introductionWidget(
                    bigTitleStyle: bigTitleTheme,
                    urlStyle: urlTheme,
                    descriptionStyle: descriptionTheme,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  aboutMeWidget(
                    title: bigTitleTheme,
                    description: descriptionTheme,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  skillWidget(
                    title: bigTitleTheme,
                    description: descriptionTheme,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  experienceWidget(
                    title: bigTitleTheme,
                    description: descriptionTheme,
                    caption: captionTheme,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  projectsWidget(
                    title: bigTitleTheme,
                    description: descriptionTheme,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  openSourceWidget(
                    title: bigTitleTheme,
                    description: descriptionTheme,
                    caption: captionTheme,
                    url: miniUrlTheme,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  reachMeWidget(
                      title: bigTitleTheme, description: descriptionTheme, caption: captionTheme, url: miniUrlTheme),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget introductionWidget({TextStyle urlStyle, bigTitleStyle, descriptionStyle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          AppString.myNameTitle,
          style: bigTitleStyle,
        ),
        const SizedBox(
          height: 20,
        ),
        SelectableText(
          AppString.location,
          style: descriptionStyle,
        ),
        SelectableText(
          AppString.email,
          style: urlStyle,
        ),
        SelectableText(
          AppString.number,
          style: descriptionStyle,
        ),
        SelectableText(
          AppString.linkedinCaption,
          style: urlStyle,
        ),
      ],
    );
  }

  Widget aboutMeWidget({TextStyle title, description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          AppString.aboutMeTitle,
          style: title,
        ),
        const SizedBox(
          height: 20,
        ),
        SelectableText(
          AppString.aboutMe,
          style: description,
        ),
      ],
    );
  }

  Widget experienceWidget({TextStyle title, description, caption}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          AppString.experienceTitle,
          style: title,
        ),
        const SizedBox(
          height: 20,
        ),
        SelectableText(
          'Flutter developer',
          style: description,
        ),
        SelectableText(
          'Freelancer',
          style: caption,
        ),
        SelectableText(
          '1 year 2 month',
          style: caption,
        ),
        const SizedBox(
          height: 20,
        ),
        SelectableText(
          'Flutter developer',
          style: description,
        ),
        SelectableText(
          'Dropp Technologies Group (internship)',
          style: caption,
        ),
        SelectableText(
          '8 month',
          style: caption,
        ),
      ],
    );
  }

  Widget skillWidget({TextStyle title, description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          AppString.skillTitle,
          style: title,
        ),
        const SizedBox(
          height: 20,
        ),
        SelectableText(
          'Main Skills : ${AppString.flutter} / ${AppString.dart}  work with flutter and dart around 2 years',
          style: description,
        ),
        SelectableText(
          'Flutter Skills :',
          style: description,
        ),
        SelectableText(
          '- StateManagement : BLoC , Provider , Get X',
          style: description,
        ),
        SelectableText(
          '- Network handling : Dio , Https',
          style: description,
        ),
        SelectableText(
          '- dependency injection : get it , Get X',
          style: description,
        ),
        SelectableText(
          'Familiar with : ${AppString.django} / ${AppString.python}  I\'m working with django around 1 years and create some rest api as backend service',
          style: description,
        ),
        SelectableText(
          'Other Skills :',
          style: description,
        ),
        SelectableText(
          '- Git',
          style: description,
        ),
        SelectableText(
          '- Github',
          style: description,
        ),
        SelectableText(
          '- Trello as a collaboration tool',
          style: description,
        ),
        SelectableText(
          '- Scrum',
          style: description,
        ),
      ],
    );
  }

  Widget openSourceWidget({TextStyle title, description, caption, url}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          AppString.openSourceTitle,
          style: title,
        ),
        const SizedBox(
          height: 20,
        ),
        SelectableText(
          'BottomAnimation | Flutter , Dart',
          style: description,
        ),
        SelectableText(
          'A bottom navigation package with smooth animation',
          style: caption,
        ),
        SelectableText(
          'source code : https://github.com/mahmoud-eslami/bottom_animation',
          style: url,
        ),
        const SizedBox(
          height: 20,
        ),
        SelectableText(
          'Fake Wallpaper | Flutter , Dart',
          style: description,
        ),
        SelectableText(
          'In this sample use mvc for application architecture and use getx package for state management and navigation.\n data is fake but in future application will be integrate with wallpaper api.',
          style: caption,
        ),
        SelectableText(
          'source code : https://github.com/mahmoud-eslami/fake_wallpaper',
          style: url,
        ),
        const SizedBox(
          height: 20,
        ),
        SelectableText(
          'School Management | Django , python',
          style: description,
        ),
        SelectableText(
          'Using drf (Django rest framework) to create a service for managing school.',
          style: caption,
        ),
        SelectableText(
          'source code : https://github.com/mahmoud-eslami/schoolManagement',
          style: url,
        ),
      ],
    );
  }

  Widget reachMeWidget({TextStyle title, description, caption, url}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          AppString.reachMeTitle,
          style: title,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/github.png',
              width: SizeConfig.widthMultiplier * 5,
            ),
            const SizedBox(
              width: 10,
            ),
            SelectableText(
              AppString.github,
              style: url,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/linkedin.png',
              width: SizeConfig.widthMultiplier * 5,
            ),
            const SizedBox(
              width: 10,
            ),
            SelectableText(
              AppString.linkedinUrl,
              style: url,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/twitter.png',
              width: SizeConfig.widthMultiplier * 5,
            ),
            const SizedBox(
              width: 10,
            ),
            SelectableText(
              AppString.twiterUrl,
              style: url,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget projectsWidget({TextStyle title, description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          AppString.projectsTitle,
          style: title,
        ),
        const SizedBox(
          height: 20,
        ),
        ProjectItemBrowserView(
            date: AppString.guessWhatDate,
            title: AppString.guessWhatTitle,
            description: AppString.guessWhatDescription,
            imgPath: 'assets/images/guess_what.png'),
        const SizedBox(
          height: 20,
        ),
        ProjectItemBrowserView(
            date: AppString.ketoDate,
            title: AppString.ketoTitle,
            description: AppString.ketoDescription,
            imgPath: 'assets/images/keto.png'),
        const SizedBox(
          height: 20,
        ),
        ProjectItemBrowserView(
            date: AppString.cCurrencyDate,
            title: AppString.cCurrencyTitle,
            description: AppString.cCurrencyDescription,
            imgPath: 'assets/images/BNT.png'),
      ],
    );
  }
}
