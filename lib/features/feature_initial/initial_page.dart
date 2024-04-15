import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_tv/config/resources/dimensions.dart';
import 'package:simple_tv/config/router/page_routes.dart';
import 'package:simple_tv/general_app/bloc/auth_bloc.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 1, end: 1.5).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          userSignedIn: () {
            Future.delayed(
              const Duration(seconds: 2),
              () => context.pushReplacement(AppPathRoutes.channels),
            );
          },
          userSignedOut: () {
            Future.delayed(
              const Duration(seconds: 2),
              () => context.pushReplacement(AppPathRoutes.signIn),
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Center(
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) => Transform.scale(
              scale: _animation.value,
              child: Icon(
                Icons.live_tv_rounded,
                size: Dimensions.imageSideXL,
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
