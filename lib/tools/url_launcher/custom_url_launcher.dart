
import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomUrlLauncher {
  static void emailUrlLauncher({String url}) async {
    if (kIsWeb) {
      window.open(url, 'Link');
    } else {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
}
