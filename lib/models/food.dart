part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  factory Food.fromJson(Map<String, dynamic> data) => Food(
      id: data['id'],
      picturePath: data['picturePath'],
      name: data['name'],
      description: data['description'],
      ingredients: data['ingredients'],
      price: data['price'],
      rate: (data['rate'] as num).toDouble(),
      types: data['types'].toString().split(',').map((e) {
        switch (e) {
          case 'recommended':
            return FoodType.recommended;
            break;
          case 'popular':
            return FoodType.popular;
            break;
          default:
            return FoodType.new_food;
        }
      }).toList());

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath: 'https://api.foodmarket.technosolution.site/storage/',
      name: "Sate Sayur Sultan",
      description:
          "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 2,
      picturePath: 'https://api.foodmarket.technosolution.site/storage/',
      name: "Steak Daging Sapi Korea",
      description:
          "Daging sapi Korea adalah jenis sapi paling premium di Korea. Namun, untuk menikmatinya Anda tidak perlu jauh-jauh ke Korea Selatan. Steak Sapi Korea Oppa Bandung ini sudah terkenal di seluruh Indonesia dan sudah memiliki lebih dari 2 juta cabang.",
      ingredients: "Daging Sapi Korea, Garam, Lada Hitam",
      price: 750000,
      rate: 4.5),
  Food(
      id: 3,
      picturePath: 'https://api.foodmarket.technosolution.site/storage/',
      name: "Mexican Chopped Salad",
      description:
          "Salad ala mexico yang kaya akan serat dan vitamin. Seluruh bahan diambil dari Mexico sehingga akan memiliki cita rasa yang original.",
      ingredients: "Jagung, Selada, Tomat Ceri, Keju, Wortel",
      price: 105900,
      rate: 3.9,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath: 'https://api.foodmarket.technosolution.site/storage/',
      name: "Sup Wortel Pedas",
      description:
          "Sup wortel pedas yang unik ini cocok banget buat kalian-kalian yang suka pedas namun ingin tetap sehat. Rasanya yang unik akan memanjakan lidah Anda.",
      ingredients: "Wortel, Seledri, Kacang Tanah, Labu, Garam, Gula",
      price: 60000,
      rate: 4.9,
      types: [FoodType.recommended]),
  // Food(
  //     id: 5,
  //     picturePath:
  //         "https://cmxpv89733.i.lithium.com/t5/image/serverpage/image-id/478345i84598AB4FEB454CB/image-size/large?v=1.0&px=999",
  //     name: "Korean Raw Beef Tartare",
  //     description:
  //         "Daging sapi Korea cincang yang disajikan mentah dan disiram saus spesial dengan toping kuning telur dan taburan biji wijen.",
  //     ingredients: "Daging Sapi Korea, Telur, Biji Wijen",
  //     price: 350000,
  //     rate: 3.4)
];
