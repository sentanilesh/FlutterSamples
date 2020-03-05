import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimationScreen extends StatefulWidget {
  static const ROUTENAME = "/ex2";

  AnimationScreen() : super();

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> with TickerProviderStateMixin {
  Animation<double> animTop;
  Animation<double> animBottom;
  Animation<double> animOpacity;
  Animation<double> animOpacityText;
  AnimationController aniCntTop;
  AnimationController aniCntBottom;
  AnimationController aniCntOpacity;
  AnimationController aniCntOpacityText;

  int index = 0;

  List<String> quotes = [
    "You can do anything, but not everything.",
    "If you want to achieve greatness stop asking for permission.",
    "Things work out best for those who make the best of how things work out.",
    "To live a creative life, we must lose our fear of being wrong.",
    "If you are not willing to risk the usual you will have to settle for the ordinary.",
    "Trust because you are willing to accept the risk, not because it's safe or certain.",
    "All our dreams can come true if we have the courage to pursue them.",
    "Good things come to people who wait, but better things come to those who go out and get them.",
    "If you do what you always did, you will get what you always got.",
    "Success is walking from failure to failure with no loss of enthusiasm.",
    "Just when the caterpillar thought the world was ending, he turned into a butterfly.",
    "Successful entrepreneurs are givers and not takers of positive energy.",
    "Whenever you see a successful person you only see the public glories, never the private sacrifices to reach them.",
    "Opportunities don't happen, you create them.",
    "Try not to become a person of success, but rather try to become a person of value.",
    "Great minds discuss ideas; average minds discuss events; small minds discuss people.",
    "I have not failed. I've just found 10,000 ways that won't work.",
    "If you don't value your time, neither will others. Stop giving away your time and talents--start charging for it.",
    "A successful man is one who can lay a firm foundation with the bricks others have thrown at him.",
    "No one can make you feel inferior without your consent.",
    "The whole secret of a successful life is to find out what is one's destiny to do, and then do it.",
    "If you're going through hell keep going.",
    "The ones who are crazy enough to think they can change the world, are the ones who do.",
    "Don't raise your voice, improve your argument.",
    "What seems to us as bitter trials are often blessings in disguise.",
    "The meaning of life is to find your gift. The purpose of life is to give it away.",
    "The distance between insanity and genius is measured only by success.",
    "When you stop chasing the wrong things, you give the right things a chance to catch you.",
    "I believe that the only courage anybody ever needs is the courage to follow your own dreams.",
    "No masterpiece was ever created by a lazy artist.",
    "If you can't explain it simply, you don't understand it well enough.",
    "Blessed are those who can give without remembering and take without forgetting.",
    "Do one thing every day that scares you.",
    "What's the point of being alive if you don't at least try to do something remarkable.",
    "Life is not about finding yourself. Life is about creating yourself.",
    "Nothing in the world is more common than unsuccessful people with talent.",
    "Knowledge is being aware of what you can do. Wisdom is knowing when not to do it.",
    "Your problem isn't the problem. Your reaction is the problem.",
    "Innovation distinguishes between a leader and a follower.",
    "There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.",
    "Thinking should become your capital asset, no matter whatever ups and downs you come across in your life.",
    "I find that the harder I work, the more luck I seem to have.",
    "The starting point of all achievement is desire.",
    "Success is the sum of small efforts, repeated day-in and day-out.",
    "If you want to achieve excellence, you can get there today. As of this second, quit doing less-than-excellent work.",
    "All progress takes place outside the comfort zone.",
    "You may only succeed if you desire succeeding; you may only fail if you do not mind failing.",
    "Courage is resistance to fear, mastery of fear--not absence of fear.",
    "Only put off until tomorrow what you are willing to die having left undone.",
    "We become what we think about most of the time, and that's the strangest secret.",
  ];

  @override
  void initState() {
    super.initState();
    aniCntTop = AnimationController(duration: Duration(seconds: 1), vsync: this);
    aniCntBottom = AnimationController(duration: Duration(seconds: 1), vsync: this);
    aniCntOpacity = AnimationController(duration: Duration(seconds: 1), vsync: this);
    aniCntOpacityText = AnimationController(duration: Duration(seconds: 1), vsync: this);
    animTop = Tween(begin: 0.6, end: 0.1).animate(aniCntTop);
    animBottom = Tween(begin: 0.6, end: 0.1).animate(aniCntBottom);
    animOpacity = Tween(begin: 1.0, end: 0.0).animate(aniCntOpacity);
    animOpacityText = Tween(begin: 0.0, end: 1.0).animate(aniCntOpacity);
    aniCntTop.addListener(() {
      setState(() {});
    });
    aniCntBottom.addListener(() {
      setState(() {});
    });
    aniCntOpacity.addListener(() {
      setState(() {});
    });
    startAnimation();
  }

  void startAnimation() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      aniCntTop.forward();
      aniCntBottom.forward();
      aniCntOpacity.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: CPaint(),
          ),
          Opacity(
              opacity: animOpacityText.value,
              child: Center(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Text(quotes[index] ?? '',
                        textAlign: TextAlign.center, style: TextStyle(fontSize: 32.0, color: Colors.black))),
              )),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      resetAnimation();
                      setState(() {
                        if (index != 0) {
                          index -= 1;
                        } else {
                          index = quotes.length - 1;
                        }
                      });
                    },
                    heroTag: "h1",
                    child: Icon(Icons.navigate_before),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    onPressed: () {
                      resetAnimation();
                      setState(() {
                        if (index != quotes.length - 1)
                          index += 1;
                        else {
                          index = 0;
                        }
                      });
                    },
                    heroTag: "h2",
                    child: Icon(Icons.navigate_next),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${index + 1} / ${quotes.length}", style: TextStyle(fontSize: 20.0, color: Colors.black)),
            ),
          ),
          Transform.rotate(
            angle: pi,
            child: ClipPath(
              clipper: UpDownClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * animTop.value,
                color: Colors.pinkAccent.withOpacity(animOpacity.value),
              ),
            ),
          ),
          Align(
            child: ClipPath(
              clipper: UpDownClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * animBottom.value,
                color: Colors.pinkAccent.withOpacity(animOpacity.value),
              ),
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  void resetAnimation() {
    aniCntTop.reset();
    aniCntBottom.reset();
    aniCntOpacity.reset();
    startAnimation();
  }

  @override
  void dispose() {
    aniCntTop.dispose();
    super.dispose();
  }
}

class CPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.deepOrange.withOpacity(0.6);
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);

    paint.color = Colors.blueGrey.withOpacity(0.6);
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);

    paint.color = Colors.yellow.withOpacity(0.5);
    var center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, size.height * 0.25, paint);

    paint.color = Colors.deepPurple.withOpacity(0.8);
    canvas.drawCircle(Offset(size.width / 2 * 0.4, size.height / 2 * 0.4), 50, paint);
    canvas.drawCircle(Offset(size.width * 0.8, size.height * 0.8), 50, paint);

    paint.color = Colors.green.withOpacity(0.8);
    canvas.drawCircle(Offset(size.width * 0.8, size.height / 2 * 0.4), 50, paint);
    canvas.drawCircle(Offset(size.width / 2 * 0.4, size.height * 0.8), 50, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class UpDownClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.2);
    double length = 0;
    double widthFirst = 80;
    while (length <= size.width) {
      path.quadraticBezierTo(length + 20, -20, length + 40, 20);
      path.quadraticBezierTo(length + 60, widthFirst, length + widthFirst, 20);
      length += widthFirst;
    }
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
