import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/resource/strings.dart';
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
                summaryWidget(
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
                socialMediaWidget(
                  title: bigTitleTheme,
                  description: descriptionTheme,
                ),
              ],
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

  Widget summaryWidget({TextStyle title, description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          AppString.summeryTitle,
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

  Widget socialMediaWidget({TextStyle title, description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          AppString.socialMediaTitle,
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
