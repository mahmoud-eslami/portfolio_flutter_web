import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/tools/url_launcher/custom_url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainScreenBrowser extends StatefulWidget {
  @override
  _MainScreenBrowserState createState() => _MainScreenBrowserState();
}

class _MainScreenBrowserState extends State<MainScreenBrowser> {
  ScrollController _scrollController;
  final introPageKey = GlobalKey();
  final projectWidgetKey = GlobalKey();
  final aboutMeWidgetKey = GlobalKey();

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails details) {
    setState(() {
      _scrollController.position.moveTo(details.globalPosition.dy * 3.5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        mini: true,
        backgroundColor: AppColors.buttonColor,
        onPressed: () {
          Scrollable.ensureVisible(
            introPageKey.currentContext,
            duration: Duration(seconds: 1),
            curve: Curves.ease,
          );
        },
        child: Icon(
          Icons.keyboard_arrow_up,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                IntroWidgetBrowserView(
                  widgetKey: introPageKey,
                  projectTitleOnTap: () {
                    Scrollable.ensureVisible(
                      projectWidgetKey.currentContext,
                      duration: Duration(seconds: 1),
                      curve: Curves.ease,
                    );
                  },
                  aboutTitleOnTap: () {
                    Scrollable.ensureVisible(
                      aboutMeWidgetKey.currentContext,
                      duration: Duration(seconds: 1),
                      curve: Curves.ease,
                    );
                  },
                  contactTitleOnTap: () {},
                ),
                AboutMeWidgetBrowserView(widgetKey: aboutMeWidgetKey),
                ProjectWidgetBrowserView(
                  widgetKey: projectWidgetKey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AboutMeWidgetBrowserView extends StatelessWidget {
  final GlobalKey widgetKey;

  const AboutMeWidgetBrowserView({Key key, @required this.widgetKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widgetKey,
      height: MediaQuery.of(context).size.height,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var bigTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize:
                (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                    ? 60
                    : 50,
            fontWeight: FontWeight.bold,
          );
          var mediumTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize:
                (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                    ? 27
                    : 20,
            fontWeight: FontWeight.w600,
          );
          var smallTitleTheme = TextStyle(
            color: AppColors.buttonColor,
            fontSize:
                (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                    ? 15
                    : 10,
            fontWeight: FontWeight.bold,
          );
          var skillTitleTheme = TextStyle(
            color: AppColors.bgColor,
            fontSize:
                (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                    ? 19
                    : 12,
            fontWeight: FontWeight.w600,
          );
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  Text(
                    AppString.aboutMeEmoji,
                    style: bigTitleTheme,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Text(
                    AppString.introduceMySelf,
                    style: mediumTitleTheme,
                  ),
                  Text(""),
                  Text(
                    AppString.skills,
                    style:
                        mediumTitleTheme.copyWith(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            AppString.myMainSkills,
                            style: smallTitleTheme,
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.buttonColor,
                            ),
                            width: 100,
                            height: 40,
                            child: Center(
                                child: Text(
                              AppString.dart,
                              style: skillTitleTheme,
                            )),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.buttonColor,
                            ),
                            width: 100,
                            height: 40,
                            child: Center(
                                child: Text(
                              AppString.flutter,
                              style: skillTitleTheme,
                            )),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.buttonColor,
                            ),
                            width: 100,
                            height: 40,
                            child: Center(
                                child: Text(
                              AppString.git,
                              style: skillTitleTheme,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 10,
                      ),
                      Column(
                        children: [
                          Text(
                            AppString.myExtraSkills,
                            style: smallTitleTheme,
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.buttonColor,
                            ),
                            width: 100,
                            height: 40,
                            child: Center(
                                child: Text(
                              AppString.java,
                              style: skillTitleTheme,
                            )),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.buttonColor,
                            ),
                            width: 100,
                            height: 40,
                            child: Center(
                                child: Text(
                              AppString.python,
                              style: skillTitleTheme,
                            )),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.buttonColor,
                            ),
                            width: 100,
                            height: 40,
                            child: Center(
                                child: Text(
                              AppString.django,
                              style: skillTitleTheme,
                            )),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.buttonColor,
                            ),
                            width: 100,
                            height: 40,
                            child: Center(
                                child: Text(
                              AppString.trello,
                              style: skillTitleTheme,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 30,
                    child: OutlineButton(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          AppString.downloadCv,
                          style: mediumTitleTheme.copyWith(
                            color: AppColors.buttonColor,
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      borderSide: BorderSide(
                        color: AppColors.buttonColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProjectWidgetBrowserView extends StatelessWidget {
  final GlobalKey widgetKey;

  const ProjectWidgetBrowserView({Key key, @required this.widgetKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widgetKey,
      height: MediaQuery.of(context).size.height,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var bigTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize:
                (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                    ? 60
                    : 50,
            fontWeight: FontWeight.bold,
          );
          return SingleChildScrollView(
            child: Column(
              children: [
                ProjectItemBrowserView(
                    seeProjectFunc: () {
                      CustomUrlLauncher.urlLauncher(
                          url: AppString.guessWhatLink);
                    },
                    date: AppString.guessWhatDate,
                    title: AppString.guessWhatTitle,
                    description: AppString.guessWhatDescription,
                    imgPath: 'assets/images/guess_what.png'),
                ProjectItemBrowserView(
                    seeProjectFunc: () {
                      CustomUrlLauncher.urlLauncher(url: AppString.ketoLink);
                    },
                    date: AppString.ketoDate,
                    title: AppString.ketoTitle,
                    description: AppString.ketoDescription,
                    imgPath: 'assets/images/keto.png'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ProjectItemBrowserView extends StatelessWidget {
  final String date, title, description, imgPath;
  final Function seeProjectFunc;

  const ProjectItemBrowserView({
    Key key,
    @required this.date,
    @required this.title,
    @required this.description,
    @required this.imgPath,
    @required this.seeProjectFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var bigTitleTheme = TextStyle(
          color: AppColors.textColor,
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 40
                  : 30,
          fontWeight: FontWeight.w300,
        );
        var mediumTitleTheme = TextStyle(
          color: AppColors.textColor,
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 20
                  : 15,
          fontWeight: FontWeight.w300,
        );
        var smallTitleTheme = TextStyle(
          color: AppColors.buttonColor,
          fontSize:
              (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                  ? 15
                  : 10,
          fontWeight: FontWeight.w300,
        );
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Row(
            children: [
              Image.asset(
                imgPath,
                width: SizeConfig.imageSizeMultiplier * 18,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: bigTitleTheme,
                  ),
                  Text(
                    date,
                    style: smallTitleTheme,
                  ),
                  Text(
                    description,
                    style: mediumTitleTheme,
                  ),
                  FlatButton(
                    onPressed: seeProjectFunc,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      AppString.seeProjectBtn,
                      style: smallTitleTheme,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class IntroWidgetBrowserView extends StatelessWidget {
  final GlobalKey widgetKey;
  final Function projectTitleOnTap, aboutTitleOnTap, contactTitleOnTap;

  const IntroWidgetBrowserView({
    Key key,
    @required this.widgetKey,
    @required this.projectTitleOnTap,
    @required this.aboutTitleOnTap,
    @required this.contactTitleOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widgetKey,
      height: MediaQuery.of(context).size.height,
      child: ResponsiveBuilder(
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
          return SingleChildScrollView(
            child: Column(
              children: [
                TopBar(
                  projectTitleOnTap: projectTitleOnTap,
                  aboutTitleOnTap: aboutTitleOnTap,
                  contactTitleOnTap: contactTitleOnTap,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 6,
                ),
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
                SizedBox(
                  height: SizeConfig.heightMultiplier * 4,
                ),
                SocialAccountWidget()
              ],
            ),
          );
        },
      ),
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
        width: SizeConfig.imageSizeMultiplier * 23,
        height: SizeConfig.imageSizeMultiplier * 23,
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            'assets/images/github.png',
            width: SizeConfig.widthMultiplier * 6,
            height: SizeConfig.widthMultiplier * 6,
          ),
          onPressed: () {
            CustomUrlLauncher.urlLauncher(url: AppString.github);
          },
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            'assets/images/linkedin.png',
            width: SizeConfig.widthMultiplier * 6,
            height: SizeConfig.widthMultiplier * 6,
          ),
          onPressed: () {
            CustomUrlLauncher.urlLauncher(url: AppString.linkedin);
          },
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            'assets/images/trello.png',
            width: SizeConfig.widthMultiplier * 6,
            height: SizeConfig.widthMultiplier * 6,
          ),
          onPressed: () {
            CustomUrlLauncher.urlLauncher(url: AppString.trelloUrl);
          },
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            'assets/images/twitter.png',
            width: SizeConfig.widthMultiplier * 6,
            height: SizeConfig.widthMultiplier * 6,
          ),
          onPressed: () {
            CustomUrlLauncher.urlLauncher(url: AppString.twiter);
          },
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  final Function projectTitleOnTap, aboutTitleOnTap, contactTitleOnTap;

  const TopBar({
    Key key,
    @required this.projectTitleOnTap,
    @required this.aboutTitleOnTap,
    @required this.contactTitleOnTap,
  }) : super(key: key);

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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                AppString.aboutTitle,
                style: topBarTextTheme,
              ),
              onPressed: aboutTitleOnTap,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 5,
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  AppString.projectTitle,
                  style: topBarTextTheme,
                ),
                onPressed: projectTitleOnTap),
            SizedBox(
              width: SizeConfig.widthMultiplier * 5,
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  AppString.contactTitle,
                  style: topBarTextTheme,
                ),
                onPressed: contactTitleOnTap),
          ],
        );
      },
    );
  }
}
