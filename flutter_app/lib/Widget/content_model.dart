class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<UnboardingContent> contents = [
  UnboardingContent(
    image: "images/screen1.png",
    title: "Welcome to our app",
    description: "We are glad to have you here.",
  ),
  UnboardingContent(
    image: "images/screen2.png",
    title: "Explore the features",
    description: "Discover all the amazing features we offer.",
  ),
  UnboardingContent(
    image: "images/screen3.png",
    title: "Get started now",
    description: "Join us and begin your journey today.",
  ),
];
