import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_tv/config/resources/dimensions.dart';
import 'package:simple_tv/config/router/page_routes.dart';
import 'package:simple_tv/features/feature_sign_in/sign_in_cubit/sign_in_cubit.dart';
import 'package:simple_tv/general_app/bloc/auth_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          userSignedIn: () => context.pushReplacement(AppPathRoutes.channels),
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.paddingM),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Hello',
                      style: theme.textTheme.headlineLarge,
                    ),
                    Text(
                      'Sign in to your account',
                      style: theme.textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ],
                ),
                _SignInForm(theme: theme),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SignInForm extends StatefulWidget {
  const _SignInForm({required this.theme});

  final ThemeData theme;

  @override
  State<_SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<_SignInForm> {
  var _isObscure = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final signInCubit = context.read<SignInCubit>();
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'User name',
            style: widget.theme.textTheme.titleMedium,
          ),
          TextFormField(
            controller: _emailController,
            decoration: _createInputDecoration(
              hintText: 'Enter your user name',
              icon: Icons.person_outline_outlined,
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => value != null && value.isNotEmpty
                ? null
                : 'This field is required',
          ),
          const SizedBox(height: Dimensions.gapS),
          Text(
            'Password',
            style: widget.theme.textTheme.titleMedium,
          ),
          TextFormField(
            controller: _passwordController,
            decoration: _createInputDecoration(
              hintText: 'Enter your password',
              icon: Icons.lock_outline_sharp,
              isObscure: _isObscure,
            ),
            obscureText: _isObscure,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => value != null && value.isNotEmpty
                ? null
                : 'This field is required',
          ),
          const SizedBox(height: Dimensions.gapXL),
          SizedBox(
            width: double.infinity,
            child: BlocBuilder<SignInCubit, SignInState>(
              builder: (context, state) => ElevatedButton(
                onPressed: state.maybeMap(
                  waitingResponse: (_) => null,
                  orElse: () => () {
                    if (_formkey.currentState!.validate()) {
                      signInCubit.signIn(
                        _emailController.text,
                        _passwordController.text,
                      );
                    }
                  },
                ),
                child: const Text('Sign in'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _createInputDecoration({
    required String hintText,
    required IconData icon,
    bool? isObscure,
  }) =>
      InputDecoration(
        icon: Icon(icon),
        hintText: hintText,
        suffixIcon: isObscure != null
            ? IconButton(
                onPressed: _showObscureText,
                icon: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                ),
              )
            : null,
      );
  void _showObscureText() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
}
