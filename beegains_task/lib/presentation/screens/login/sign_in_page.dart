// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/api_status.dart';
import '../../../core/common_functions.dart';
import '../../../core/common_widgets.dart';
import '../../../core/constants.dart';
import '../../widgets/textFiled_widget.dart';
import 'bloc/login_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool obscurePass = true;
  final userName = TextEditingController();
  final userPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: AppColors().kTextGreyColor,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        TextFieldWidget(
                          controller: userName,
                          hintText: 'Username',
                          validatorMessage: 'Please enter your username',
                          prefixIcon: Icons.person,
                        ),
                        kSizedBox20,
                        TextFieldWidget(
                          controller: userPassword,
                          hintText: 'Password',
                          validatorMessage: 'Please enter your password',
                          prefixIcon: Icons.password_rounded,
                          isPassword: true,
                        ),
                        const SizedBox(height: 80),
                        BlocListener<LoginBloc, LoginState>(
                            listener: (context, state) {
                              switch (state.loginState) {
                                case AppStatus.loading:

                                  //showLinearLoading(context, true, false);
                                  showCircularLoading(context, true, false);
                                  break;
                                case AppStatus.success:
                                  Navigator.pop(context);

                                  showSnackBar(
                                      context,
                                      'Logged In Successfully',
                                      AppColors().kSnackBarSuccessColor);
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  //Navigate to home screen
                                  Navigator.pushNamed(context, '/HomePage');

                                  break;
                                case AppStatus.failure:
                                  Navigator.pop(context);
                                  showSnackBar(
                                      context,
                                      'Invalid username / password',
                                      AppColors().kSnackBarErrorColor);
                                  FocusManager.instance.primaryFocus?.unfocus();

                                  break;
                                default:
                              }
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<LoginBloc>().add(OnLoginEvent(
                                      userName.text.trim(),
                                      userPassword.text.trim()));
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors().kButtonTealColor,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  padding: const EdgeInsets.fromLTRB(
                                      18, 18, 18, 15)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Sign In',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                          color: Colors.white)),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 45)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
