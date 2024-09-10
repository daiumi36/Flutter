/*//Bài 4 con vật
class Cho {
  void diBo() {
    print("Chó đang đi bộ.");
  }

  void bay() {
    print("Chó ước có thể bay, nhưng không thể.");
  }

  void boi() {
    print("Chó không biết bơi.");
  }
}

class Ca {
  void boi() {
    print("Cá đang bơi.");
  }

  void diBo() {
    print("Cá ước có thể đi bộ, nhưng không thể.");
  }

  void bay() {
    print("Cá không thể bay.");
  }
}

class Chim {
  void bay() {
    print("Chim đang bay.");
  }

  void boi() {
    print("Chim ước có thể bơi, nhưng không thể.");
  }

  void diBo() {
    print("Chim có thể đi bộ.");
  }
}

class Vit {
  void diBo() {
    print("Vịt đang đi bộ.");
  }

  void boi() {
    print("Vịt đang bơi.");
  }

  void bay() {
    print("Vịt đang bay.");
  }
}

void main() {
  Cho cho = Cho();
  Ca ca = Ca();
  Chim chim = Chim();
  Vit vit = Vit();

  print("Chó:");
  cho.diBo();
  cho.bay();
  cho.boi();

  print("\nCá:");
  ca.boi();
  ca.diBo();
  ca.bay();

  print("\nChim:");
  chim.bay();
  chim.diBo();
  chim.boi();

  print("\nVịt:");
  vit.bay();
  vit.diBo();
  vit.boi();
}
*/
/*//Queue 
class Queue {
  final int capacity;
  List<String> list;

  Queue(this.capacity) : list = [];

  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  void enqueue(String value) {
    if (isFull()) {
      print('Queue đầy');
    } else {
      list.add(value);
    }
  }

  String? dequeue() {
    if (isEmpty()) {
      print('Queue rỗng');
      return null;
    } else {
      return list.removeAt(0);
    }
  }
}

void main() {
  Queue queue = Queue(3);

  queue.enqueue('A');
  queue.enqueue('B');
  queue.enqueue('C');
  print(queue.list); 

  queue.enqueue('D'); 


  print(queue.dequeue()); 
  print(queue.list);    
  
  queue.dequeue();
  queue.dequeue();
  print(queue.dequeue()); 
}
*/

/*//Stack
class Stack {
  final int capacity;
  List<String> list;

  Stack(this.capacity) : list = [];

  bool isEmpty() {
    return list.isEmpty;
  }

  bool isFull() {
    return list.length == capacity;
  }

  void push(String value) {
    if (isFull()) {
      print('Stack đầy');
    } else {
      list.add(value);
    }
  }

  String? pop() {
    if (isEmpty()) {
      print('Stack rỗng');
      return null;
    } else {
      return list.removeLast();
    }
  }
}

void main() {
 
  Stack stack = Stack(3);

  stack.push('A');
  stack.push('B');
  stack.push('C');
  print(stack.list);

  stack.push('D'); 

  print(stack.pop()); 
  print(stack.list);  
  
  stack.pop();
  stack.pop();
  print(stack.pop()); 
}
*/
/*//dienthoai
class Manufacturer {
  String name;
  String nuoc; 
  Manufacturer(this.name, this.nuoc);

  @override
  String toString() {
    return 'Manufacturer: $name, Country: $nuoc';
  }
}

class Device {
  String id;
  String ten;
  String tenhethong;
  Manufacturer manufacturer;

  Device(this.id, this.ten, this.tenhethong, this.manufacturer);

  @override
  String toString() {
    return 'Device ID: $id, Name: $ten, System: $tenhethong, Manufacturer: ${manufacturer.name}';
  }
}

void main() {
  Manufacturer apple = Manufacturer('Apple', 'USA');
  Device iphone = Device('12345', 'iPhone 14', 'iOS', apple);
  print(iphone);
}
*/