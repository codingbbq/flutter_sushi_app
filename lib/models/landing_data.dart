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
  image: "assets/images/01landingPage.png",
);

List<SushiLandingData> sushiLp = [worldOfSushi];
