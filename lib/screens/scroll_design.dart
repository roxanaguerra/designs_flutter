import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  ScrollScreen({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // determinar donde empieza el gradiente de cada color
          stops: [
        0.5,
        0.5
      ],
          colors: [
        Color(0xFF5EE8C5),
        Color(0xFF30BAD6),
      ]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xFF30BAD6),
        body: Container(
      decoration: boxDecoration,
      child: PageView(
        // mostrar una parte blanca del scroll inicio y al final
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          const Page1(),
          Page2(),
        ],
      ),
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background img
        Background(),

        //Main Content
        const MainContent(),
      ],
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
        color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold);
    return SafeArea(
      // no se preocupe por la parte de abajo
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF30BAD6),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF0098FA),
              shape: const StadiumBorder()),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Bienvenido',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
