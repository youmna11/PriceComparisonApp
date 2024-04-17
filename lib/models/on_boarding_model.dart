import '../app_assets/app_assets.dart';
import '../app_strings/app_strings.dart';

class OnBoardingModel {
  final String imgPath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imgPath,
    required this.title,
    required this.subTitle
  });
  static List<OnBoardingModel> onBoardingScreens = [
    OnBoardingModel(
        imgPath: AppAssets.on1,
        title: AppStrings.onBoardingTitleOne,
        subTitle: AppStrings.onBoardingSubTitleOne),
    OnBoardingModel(
        imgPath: AppAssets.on2,
        title: AppStrings.onBoardingTitleTwo,
        subTitle: AppStrings.onBoardingSubTitleTwo),
    OnBoardingModel(
        imgPath: AppAssets.on3,
        title: AppStrings.onBoardingTitleThree,
        subTitle: AppStrings.onBoardingSubTitleThree),
    OnBoardingModel(
        imgPath: AppAssets.on4,
        title: AppStrings.onBoardingTitleFour,
        subTitle: AppStrings.onBoardingSubTitleFour),
    OnBoardingModel(
        imgPath: AppAssets.on5,
        title: AppStrings.onBoardingTitleFive,
        subTitle: AppStrings.onBoardingSubTitleFive),


  ];
}
