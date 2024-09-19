int timGiaTriLonNhat(List<int> A) {
  return A.reduce((a, b) => a > b ? a : b);
}

Map<int, int> giaTriLon(List<int> A) {
  List<int> temp = List.from(A);
  Map<int, int> B = {};
  for (int i = 0; i < 3; i++) {
    int max = timGiaTriLonNhat(temp);
    temp.removeWhere((element) => element == max);
    B[i + 1] = max;
  }
  return B;
}

int timGiaTriNhoNhat(List<int> A) {
  return A.reduce((a, b) => a < b ? a : b);
}

Map<int, int> giaTriNho(List<int> A) {
  List<int> temp = List.from(A);
  Map<int, int> B = {};
  for (int i = 0; i < 3; i++) {
    int min = timGiaTriNhoNhat(temp);
    temp.removeWhere((element) => element == min);
    B[i + 1] = min;
  }
  return B;
}

void main() {
  List<int> A = [10, 7, 8, 9, 4, 6, 2, 9, 1, 5, 1, 1, 2];

  Map<int, int> B = giaTriLon(A);
  B.forEach((key, value) {
    print("Giá trị lớn thứ $key: $value");
  });

  Map<int, int> C = giaTriNho(A);
  C.forEach((key, value) {
    print("Giá trị nhỏ thứ $key: $value");
  });
  print("Giá trị lớn nhất: ${timGiaTriLonNhat(A)}");
  print("Giá trị nhỏ nhất: ${timGiaTriNhoNhat(A)}");
}
