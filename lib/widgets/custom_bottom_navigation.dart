import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final onTapTapped;
  int indexTap;
  CustomBottomNavigation({Key? key, this.onTapTapped, this.indexTap = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
            icon: Icon(Icons.calendar_today_outlined), label: 'Calendario'),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined), label: 'Gráfica'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Usuarios'),
      ],
      // onTap: onTapTapped(),
    );
  }
}
