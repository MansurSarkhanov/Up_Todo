import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:up_todo/core/constants/strings.dart';
import 'package:up_todo/presentation/components/button/auth_button.dart';
import 'package:up_todo/presentation/components/or_divider.dart';

import '../../components/input/custom_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24, top: 80, bottom: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LoginStrings.login,
                style: textTheme.bodyMedium,
              ),
              sizedBoxH(50),
              Text(
                LoginStrings.email,
                style: textTheme.bodySmall,
              ),
              sizedBoxH(8),
              CustomField(hintText: 'Enter Email', controller: _emailController),
              sizedBoxH(24),
              Text(
                LoginStrings.password,
                style: textTheme.bodySmall,
              ),
              sizedBoxH(8),
              CustomField(
                hintText: "*********",
                controller: _passwordController,
                isShowIcon: false,
              ),
              sizedBoxH(50),
              const AuthButton(text: LoginStrings.login),
              sizedBoxH(50),
              const OrDivider(),
              sizedBoxH(50),
              const AuthButton(
                text: LoginStrings.login,
                isGoogle: true,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                          text: LoginStrings.anAccount,
                          style: textTheme.bodySmall?.copyWith(color: Colors.grey.shade400),
                        ),
                        TextSpan(
                            text: " ${LoginStrings.register}",
                            style: textTheme.bodySmall,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.goNamed('register');
                              }),
                      ])),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

SizedBox sizedBoxH(double height) {
  return SizedBox(
    height: height,
  );
}
