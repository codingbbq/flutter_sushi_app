import 'package:flutter/material.dart';

class CustomBottnOrderNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: 0,
      height: 100.0,
      width: size.width,
      child: CustomPaint(
        painter: OrderBtnPaint(),
        child: InkWell(
          onTap: () {
            print("Clicked order");
          },
          child: Container(
            margin: EdgeInsets.only(
              top: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Place order",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderBtnPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint bgPaint = Paint()..color = Colors.black;
    final Path bgPath = Path();

    bgPath.addRect(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawPath(bgPath, bgPaint);

    final Paint firstPaint = Paint()..color = Colors.white;
    final Path firstPath = Path();
    firstPath.moveTo(0, 0);
    firstPath.quadraticBezierTo(
        10, 25.0, size.width * 0.15, size.height * 0.25);
    firstPath.lineTo(size.width * 0.15, 0);
    firstPath.close();
    canvas.drawPath(
      firstPath,
      firstPaint,
    );

    // Area that we want to discard
    final Paint discardPaint = Paint()..color = Colors.white;
    final Path discardPath = Path();
    discardPath.addRect(Rect.fromLTRB(size.width * 0.15, 0,
        size.width - size.width * 0.15, size.height * 0.25));
    canvas.drawPath(
      discardPath,
      discardPaint,
    );

    final Paint endPaint = Paint()..color = Colors.white;
    final Path endPath = Path();
    endPath.moveTo(size.width, 0);
    endPath.quadraticBezierTo(
        size.width - 10, 25, size.width * 0.85, size.height * 0.25);
    endPath.lineTo(size.width * 0.85, 0);
    endPath.close();

    canvas.drawPath(
      endPath,
      endPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
