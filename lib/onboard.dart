
class Board {
  String image;
  String Text;
  String description;
  String number;
  Board({
    required this.image,
    required this.Text,
    required this.description,
    required this.number,
  });
}

List<Board> onboard = [
  Board(
      image: "assets/burger.png",
      Text: "Burger",
      description: "A hamburger, or simply a burger",
      number: "1"),
  Board(
      image: "assets/chicken.png",
      Text: "Chicken",
      description: "A dry chicken recipe popular in India ",
      number: "2"),
  Board(
      image: "assets/roasted.png",
      Text: "Roasted",
      description: "Its a chicky chicken",
      number: "3"),

];
