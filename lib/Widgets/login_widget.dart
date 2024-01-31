import 'package:flutter/material.dart';
import 'package:form_animation/Widgets/input_field.dart';

class Login extends StatelessWidget {
  final PageController pageController;
  const Login({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: style.headlineLarge,
            ),
            const SizedBox(height: 30),
            InputField(
                style: style, hint: 'Email', hintText: 'example@email.com'),
            const SizedBox(height: 20),
            InputField(style: style, hint: 'Password', hintText: '#######'),
            const SizedBox(height: 30),
            FilledButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: style.bodySmall,
                ),
                TextSpan(
                  text: 'Register',
                  style: style.bodySmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationColor: Colors.white,
                  ),
                ),
              ])),
            )
          ],
        ),
      ),
    );
  }
}
