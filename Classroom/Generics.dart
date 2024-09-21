void main(List<String> args) {
  PhoneStore<Phone> phoneStore = PhoneStore();
  var item = phoneStore.add(const Phone(name: "Samsung"));
  print("item added -> ${item.name}"); // sẽ in ra: item added -> Samsung

  PhoneStore<Iphone> iphoneStore = PhoneStore();
  var itemIphone =
      iphoneStore.add(const Iphone(name: "iphone", modelName: "iPhone 14"));
  print(
      "itemIphone added -> ${itemIphone.name} - ${itemIphone.modelName}"); // sẽ in ra: itemIphone added -> iphone - iPhone 14
}

class PhoneStore<T extends Phone> with Action<T> {}

class Phone {
  final String name;
  const Phone({required this.name});
}

class Iphone extends Phone {
  final String modelName;
  const Iphone({required name, required this.modelName}) : super(name: name);
}

mixin Action<T> {
  T add(T item) => item;
  T update(T item) => item;
  T delete(T item) => item;
}
