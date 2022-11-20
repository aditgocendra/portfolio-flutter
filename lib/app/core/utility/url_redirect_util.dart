import 'package:url_launcher/url_launcher.dart';

class UtilityUrlRedirect {
  Future launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
}
