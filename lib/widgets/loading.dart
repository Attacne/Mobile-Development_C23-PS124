import 'dart:async';
import 'dart:math';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with TickerProviderStateMixin {
  late AnimationController firstController;
  late Animation<double> firstAnimation;

  late AnimationController secondController;
  late Animation<double> secondAnimation;

  @override
  void initState() {
    super.initState();

    firstController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    firstAnimation = Tween<double>(begin: -pi, end: pi).animate(firstController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          firstController.repeat();
        } else if (status == AnimationStatus.dismissed) {
          firstController.forward();
        }
      });

    secondController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    secondAnimation = Tween<double>(begin: -1, end: -4).animate(CurvedAnimation(parent: secondController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          secondController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          secondController.forward();
        }
      });

    firstController.forward();
    secondController.forward();
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext c) => Container(
        height: size(c).height,
        width: size(c).width,
        color: read(c).fixTheme ? Cw.withOpacity(.5) : C2.withOpacity(.5),
        child: Center(
          child: SizedBox(
            height: 100,
            width: 100,
            child: CustomPaint(
              painter: MyCustomPainter(
                firstAnimation.value,
                secondAnimation.value,
              ),
            ),
          ),
        ),
      );
}

class MyCustomPainter extends CustomPainter {
  final double startAngle;
  final double sweepAngle;

  MyCustomPainter(this.startAngle, this.sweepAngle);

  @override
  void paint(Canvas canvas, Size size) {
    Paint myCircle = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width * .5,
      myCircle,
    );

    Paint myArc = Paint()
      ..color = C1
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromLTRB(0, 0, size.width, size.height),
      startAngle,
      sweepAngle,
      false,
      myArc,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
