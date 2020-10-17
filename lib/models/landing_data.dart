class SushiLandingData {
  final String heading;
  final String subheading;
  final String image;

  SushiLandingData({
    this.heading,
    this.subheading,
    this.image,
  });
}

SushiLandingData worldOfSushi = SushiLandingData(
  heading: "The World of Sushi",
  subheading:
      "Healthy and Delicious, it has become favorite of the many all around the world!",
  image: "assets/images/01_sushi_splash.png",
);

SushiLandingData whySushi = SushiLandingData(
  heading: "Why Sushi?",
  subheading:
      "Sushi are a perfect combination of everything that you can ask in a cuisine. Why Sushi?, I say, Why Not?",
  image: "assets/images/02_sushi_splash.png",
);

SushiLandingData originSushi = SushiLandingData(
  heading: "It's Origin",
  subheading:
      "The history of sushi began with paddy fields in Southeast Asia, where fish was fermented with rice vinegar, salt and rice, after which the rice was discarded.",
  image: "assets/images/03_sushi_splash.png",
);

List<SushiLandingData> sushiLp = [worldOfSushi, whySushi, originSushi];
