class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "المشكلة",
    image: 'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4EVUb?ver=67ac',
    desc: "وصف بسيط للمشكلة",
  ),
  OnboardingContents(
    title: "حل المشكلة",
    image: 'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4EVUb?ver=67ac',
    desc: "وصف بسيط للحل",
  ),
  OnboardingContents(
    title: "دار",
    image: 'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4EVUb?ver=67ac',
    desc: "تعريف بالتطبيق",
  ),
];
