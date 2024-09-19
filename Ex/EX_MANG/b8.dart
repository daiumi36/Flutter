double trungBinh(List<int> A) {
  return A.reduce((a, b) => a + b) / A.length;
}

int timGiaTriLonNhat(List<int> A) {
  return A.reduce((a, b) => a > b ? a : b);
}

int timGiaTriNhoNhat(List<int> A) {
  return A.reduce((a, b) => a < b ? a : b);
}

Map<int, int> demLanXuatHien(List<int> A) {
  Map<int, int> counts = {};
  for (var element in A) {
    counts[element] = (counts[element] ?? 0) + 1;
  }
  return counts;
}

Map<String, int> demChanLe(List<int> A) {
  int soChan = 0;
  int soLe = 0;
  for (var element in A) {
    if (element % 2 == 0) {
      soChan++;
    } else {
      soLe++;
    }
  }
  return {'So chan': soChan, 'So le': soLe};
}

void main() {
  List<int> A = [10, 7, 8, 9, 4, 6, 2, 3, 1, 5, 1, 1, 2];

  print("Giá trị trung bình: ${trungBinh(A)}");

  print("Giá trị lớn nhất: ${timGiaTriLonNhat(A)}");
  print("Giá trị nhỏ nhất: ${timGiaTriNhoNhat(A)}");

  Map<int, int> counts = demLanXuatHien(A);
  counts.forEach((key, value) {
    print("Giá trị $key xuất hiện $value lần");
  });

  Map<String, int> chanLe = demChanLe(A);
  print("Số chẵn: ${chanLe['So chan']} số");
  print("Số lẻ: ${chanLe['So le']} số");
}
