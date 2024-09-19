/*void hoanDoi(List<dynamic> mang, int index1, int index2) {
  if (index1 < 0 ||
      index1 >= mang.length ||
      index2 < 0 ||
      index2 >= mang.length) {
    print("Index không hợp lệ.");
    return;
  }

  var temp = mang[index1];
  mang[index1] = mang[index2];
  mang[index2] = temp;
}

void main() {
  List<int> mang = [1, 2, 3, 4, 5];

  print("Mảng trước khi hoán đổi: $mang");
  hoanDoi(mang, 1, 3);
  print("Mảng sau khi hoán đổi: $mang");
}
*/
/*
class Queue<T> {
  List<T> _elements = [];

  void enqueue(T value) {
    _elements.add(value);
  }

  T? dequeue() {
    if (_elements.isEmpty) {
      print("Queue trống");
      return null;
    }
    return _elements.removeAt(0);
  }

  bool isEmpty() {
    return _elements.isEmpty;
  }

  void printQueue() {
    if (_elements.isEmpty) {
      print("Queue trống");
    } else {
      print("Queue hiện tại: $_elements");
    }
  }
}

void main() {
  Queue<int> queue = Queue<int>();

  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.printQueue(); 

  print("Phần tử bị xóa: ${queue.dequeue()}"); 
  queue.printQueue(); 

  print("Phần tử bị xóa: ${queue.dequeue()}");
  queue.printQueue(); 
}
*/

