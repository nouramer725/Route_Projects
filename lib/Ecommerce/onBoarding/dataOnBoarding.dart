class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });
}
List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image: "assets/images/fashion shop-rafiki 1.png",
    title: "Choose Products",
    description:
    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
  ),
  OnboardingModel(
    image: "assets/images/Sales consulting-pana 1.png",
    title: "Make Payment",
    description:
    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
  ),
  OnboardingModel(
    image: "assets/images/Shopping bag-rafiki 1.png",
    title: "Get Your Order",
    description:
    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
  ),
];
