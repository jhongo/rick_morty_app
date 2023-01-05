import 'package:flutter/material.dart';

class NameTitle extends StatelessWidget {

  final String text;

  const NameTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h * 0.1,
      // color: Colors.white,
      child: CustomPaint(
        painter: TagName(),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Positioned(left: 5, child: Text('$text', style: TextStyle( 
              color: Color(0xFFf1faee), 
              fontSize: 20, 
              fontWeight: FontWeight.w500,),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              ),)
          ],
        )
      ),
    );
  }
}


class TagName extends CustomPainter {   
  
  
  @override
  void paint(Canvas canvas, Size size) {

    // Medidas de Lapiz
    final pencil = Paint();
    pencil.color = Color.fromRGBO(160, 73, 112, 0.9);
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 15;

    // Rutas
    final path = Path();
    path.moveTo(0, size.height * 0.2);
    path.lineTo(0, size.height * 0.8 );
    path.lineTo(size.width * 0.4 , size.height * 0.8 );
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.5, size.width * 0.4, size.height * 0.2);

    canvas.drawPath(path, pencil);


  
  
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
