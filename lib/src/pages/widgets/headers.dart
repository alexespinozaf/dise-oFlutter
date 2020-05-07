import 'package:flutter/material.dart';


class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color:Color(0xff615AAB)
    );
  }
}
class HeaderBorderRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 300,
      decoration: BoxDecoration(
      color:Color(0xff615AAB),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70))  
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color:Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderDiagonalPainter(),
        ),
      );
  }
}

class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color =Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; //.fill para rellenar 
    lapiz.strokeWidth = 2;
    final path = new Path();
    //Dibujar
    path.moveTo(0, size.height*0.35);
    path.lineTo(size.width, size.height*0.32);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color:Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderTriangularPainter(),
        ),
      );
  }
}

class _HeaderTriangularPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color =Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; //.fill para rellenar 
    lapiz.strokeWidth = 2;
    final path = new Path();
    //Dibujar
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class HeaderPunta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color:Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderPuntaPainter(),
        ),
      );
  }
}

class _HeaderPuntaPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color =Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; //.fill para rellenar 
    lapiz.strokeWidth = 10;
    final path = new Path();
    //Dibujar
    path.lineTo(0, size.height *0.25);
    path.lineTo(size.width * 0.5, size.height*0.40);
    path.lineTo(size.width, size.height *0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class Headercurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color:Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderCurvoPainter(),
        ),
      );
  }
}

class _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color =Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; //.fill para rellenar 
    lapiz.strokeWidth = 10;
    final path = new Path();
    //Dibujar
    path.lineTo(0, size.height *0.20);
    path.quadraticBezierTo(size.width*0.50, size.height*0.40, size.width, size.height *0.20);
    path.lineTo(size.width, 0);
 

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}



class HeaderDobleCurva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color:Color(0xff615AAB),
        child: CustomPaint(
          painter:_HeaderDobleCurvaPainter(),
        ),
      );
  }
}

class _HeaderDobleCurvaPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    //Propiedades
    lapiz.color =Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; //.fill para rellenar 
    lapiz.strokeWidth = 10;
    final path = new Path();
    //Dibujar
    path.lineTo(0, size.height *0.20);
    path.quadraticBezierTo(size.width*0.25, size.height*0.30, size.width*0.5, size.height*0.20);
    path.quadraticBezierTo(size.width*0.75, size.height*0.10, size.width, size.height*0.20);
    path.lineTo(size.width, 0);

    path.lineTo(size.width, 0);
 

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}