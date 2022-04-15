import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/portada.jpg')),
          // TITULO
          Title(),
          // button section
          ButtonSection(),
          // descripcion
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
                'Amet amet ea excepteur elit adipisicing proident. Consequat laborum consequat cillum dolor. Lorem laborum adipisicing minim ullamco ea quis incididunt excepteur voluptate. Deserunt dolor quis nostrud proident cupidatat ea veniam.Aute velit est cillum cupidatat nostrud. Amet qui do consequat et laborum duis eu consectetur aliqua. Consectetur laboris occaecat et anim officia do ad duis esse. Eu fugiat culpa sunt sit ipsum. Elit excepteur nostrud sint ad voluptate. Cillum adipisicing consectetur magna aliquip velit ex est ut do consequat irure. Laborum culpa consectetur incididunt occaecat incididunt incididunt commodo.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        // ******** HORIZONTAL
        // mainAxisAlignment: MainAxisAlignment.start,
        // *********  VERTICAL
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            // ******** VERTICAL
            // mainAxisAlignment: MainAxisAlignment.start,
            // alinear a la izquierda. - ********* HORIZONTAL
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Imagen de un hermoso paisaje',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Abancay - Apurimac',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            icon: Icons.call,
            text: 'CALL',
          ),
          CustomButton(
            icon: Icons.send,
            text: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue[300],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          this.text,
          style: TextStyle(
            color: Colors.blue[300],
          ),
        )
      ],
    );
  }
}