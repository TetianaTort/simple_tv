import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_tv/api/models/response_models/channel_model.dart';
import 'package:simple_tv/api/repository/channels_repo.dart';
import 'package:simple_tv/api/repository/user_packages_repo.dart';
import 'package:simple_tv/config/router/page_routes.dart';
import 'package:simple_tv/data/user_repo.dart';
import 'package:simple_tv/di/service_locator.dart';
import 'package:simple_tv/features/feature_channels_list/cubit/channels_list_cubit.dart';
import 'package:simple_tv/features/feature_channels_list/ui/channels_list_page.dart';
import 'package:simple_tv/features/feature_initial/initial_page.dart';
import 'package:simple_tv/features/feature_sign_in/ui/sign_in_page.dart';
import 'package:simple_tv/features/feature_video_player/ui/video_player_page.dart';

GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: AppPathRoutes.initial,
  routes: [
    GoRoute(
      name: AppNameRoutes.initial,
      path: AppNameRoutes.initial,
      builder: (context, state) => const InitialPage(),
      routes: [
        GoRoute(
          name: AppNameRoutes.signIn,
          path: AppNameRoutes.signIn,
          builder: (context, state) => const SignInPage(),
        ),
        GoRoute(
          name: AppNameRoutes.channels,
          path: AppNameRoutes.channels,
          builder: (context, state) => BlocProvider(
            create: (context) => ChannelsListCubit(
              sl<UserRepository>(),
              sl<UserPackagesRepo>(),
              sl<ChannelsRepo>(),
            ),
            child: const ChannelsList(),
          ),
          routes: [
            GoRoute(
              path: AppNameRoutes.videoPlayer,
              name: AppNameRoutes.videoPlayer,
              builder: (context, state) {
                final channel = state.extra! as ChannelModel;
                return VideoPlayerPage(
                  channel: channel,
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
