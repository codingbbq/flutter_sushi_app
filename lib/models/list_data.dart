class SushiListData {
  final String sushiImage;
  final String sushiTitle;
  final String sushiSubTitle;
  final String sushiPrice;

  SushiListData({
    this.sushiImage,
    this.sushiTitle,
    this.sushiSubTitle,
    this.sushiPrice,
  });
}

final SushiListData kaniMaki = SushiListData(
  sushiImage: "assets/images/01_suhsi.png",
  sushiTitle: "Kani Maki",
  sushiSubTitle: "Crab sticks",
  sushiPrice: "4.90",
);

final SushiListData freshSalmon = SushiListData(
  sushiImage: "assets/images/02_suhsi.png",
  sushiTitle: "Fresh Salmon",
  sushiSubTitle: "Salmon filet & avocado",
  sushiPrice: "4.70",
);

final SushiListData tikkaMaki = SushiListData(
  sushiImage: "assets/images/03_suhsi.png",
  sushiTitle: "Tikka Maki",
  sushiSubTitle: "Cooked tuna",
  sushiPrice: "4.20",
);

final SushiListData smokedSalmon = SushiListData(
  sushiImage: "assets/images/04_suhsi.png",
  sushiTitle: "Smoked Salmon",
  sushiSubTitle: "Salmon & Cucumber",
  sushiPrice: "4.50",
);

final SushiListData pjiladelphiaRoll = SushiListData(
  sushiImage: "assets/images/05_suhsi.png",
  sushiTitle: "Philadelphia Roll",
  sushiSubTitle: "Salmon and cream cheese",
  sushiPrice: "8.50",
);

List<SushiListData> sushiList = [
  kaniMaki,
  tikkaMaki,
  freshSalmon,
  smokedSalmon,
  pjiladelphiaRoll
];
