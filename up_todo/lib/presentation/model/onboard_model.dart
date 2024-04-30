import 'package:up_todo/core/constants/path/image_path.dart';
import 'package:up_todo/core/constants/strings.dart';
import 'package:up_todo/core/utility/extension/image_ext.dart';

class OnboardingModel {
  final String title;
  final String description;
  final String image;
  OnboardingModel({required this.title, required this.description, required this.image});
}

List<OnboardingModel> onboardItem = [
  OnboardingModel(
      title: OnboardingStrings.onboarding1Title,
      description: OnboardingStrings.onboarding1Subtitle,
      image: ImagePath.onboard1.toPathPng()),
  OnboardingModel(
      title: OnboardingStrings.onboarding2Title,
      description: OnboardingStrings.onboarding2Subtitle,
      image: ImagePath.onboard2.toPathPng()),
  OnboardingModel(
      title: OnboardingStrings.onboarding3Title,
      description: OnboardingStrings.onboarding3Subtitle,
      image: ImagePath.onboard3.toPathPng()),
];
