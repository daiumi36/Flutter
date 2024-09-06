/*
Có 4 lớp học: Flutter, android, ios, web
Có 6 học viên: A, B, C, D, E, F
Có 4 tính năng build: build android, build ios, build web, build desktop app.
1 học viên có thể học ở nhiều lớp học khác nhau.
Yêu cầu
Viết code thể hiện diagrams trên (slide trước slide này)
Viết 1 phương thức: remainMembers(), tính toán và trả về số lượng thành viên còn
  thiếu của mỗi lớp
 2. ví dụ: lớp Flutter, SL học viên = 11, 
 hiện tại có 2 học viên A và B => remainMember() trả về: 9

[Optional] Khởi tạo, thêm toàn bộ các học viên còn thiếu của mỗi lớp sao cho 
trong 1 lớp không có thành viên nào bị trùng tên. Print ra kết quả cuối cùng.
Ví dụ: lớp học Flutter hiện tại có 2 học viên A và B, còn thiếu 9 học viên.
Bằng tất cả các cách bạn biết, hãy khởi tạo đối tượng, 
và thêm vào lớp học Flutter 9 học viên còn thiếu.
1 ví dụ cụ thể: lớp Flutter sẽ có 11 học viên:
A, B, C, D, E, F, G, H, J, K, L
1 kết quả khác, vẫn thoả mãn yêu cầu đề bài:
A, B, Q, W, E, R, T, Y, U, I, O
*/

class LopHoc {
  final String tenLop;
  int? soLuongHocVien;
  List<HocVien>? hocVien;
  Set<TinhNangBuild> tinhNangBuild;

  LopHoc({
    required this.tenLop,
    this.soLuongHocVien,
    this.hocVien,
    required this.tinhNangBuild,
  });

  void inThongTinLopHoc() {
    print('Lop học: $tenLop');
    print('So luong: $soLuongHocVien');
    if (this.hocVien != null) {
      print('Hoc vien:');
      hocVien?.forEach((hocVien) {
        print('- ${hocVien.ten}');
      });
    }
    print('Tinh nang build: $tinhNangBuild');
  }

  int soLuongConThieu() {
    if (soLuongHocVien == null) return 0;
    return (soLuongHocVien ?? 0) - (hocVien?.length ?? 0);
  }

  void ThemHocVien(int a) {
    if (hocVien == null) {
      hocVien = [];
    }
    for (int i = 0; i < a; i++) {
      if (hocVien!.contains(HocVien(ten: 'Q$i'))) {
        hocVien!.add(HocVien(ten: 'Q$i'));
      }
      hocVien!.add(HocVien(ten: 'Q$i'));
      if (hocVien!.length > soLuongHocVien!) {
        soLuongHocVien = hocVien!.length;
      }
    }
  }
}

class HocVien {
  final String ten;
  List<LopHoc>? lopHocThamGia;

  HocVien({
    required this.ten,
    List<LopHoc>? lopHocThamGia,
  }) {
    this.lopHocThamGia = lopHocThamGia ?? [];
    this.lopHocThamGia?.forEach((lopHoc) {
      if (lopHoc.hocVien == null) {
        lopHoc.hocVien = [];
      }
      if (!lopHoc.hocVien!.contains(this)) {
        lopHoc.hocVien!.add(this);
      }
      if (lopHoc.soLuongHocVien! < lopHoc.hocVien!.length) {
        lopHoc.soLuongHocVien = lopHoc.hocVien!.length;
      }
    });
  }
}

enum TinhNangBuild {
  android,
  ios,
  web,
  desktopApp,
}

LopHoc Flutter = LopHoc(tenLop: 'Flutter', soLuongHocVien: 11, tinhNangBuild: {
  TinhNangBuild.android,
  TinhNangBuild.ios,
  TinhNangBuild.web
});
LopHoc IOS = LopHoc(
    tenLop: 'IOS', soLuongHocVien: 9, tinhNangBuild: {TinhNangBuild.ios});
void main() {
  // ignore: unused_local_variable
  HocVien A = HocVien(
    ten: 'A',
    lopHocThamGia: [Flutter],
  );
  Flutter.ThemHocVien(Flutter.soLuongConThieu());
  Flutter.ThemHocVien(2);
  Flutter.inThongTinLopHoc();
  IOS.inThongTinLopHoc();
  print('So luong hoc vien con thieu: ${Flutter.soLuongConThieu()}');
}
