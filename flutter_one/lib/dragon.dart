import 'package:flutter/material.dart';

void main() {
  runApp(const DragonDrawingApp());
}

class DragonDrawingApp extends StatelessWidget {
  const DragonDrawingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Vẽ Con Rồng Từng Bước'),
        ),
        body: Center(
          child: CustomPaint(
            size: const Size(300, 300),
            painter: DragonStepPainter(),
          ),
        ),
      ),
    );
  }
}

class DragonStepPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    // Bước 1: Vẽ hình tròn cho phần đầu
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.4), 50, paint);

    // Bước 2: Vẽ phần mõm (oval kéo dài)
    final mouthPath = Path();
    mouthPath.moveTo(size.width * 0.5, size.height * 0.4);
    mouthPath.quadraticBezierTo(size.width * 0.6, size.height * 0.45,
        size.width * 0.55, size.height * 0.5);
    canvas.drawPath(mouthPath, paint);

    // Bước 3: Tinh chỉnh phần đầu
    final headPath = Path();
    headPath.moveTo(size.width * 0.5, size.height * 0.4);
    headPath.quadraticBezierTo(size.width * 0.45, size.height * 0.3,
        size.width * 0.6, size.height * 0.35);
    canvas.drawPath(headPath, paint);

    // Bước 4: Vẽ mắt và mũi
    canvas.drawCircle(
        Offset(size.width * 0.45, size.height * 0.35), 8, paint); // Mắt
    canvas.drawCircle(
        Offset(size.width * 0.55, size.height * 0.45), 4, paint); // Lỗ mũi

    // Bước 5: Vẽ phần cổ
    final neckPath = Path();
    neckPath.moveTo(size.width * 0.5, size.height * 0.5);
    neckPath.quadraticBezierTo(size.width * 0.4, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    canvas.drawPath(neckPath, paint);

    // Bước 6: Thêm sừng trên đỉnh đầu
    final hornPath = Path();
    hornPath.moveTo(size.width * 0.55, size.height * 0.3);
    hornPath.lineTo(size.width * 0.6, size.height * 0.2);
    hornPath.lineTo(size.width * 0.65, size.height * 0.3);
    canvas.drawPath(hornPath, paint);

    // Bước 7: Thêm cánh phía sau tai
    final wingPath = Path();
    wingPath.moveTo(size.width * 0.55, size.height * 0.4);
    wingPath.lineTo(size.width * 0.65, size.height * 0.45);
    wingPath.lineTo(size.width * 0.7, size.height * 0.4);
    canvas.drawPath(wingPath, paint);

    // Bước 8: Thêm chi tiết như vảy và mắt rồng
    final scalePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(
        Offset(size.width * 0.5, size.height * 0.45), 3, scalePaint); // Vảy
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
