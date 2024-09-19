void hoanDoi(List<dynamic> mang, int index1, int index2) {
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
