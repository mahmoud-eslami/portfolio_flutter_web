import 'package:flutter/material.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:portfolio/tools/size_config/size_config.dart';
import 'package:portfolio/tools/url_launcher/custom_url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OldMobileScreen extends StatefulWidget {
  @override
  _OldMobileScreenState createState() => _OldMobileScreenState();
}

class _OldMobileScreenState extends State<OldMobileScreen> {
  ScrollController _scrollController;
  final introPageKey = GlobalKey();
  final projectWidgetKey = GlobalKey();
  final aboutMeWidgetKey = GlobalKey();
  final contactMeWidgetKey = GlobalKey();

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
                MobileIntroWidget(
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
                  contactTitleOnTap: () {
                    Scrollable.ensureVisible(
                      contactMeWidgetKey.currentContext,
                      duration: Duration(seconds: 1),
                      curve: Curves.ease,
                    );
                  },
                ),
                MobileAboutMeWidget(widgetKey: aboutMeWidgetKey),
                MobileProjectWidget(
                  widgetKey: projectWidgetKey,
                ),
                MobileContactMeWidget(
                  widgetKey: contactMeWidgetKey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileContactMeWidget extends StatelessWidget {
  final GlobalKey widgetKey;

  const MobileContactMeWidget({
    Key key,
    @required this.widgetKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widgetKey,
      height: MediaQuery.of(context).size.height,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var bigTitleTheme = TextStyle(
            color: AppColors.bgColor,
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
            color: AppColors.buttonColor,
            fontSize:
            (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                ? 19
                : 15,
            fontWeight: FontWeight.w600,
          );
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 12,
                width: MediaQuery.of(context).size.width,
                color: AppColors.buttonColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      AppString.letsTalkToMe,
                      style: bigTitleTheme,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/email.png',
                    width: SizeConfig.imageSizeMultiplier * 5,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 4,
                  ),
                  Text(
                    AppString.summeryTitle,
                    style: skillTitleTheme,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/phone-call.png',
                    width: SizeConfig.imageSizeMultiplier * 5,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 4,
                  ),
                  Text(
                    AppString.number,
                    style: skillTitleTheme,
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

class MobileAboutMeWidget extends StatelessWidget {
  final GlobalKey widgetKey;

  const MobileAboutMeWidget({Key key, @required this.widgetKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widgetKey,
      height: MediaQuery.of(context).size.height + 200,
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var bigTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize:
            (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                ? 70
                : 60,
            fontWeight: FontWeight.bold,
          );
          var mediumTitleTheme = TextStyle(
            color: AppColors.textColor,
            fontSize:
            (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                ? 27
                : 23,
            fontWeight: FontWeight.w600,
          );
          var smallTitleTheme = TextStyle(
            color: AppColors.buttonColor,
            fontSize:
            (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                ? 20
                : 19,
            fontWeight: FontWeight.bold,
          );
          var skillTitleTheme = TextStyle(
            color: AppColors.bgColor,
            fontSize:
            (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
                ? 20
                : 19,
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
                    width: SizeConfig.widthMultiplier * 60,
                    child: OutlineButton(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          AppString.muResume,
                          style: mediumTitleTheme.copyWith(
                            color: AppColors.buttonColor,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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

class MobileProjectWidget extends StatelessWidget {
  final GlobalKey widgetKey;

  const MobileProjectWidget({Key key, @required this.widgetKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widgetKey,
      height: MediaQuery.of(context).size.height + 100,
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
                MobileProjectItem(
                    seeProjectFunc: () {
                      CustomUrlLauncher.urlLauncher(
                          url: AppString.guessWhatLink);
                    },
                    date: AppString.guessWhatDate,
                    title: AppString.guessWhatTitle,
                    description: AppString.guessWhatDescription,
                    imgPath: 'assets/images/guess_what.png'),
                MobileProjectItem(
                    seeProjectFunc: () {
                      CustomUrlLauncher.urlLauncher(url: AppString.ketoUrl);
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

class MobileProjectItem extends StatelessWidget {
  final String date, title, description, imgPath;
  final Function seeProjectFunc;

  const MobileProjectItem({
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
              ? 50
              : 35,
          fontWeight: FontWeight.w300,
        );
        var mediumTitleTheme = TextStyle(
          color: AppColors.textColor,
          fontSize:
          (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
              ? 30
              : 23,
          fontWeight: FontWeight.w300,
        );
        var smallTitleTheme = TextStyle(
          color: AppColors.buttonColor,
          fontSize:
          (sizingInformation.deviceScreenType == DeviceScreenType.desktop)
              ? 20
              : 15,
          fontWeight: FontWeight.w300,
        );
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
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

class MobileIntroWidget extends StatelessWidget {
  final GlobalKey widgetKey;
  final Function projectTitleOnTap, aboutTitleOnTap, contactTitleOnTap;

  const MobileIntroWidget({
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
      height: MediaQuery.of(context).size.height + 200,
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
                MobileTopBar(
                  projectTitleOnTap: projectTitleOnTap,
                  aboutTitleOnTap: aboutTitleOnTap,
                  contactTitleOnTap: contactTitleOnTap,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 20,
                ),
                MobileImageWidget(),
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
                MobileSocialAccountWidget()
              ],
            ),
          );
        },
      ),
    );
  }
}

class MobileImageWidget extends StatelessWidget {
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

class MobileSocialAccountWidget extends StatelessWidget {
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
            width: SizeConfig.widthMultiplier * 8,
            height: SizeConfig.widthMultiplier * 8,
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
            width: SizeConfig.widthMultiplier * 8,
            height: SizeConfig.widthMultiplier * 8,
          ),
          onPressed: () {
            CustomUrlLauncher.urlLauncher(url: AppString.linkedinUrl);
          },
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            'assets/images/trello.png',
            width: SizeConfig.widthMultiplier * 8,
            height: SizeConfig.widthMultiplier * 8,
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
            width: SizeConfig.widthMultiplier * 8,
            height: SizeConfig.widthMultiplier * 8,
          ),
          onPressed: () {
            CustomUrlLauncher.urlLauncher(url: AppString.twiterUrl);
          },
        ),
      ],
    );
  }
}

class MobileTopBar extends StatelessWidget {
  final Function projectTitleOnTap, aboutTitleOnTap, contactTitleOnTap;

  const MobileTopBar({
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
