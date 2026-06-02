class Drink {
  String name;
  String size;
  String temp;
  String milk;
  List<String> syrups;
  double price;

  Drink({
    required this.name,
    required this.size,
    required this.temp,
    required this.milk,
    required this.syrups,
    required this.price,
  });
}

const syrups = {'None': 0, 'Vanilla':0.50, 'Caramel':0.50, 'Mocha':0.50, 'Lavendar':1.00};
const milks = {'None':0, 'Whole Milk': 0.50, 'Oatmilk':1.00, 'Almond':1.00};
const temps = {'Hot','Kids','Iced'}; 