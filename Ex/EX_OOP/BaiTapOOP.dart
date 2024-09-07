/* //Bai 1
class Member {
  final String hoTen;
  final String ten;
  final String image;
  final String dob;
  final String soDienThoai;
  final String email;
  final String gioitinh;

  Member({
    required this.hoTen,
    required this.ten,
    required this.image,
    required this.dob,
    required this.soDienThoai,
    required this.email,
    required this.gioitinh,
  });
}

class Post {
  String? noidung;
  List<String>? anh;
  late final Member nguoidang;
  List<Comment>? binhluans = [];

  Post({
    this.noidung,
    this.anh,
    required this.nguoidang,
  });

  void themBinhLuan(Comment binhluan) {
    binhluans?.add(binhluan);
  }
}

class Comment {
  late final Member nguoibinhluan;
  String noidung;
  DateTime? thoigianbinhluan;

  Comment({
    required this.nguoibinhluan,
    required this.noidung,
  }) : thoigianbinhluan = DateTime.now();
}

void main() {
  // ignore: unused_local_variable
  Member thanhVienA = Member(
    hoTen: 'Nguyen',
    ten: 'Dai',
    image: 'avatar.png',
    dob: '9/8/2003',
    soDienThoai: '0559984983',
    email: 'meomapmo9@gmail.com',
    gioitinh: 'Nam',
  );
  // ignore: unused_local_variable
  Post baiViet = Post(
    noidung: 'Test thoi????',
    anh: ['hinh1.png', 'hinh2.png'],
    nguoidang: thanhVienA,
  );
// ignore: unused_local_variable
  Comment binhLuan = Comment(
    nguoibinhluan: thanhVienA,
    noidung: 'test luon',
  );

  baiViet.themBinhLuan(binhLuan);

  print('${baiViet.nguoidang.ten} dang: ${baiViet.noidung}');
  print(
      'Binh luan: ${baiViet.binhluans![0].noidung} cua ${baiViet.binhluans![0].nguoibinhluan.ten}');
}
*/

/* //Bai2
//material.dart
/*
class Size {
  double? width;
  double? height;

  Size(this.width, this.height);

}
*/


import 'material.dart';

class ScreenSize {
  late final Size _designScreenSize;
  late final Size _deviceScreenSize;

  ScreenSize(this._designScreenSize, this._deviceScreenSize);

  double scaleWidth(int designNumber) {
    double scale = _deviceScreenSize.width! / _designScreenSize.width!;
    return designNumber * scale;
  }
}

void main() {
  Size designScreenSize = Size(375, 812);
  Size deviceScreenSize = Size(430, 932);

  ScreenSize screenSize = ScreenSize(designScreenSize, deviceScreenSize);

  int designWidth = 300;
  double scaledWidth = screenSize.scaleWidth(designWidth);

  print('Scaled Width: $scaledWidth');
}
*/

/* //Bài 3
import 'material.dart';

class ScreenSize {
  late final Size _designScreenSize;
  late final Size _deviceScreenSize;

  ScreenSize._internal(this._designScreenSize, this._deviceScreenSize);

  static ScreenSize? _instance;

  factory ScreenSize(Size designScreenSize, Size deviceScreenSize) {
    _instance ??= ScreenSize._internal(designScreenSize, deviceScreenSize);
    return _instance!;
  }

  double scaleWidth(int designNumber) {
    double scale = _deviceScreenSize.width! / _designScreenSize.width!;
    return designNumber * scale;
  }
}

void main() {
  Size designScreenSize = Size(375, 812);
  Size deviceScreenSize = Size(430, 932);

  ScreenSize screenSize = ScreenSize(designScreenSize, deviceScreenSize);

  int designWidth = 300;
  double scaledWidth = screenSize.scaleWidth(designWidth);

  print('Scaled Width: $scaledWidth');

  ScreenSize ScreenSize1 = ScreenSize(Size(500, 1000), Size(600, 1200));

  double ScaledWidth1 = ScreenSize1.scaleWidth(designWidth);

  print('Scaled Width: $ScaledWidth1');
}
*/

/* //Bai4

class Vehicle {
  final String ten;
  final int nam;

  Vehicle({required this.ten, required this.nam});

  void startEngine() {
    print('$ten khoi dong.');
  }

  void stopEngine() {
    print('$ten dung lai.');
  }
}

class Car extends Vehicle {
  Car(String brand, int year) : super(ten: brand, nam: year);

  void accelerate() {
    print('$ten tangtoc.');
  }

  void brake() {
    print('$ten dung lai.');
  }
}

void main() {
  Car myCar = Car('Toyota', 2022);

  myCar.startEngine();
  myCar.accelerate();
  myCar.brake();
  myCar.stopEngine();
}

*/
