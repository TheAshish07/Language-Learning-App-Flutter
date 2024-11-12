import 'package:flutter/material.dart';
import 'loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[900]!,
              Colors.blue[800]!,
            ],
          ),
        ),
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Center(
              child: CustomPaint(
                size: const Size(100, 100),
                painter: GraphIconPainter(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GraphIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paintLine = Paint()
      ..color = Colors.green
      ..strokeWidth = 4;

    final paintGraph = Paint()
      ..color = Colors.purple
      ..strokeWidth = 3;

    canvas.drawLine(Offset(size.width * 0.25, size.height * 0.75),
        Offset(size.width * 0.25, size.height * 0.25), paintLine);
    canvas.drawLine(Offset(size.width * 0.25, size.height * 0.75),
        Offset(size.width * 0.75, size.height * 0.75), paintLine);

    final path = Path();
    path.moveTo(size.width * 0.3, size.height * 0.7);
    path.lineTo(size.width * 0.4, size.height * 0.55);
    path.lineTo(size.width * 0.55, size.height * 0.65);
    path.lineTo(size.width * 0.7, size.height * 0.4);
    canvas.drawPath(path, paintGraph);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
