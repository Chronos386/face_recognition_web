// presentation/pages/login_page.dart
import 'package:get_it/get_it.dart';
import '../widgets/card_block.dart';
import '../widgets/auth_button.dart';
import '/utils/preferences_keys.dart';
import 'package:flutter/material.dart';
import '../widgets/frw_text_field.dart';
import '../bloc/login_bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:face_recognition_web/res/generated/locale_keys.g.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _sharedPreferences = GetIt.instance<SharedPreferences>();

  @override
  void initState() {
    super.initState();
    _checkExistingSession();
  }

  void _checkExistingSession() {
    if (_sharedPreferences.getString(PreferencesKeys.USER_HASH) != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, 'mainPage');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;
    return BlocListener<LoginBloc, LoginState>(
      listener: _handleStateChanges,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: CardBlock(
                isMobile: isMobile,
                child: _buildLoginForm(isMobile),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(bool isMobile) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTitle(),
          const SizedBox(height: 32),
          _buildEmailField(),
          const SizedBox(height: 16),
          _buildPasswordField(),
          const SizedBox(height: 24),
          _buildLoginButton(),
          const SizedBox(height: 24),
          _buildFooterMessage(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      LocaleKeys.enter_login_pass.tr(),
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.w600,
        color: Colors.blueGrey[800],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildEmailField() {
    return FrwTextField(
      controller: _emailController,
      labelKey: LocaleKeys.email,
      prefixIcon: Icons.email,
      validator: (value) =>
      value!.isEmpty ? LocaleKeys.email_required.tr() : null,
      needBorder: true,
    );
  }

  Widget _buildPasswordField() {
    return FrwTextField(
      controller: _passwordController,
      labelKey: LocaleKeys.password,
      prefixIcon: Icons.lock,
      obscureText: _obscurePassword,
      showSuffixIcon: true,
      onSuffixPressed: () => setState(() => _obscurePassword = !_obscurePassword),
      validator: (value) =>
      value!.isEmpty ? LocaleKeys.password_required.tr() : null,
      needBorder: true,
    );
  }

  Widget _buildLoginButton() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return AuthButton(
          isLoading: state is LoginStateLoading,
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              context.read<LoginBloc>().add(
                LoginEventLogin(
                  _emailController.text,
                  _passwordController.text,
                ),
              );
            }
          },
        );
      },
    );
  }

  Widget _buildFooterMessage() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Text(
          state is LoginStateError ? state.error : LocaleKeys.no_account.tr(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: state is LoginStateError ? Colors.redAccent : Colors.grey[600],
            fontSize: 14,
          ),
        );
      },
    );
  }

  void _handleStateChanges(BuildContext context, LoginState state) {
    state.whenOrNull(
      successLoaded: (user) => Navigator.pushReplacementNamed(context, 'mainPage'),
      error: (error) => _showErrorSnackbar(error),
    );
  }

  void _showErrorSnackbar(String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}