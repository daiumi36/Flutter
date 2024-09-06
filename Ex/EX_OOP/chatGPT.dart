abstract class LopHoc {
  final String tenLop;
  int soLuongHocVien;
  List<HocVien> hocVien = [];

  LopHoc({
    required this.tenLop,
    required this.soLuongHocVien,
  });

  void inThongTinLopHoc() {
    print('Lop học: $tenLop');
    print('So luong: $soLuongHocVien');
    print('Hoc vien: ${hocVien.map((hv) => hv.ten).join(', ')}');
  }

  int remainMembers() {
    return soLuongHocVien - hocVien.length;
  }

  void themHocVien(HocVien hocVien) {
    if (!this.hocVien.contains(hocVien)) {
      this.hocVien.add(hocVien);
    }
  }
}

class HocVien {
  final String ten;
  List<LopHoc> lopHocThamGia;

  HocVien({
    required this.ten,
    required this.lopHocThamGia,
  }) {
    for (var lopHoc in lopHocThamGia) {
      lopHoc.themHocVien(this);
    }
  }
}

void main() {
  // Khởi tạo lớp học
  var flutter = LopHoc(
    tenLop: 'Flutter',
    soLuongHocVien: 11,
  );

  // Khởi tạo học viên
  var a = HocVien(
    ten: 'A',
    lopHocThamGia: [flutter],
  );

  // In thông tin lớp học
  flutter.inThongTinLopHoc();
  print('So luong hoc vien con thieu: ${flutter.remainMembers()}');

  // Thêm học viên còn thiếu
  List<String> danhSachHocVien = [
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K'
  ];
  for (var ten in danhSachHocVien) {
    if (flutter.remainMembers() <= 0) break;
    HocVien(ten: ten, lopHocThamGia: [flutter]);
  }

  // In thông tin lớp học sau khi thêm học viên
  flutter.inThongTinLopHoc();
}
