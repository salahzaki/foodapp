class Dish {
  String image;
  String name;
  double price;

  Dish({
    this.image,
    this.name,
    this.price,
  });
}

List<Dish> recommendedDishes = [
  Dish(
    image: 'assets/dish1.png',
    name: 'Dish No.1',
    price: 26.0,
  ),
  Dish(
    image: 'assets/dish2.png',
    name: 'Dish No.2',
    price: 12.0,
  ),
  Dish(
    image: 'assets/dish3.png',
    name: 'Dish No.3',
    price: 16.0,
  ),
  Dish(
    image: 'assets/dish4.png',
    name: 'Dish No.4',
    price: 29.0,
  ),
  Dish(
    image: 'assets/dish5.png',
    name: 'Dish No.5',
    price: 33.0,
  ),
];

List<Dish> favouriteDishes = [
  Dish(
    image: 'assets/meal3.jpg',
    name: 'Fav Meal Number 1',
    price: 26.0,
  ),
  Dish(
    image: 'assets/meal2.jpg',
    name: 'Fav Meal Number 2',
    price: 14.0,
  ),
  Dish(
    image: 'assets/meal1.jpg',
    name: 'Fav Meal Number 3',
    price: 34.0,
  ),
];
