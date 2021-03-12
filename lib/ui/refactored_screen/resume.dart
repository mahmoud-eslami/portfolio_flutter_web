import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
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
          fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 10 : 8,
          fontWeight: FontWeight.w300,
        );
        var urlTheme = TextStyle(
          color: Colors.blueAccent,
          fontSize: (sizingInformation.deviceScreenType == DeviceScreenType.desktop) ? 20 : 15,
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
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  reachMeWidget(
                    title: bigTitleTheme,
                    description: descriptionTheme,
                  ),
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
          AppString.introduceMySelf,
          style: description,
        ),
      ],
    );
  }

  Widget experienceWidget({TextStyle title, description}) {
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
        SelectableText('Flutter developer'),
        SelectableText('Freelancer'),
        SelectableText('8 month'),
        const SizedBox(
          height: 20,
        ),
        SelectableText('Flutter developer'),
        SelectableText('Dropp Technologies Group (internship)'),
        SelectableText('8 month'),
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

  Widget openSourceWidget({TextStyle title, description}) {
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
      ],
    );
  }

  Widget reachMeWidget({TextStyle title, description}) {
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
      ],
    );
  }
}
