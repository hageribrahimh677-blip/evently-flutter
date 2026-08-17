class OnboardingContent {
  final String image;
  final String title;
  final String description;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingContent> onboardingPages = [
  OnboardingContent(
    image: 'assets/images/onboarding1.png',
    title: 'Find Events That Inspire You',
    description:
    'Dive into a world of events crafted to fit your unique interests. Whether you\'re into live music, art workshops, professional networking, or simply discovering new experiences, we have something for everyone.',
  ),
  OnboardingContent(
    image: 'assets/images/onboarding2.png',
    title: 'Effortless Event Planning',
    description:
    'Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we\'ve got you covered.',
  ),
  OnboardingContent(
    image: 'assets/images/onboarding3.png',
    title: 'Connect with Friends & Share Moments',
    description:
    'Make every event memorable by sharing the experience with others. Our platform lets you invite friends, keep everyone in the loop, and celebrate moments together.',
  ),
];