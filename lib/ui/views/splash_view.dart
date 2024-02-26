import 'package:ewallet_bloc/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/screen_utils.dart';
import 'onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const OnboardingView()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBackgroundColor,
        body: Center(
          child: SizedBox(
            height: ScreenUtils(context).screenHeight * 0.2,
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
        ));
  }
}
