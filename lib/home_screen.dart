import 'package:flutter/material.dart';
import 'package:my_dictionary/User_Screen.dart';
import 'package:my_dictionary/characters_screen.dart';
import 'package:my_dictionary/color_screen.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grammar'),
      ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: CardColumn(),
          ),

    );

  }
}

class CardColumn extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: <Widget>[
        CardWidget(
          title: 'Characters',
          content: 'Learn Japanase character in one app.',
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Characters_Screen(),
              ),
            );
          },

        ),
        SizedBox(height: 16.0), // Add some spacing between the cards
        CardWidget(
          title: 'Color',
          content: 'Learn how to pronounce color in japanase',
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => Color_Screen(),
            )
            );
          },
        ),
      ],
    ),
  );
}
}

class CardWidget extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback? onTap;

  CardWidget({required this.title, required this.content, this.onTap});


@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onTap,
    child: Card(
      elevation: 4.0,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              content,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    ),
  );
}


}

