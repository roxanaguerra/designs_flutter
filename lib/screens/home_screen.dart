import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/scroll_design.dart';
import 'package:flutter/material.dart';

import 'package:designs/widgets/background.dart';
import 'package:designs/widgets/card_table.dart';
import 'package:designs/widgets/custom_bottom_navigation.dart';
import 'package:designs/widgets/page_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    const HomeScreenWidget(),
    ScrollScreen(),
    const BasicDesignScreen()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetsChildren[indexTap],
        // bottomNavigationBar:
        //     CustomBottomNavigation(onTapTapped: onTapTapped, indexTap: indexTap),
        bottomNavigationBar: BottomNavigationBar(
          // no mostrar el label del item seleccionado
          showSelectedLabels: true,
          // no mostrar el label de los item no seleccionados
          showUnselectedLabels: true,
          selectedItemColor: Colors.pink,
          backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
          unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
          currentIndex: indexTap,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined), label: 'Card'),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart_outline_outlined), label: 'Scroll'),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                label: 'Perfil'),
          ],
          onTap: onTapTapped,
        ));
  }
}

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background
        BackgroundDesign(),

        // home body
        _HomeBody(),
      ],
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTitle(),

          // Card Table
          const CardTable(),
        ],
      ),
    );
  }
}
