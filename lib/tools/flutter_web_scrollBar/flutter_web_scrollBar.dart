import 'package:flutter/material.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';

class CustomFlutterScrollBar extends StatelessWidget {
  final Function scrollCallBack;

  const CustomFlutterScrollBar({Key key, @required this.scrollCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterWebScroller(
      scrollCallBack,
      scrollBarBackgroundColor: Colors.white.withOpacity(.2),
      scrollBarWidth: 20.0,
      dragHandleColor: Colors.grey,
      dragHandleBorderRadius: 2.0,
      dragHandleHeight: 40.0,
      dragHandleWidth: 15.0,
    );
  }
}
