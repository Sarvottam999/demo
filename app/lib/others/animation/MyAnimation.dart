import 'package:flutter/material.dart';

class MyAnimation extends StatelessWidget {
  const MyAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

enum circleeSide{
  left, 
  right
}

extension TooPath on circleeSide {
   Path toPath(Size size) {
    final path = Path();

    late Offset offset;
    late bool clockwise;

    switch (this) {
      case circleeSide.left:
        path.moveTo(size.width, 0);
        offset = Offset(size.width, size.height);
        clockwise = false;
        break;
      case circleeSide.right:
        offset = Offset(0, size.height);
        clockwise = true;
        break;
    }
    path.arcToPoint(offset, 
    radius: Radius.elliptical(size.width/2, size.height/2),
    clockwise: clockwise);




     path.close();
    return path; 

   }
}

class HalfCiclCliper extends CustomClipper<Path>{
   final circleeSide side;

  HalfCiclCliper({super.reclip, required this.side});

 
  @override
  Path getClip(Size size) => side.toPath(size);

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
  
}

