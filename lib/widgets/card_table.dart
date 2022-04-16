import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SigleCard(
            color: Colors.blue,
            icon: Icons.dashboard,
            text: 'General',
          ),
          _SigleCard(
            color: Colors.purple,
            icon: Icons.car_repair,
            text: 'Transporte',
          ),
        ]),
        TableRow(children: [
          _SigleCard(
            color: Colors.pink,
            icon: Icons.shopping_bag,
            text: 'Compras',
          ),
          _SigleCard(
            color: Colors.orange,
            icon: Icons.attach_money_outlined,
            text: 'Facturas',
          ),
        ]),
        TableRow(children: [
          _SigleCard(
            color: Colors.yellow,
            icon: Icons.videocam_outlined,
            text: 'Entretenimiento',
          ),
          _SigleCard(
            color: Colors.green,
            icon: Icons.dining_outlined,
            text: 'Tienda de comestibles',
          ),
        ]),
        TableRow(children: [
          _SigleCard(
            color: Colors.blue,
            icon: Icons.dashboard,
            text: 'General',
          ),
          _SigleCard(
            color: Colors.purple,
            icon: Icons.car_repair,
            text: 'Transporte',
          ),
        ]),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(
              this.icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            this.text,
            style: TextStyle(color: this.color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
