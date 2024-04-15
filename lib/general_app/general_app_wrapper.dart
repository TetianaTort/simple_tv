import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_tv/api/client/simple_tv_api_client.dart';
import 'package:simple_tv/data/auth_token_repo.dart';
import 'package:simple_tv/data/user_repo.dart';
import 'package:simple_tv/di/service_locator.dart';
import 'package:simple_tv/features/feature_sign_in/sign_in_cubit/sign_in_cubit.dart';
import 'package:simple_tv/general_app/bloc/auth_bloc.dart';
import 'package:simple_tv/general_app/general_app.dart';

class GeneralAppWrapper extends StatelessWidget {
  const GeneralAppWrapper({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SignInCubit(
              sl<SimpleTVApiClient>(),
              sl<UserRepository>(),
            ),
          ),
          BlocProvider(
            lazy: false,
            create: (context) => AuthBloc(
              sl<AuthTokenRepository>(),
              BlocProvider.of<SignInCubit>(context),
              sl<UserRepository>(),
            ),
          ),
        ],
        child: const GeneralApp(),
      );
}
