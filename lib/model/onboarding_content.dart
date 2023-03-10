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
    title: "",
    image: 'assets/img/find.png',
    desc: "تواجه صعوبة عند السفر في معرفة الاماكن والفعاليات والتطبيقات الأكثر استخداماً في المدينة",
  ),
  OnboardingContents(
    title: "",
    image: 'assets/img/idea.gif',
    desc: "في تطبيق واحد سنجمع اكثر الاماكن زيارة واكثر التطبيقات المستخدمة في المدينة التي تحددها ",
  ),
  OnboardingContents(
    title: " ",
    image: 'assets/img/Logo.jpg',
    desc: "تطبيق دار سيجمع لك الاماكن والفعاليات والتطبيقات الاكثر استخدامًا في المدينة ويسهل لك الوصول لها ولمواقعها",
  ),
];
