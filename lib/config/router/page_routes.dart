class AppNameRoutes {
  static const String initial = '/';
  static const String signIn = 'sign_in';
  static const String channels = 'channels';
  static const String videoPlayer = 'video_player';
}

class AppPathRoutes {
  static const String initial = AppNameRoutes.initial;
  static const String signIn = '$initial${AppNameRoutes.signIn}';
  static const String channels = '$initial${AppNameRoutes.channels}';
  static const String videoPlayer = '$channels/${AppNameRoutes.videoPlayer}';
}
