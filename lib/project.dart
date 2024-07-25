class design {
  String image;
  String Text;
  String description;
  String number; 
  design({
    required this.image,
    required this.Text,
    required this.description,
    required this.number,
  });
}
List<design> content = [
design(
      image: "assets/burger.png",
      Text: "Burger",
      description: "A hamburger, or simply a burger",
      number: "1"),
  design(
      image: "assets/chicken.png",
      Text: "Chicken",
      description: "A dry chicken recipe popular in India ",
      number: "2"),
  design(
      image: "assets/roasted.png",
      Text: "Roasted",
      description: "Its a chicky chicken",
      number: "3"),

];
