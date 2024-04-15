import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_tv/config/resources/dimensions.dart';
import 'package:simple_tv/config/router/page_routes.dart';
import 'package:simple_tv/features/feature_channels_list/cubit/channels_list_cubit.dart';
import 'package:simple_tv/general_app/bloc/auth_bloc.dart';
import 'package:simple_tv/widgets/channel_card_widget.dart';

class ChannelsList extends StatelessWidget {
  const ChannelsList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ChannelsListCubit, ChannelsListState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Channels ',
            style: theme.textTheme.headlineSmall,
          ),
          actions: state.maybeWhen(
            fetching: null,
            initial: null,
            orElse: () => [
              IconButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signOut());
                  context.pushReplacement(AppPathRoutes.signIn);
                },
                icon: const Icon(Icons.logout_rounded),
              ),
            ],
          ),
        ),
        body: state.maybeWhen(
          fetched: (list) => Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Dimensions.paddingM),
            child: GridView.builder(
              itemCount: list.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => ChannelCardWidget(
                channel: list[index],
                onTap: () => context.pushNamed(
                  AppNameRoutes.videoPlayer,
                  extra: list[index],
                ),
              ),
            ),
          ),
          orElse: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
      ),
    );
  }
}
