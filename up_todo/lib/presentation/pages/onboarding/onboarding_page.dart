import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:up_todo/bloc/profile/profile_notifier.dart';
import 'package:up_todo/core/constants/colors.dart';
import 'package:up_todo/core/constants/strings.dart';
import 'package:up_todo/presentation/model/onboard_model.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final PageController controller = PageController();
    int currentIndex = 0;

    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: onboardItem.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 4,
                  dotWidth: 20,
                  dotColor: context.watch<ProfileNotifier>().isDarkMode ? Colors.white : Colors.grey.shade400,
                  activeDotColor: AppColors.primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 24),
                    child: Text(
                      OnboardingStrings.skip,
                      style: textTheme.bodySmall?.copyWith(color: Colors.grey),
                    ),
                  ),
                ),
               
                ElevatedButton(
                  onPressed: () {
                    currentIndex++;
                    if (currentIndex == 3) {
                      context.goNamed('login');
                      return;
                    }

                    controller.animateToPage(currentIndex,
                        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 24),
                    child: Text(
                      OnboardingStrings.next,
                      style: textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        itemCount: onboardItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Expanded(flex: 2, child: Image.asset(onboardItem[index].image)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Text(
                      onboardItem[index].title,
                      style: textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    onboardItem[index].description,
                    style: textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
