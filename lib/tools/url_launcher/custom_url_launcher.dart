import 'dart:html';

import 'package:flutter/foundation.dart';

// import 'package:universal_html/prefer_universal/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

class CustomUrlLauncher {
  static void emailUrlLauncher({String url}) async {
    if (kIsWeb) {
      // html.document.window.location.href = url;
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
