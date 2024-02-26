import 'package:carousel_slider/carousel_slider.dart';
import 'package:ewallet_bloc/shared/screen_utils.dart';
import 'package:ewallet_bloc/shared/theme.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  final List<String> _titles = [
    "Grow Your \nFinancial Today",
    "Build From\nZero to Freedom",
    "Start Together",
  ];

  final List<String> _subTitles = [
    "Our system is helping you to\nachieve a better goal",
    "We provide tips for you so that\nyou can adapt easier",
    "We will guide you to where\nyou wanted it too",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Image.network(
                "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                height: ScreenUtils(context).screenHeight * 0.5,
                fit: BoxFit.cover,
              ),
              Image.network(
                "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                height: ScreenUtils(context).screenHeight * 0.5,
                fit: BoxFit.cover,
              ),
              Image.network(
                "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                height: ScreenUtils(context).screenHeight * 0.5,
                fit: BoxFit.cover,
              ),
            ],
            options: CarouselOptions(
              height: ScreenUtils(context).screenHeight * 0.5,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            carouselController: _carouselController,
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  _titles[_currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  _subTitles[_currentIndex],
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                _currentIndex == 2
                    ? Column(
                        children: [
                          Container(
                            height: ScreenUtils(context).screenHeight * 0.06,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Get Started",
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 24,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Sign In",
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            height: 12,
                            width: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: _currentIndex == 0
                                  ? blueColor
                                  : lightBackgroundColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 12,
                            width: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: _currentIndex == 1
                                  ? blueColor
                                  : lightBackgroundColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: 12,
                            width: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: _currentIndex == 2
                                  ? blueColor
                                  : lightBackgroundColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              _carouselController.nextPage();
                            },
                            radius: 30,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: purpleColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: whiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
