import 'package:url_launcher/url_launcher.dart';

class NavigationService {
  void openLink({required Uri link}) => launchUrl(
        link,
        mode: LaunchMode.externalApplication,
      );
}
