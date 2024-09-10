/*//Fuction thoi gian
import 'dart:io'; // Dùng để dùng Sleep

void timerPeriodic({
  required int second,
  required Function(int) callback,
}) {
  int counter = 0;
  while (true) {
    callback(counter); // Gọi callback với số giây đã trôi qua
    counter++;
    sleep(Duration(seconds: second)); // Tạm dừng vòng lặp 1 giây
  }
}

void main() {
  timerPeriodic(
      second: 1,
      callback: (int elapsed) {
        print('Đã trôi qua $elapsed giây');
      });
}
*/

/*//funtion không dùng return
void textField(
  String text, {
  Function(String)? onChanged,
}) {
  if (onChanged != null) {
    final result = 'Hello $text';
    onChanged(result); 
  }
}
void main() {
  textField('world', onChanged: (String result) {
    print(result); 
  });
}
*/
/*//funtion bấm nút
void main() {
  var number = 0;
  number = buttonCount(number);
  print("So sau khi bam: $number");
  number = buttonCount(number);
  print("So sau khi bam:: $number");
}

int buttonCount(int number) {
  return number + 1;
}
*/
/*//Thuat toan sap xep
import 'dart:math';

void bubbleSort(List<int> numbers) {
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = 0; j < numbers.length - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
}

void main() {
  final numbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(100);
  });
  bubbleSort(numbers);
  print("Sắp rồi: $numbers");
}
*/