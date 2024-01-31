import 'package:flutter/material.dart';
import 'package:form_animation/Widgets/blured_box.dart';
import 'package:form_animation/Widgets/login_widget.dart';
import 'package:form_animation/Widgets/signup_widget.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController()
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double progress = pageController.hasClients ? pageController.page ?? 0 : 0;

    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          height: 450 + progress * 80,
          width: 420,
          child: BluredBox(
            child: PageView(
              controller: pageController,
              children: [
                Login(pageController: pageController),
                SignUp(pageController: pageController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
