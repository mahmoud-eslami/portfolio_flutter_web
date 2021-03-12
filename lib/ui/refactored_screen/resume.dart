import 'package:flutter/material.dart';
import 'package:portfolio/resource/strings.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          introductionWidget(),
          summaryWidget(),
          skillWidget(),
          experienceWidget(),
          projectsWidget(),
          openSourceWidget(),
          socialMediaWidget(),
        ],
      ),
    );
  }

  Widget introductionWidget() {
    return Column(
      children: [
        SelectableText(AppString.myNameTitle),
        SelectableText(AppString.location),
        SelectableText(AppString.email),
        SelectableText(AppString.number),
        SelectableText(AppString.linkedinCaption),
      ],
    );
  }

  Widget summaryWidget() {
    return Column(
      children: [
        SelectableText(AppString.summeryTitle),
        SelectableText(AppString.introduceMySelf),
      ],
    );
  }


  Widget experienceWidget(){
    return Column(
       children: [
         SelectableText(AppString.experienceTitle),
       ],
    );
  }
  Widget skillWidget(){
    return Column(
       children: [
         SelectableText(AppString.skillTitle),
       ],
    );
  }  Widget openSourceWidget(){
    return Column(
       children: [
         SelectableText(AppString.openSourceTitle),
       ],
    );
  }

  Widget socialMediaWidget() {
    return Column(
      children: [
        SelectableText(AppString.socialMediaTitle),
      ],
    );
  }

  Widget projectsWidget() {
    return Column(
      children: [
        SelectableText(AppString.projectsTitle),
      ],
    );
  }
}
