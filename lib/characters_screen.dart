import 'package:flutter/material.dart';
import 'package:my_dictionary/model/characters.dart';

class Characters_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Character Cards Example'),
          backgroundColor: Colors.green,
          leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back),
          ),

        ),
        body: CardRows(characterList: characters),
      ),
    );
  }
}

class CardRows extends StatelessWidget {
  final List<Character> characterList;

  CardRows({required this.characterList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (characterList.length / 2).ceil(),
      itemBuilder: (context, index) {
        final int startIndex = index * 2;
        final int endIndex = startIndex + 1;
        return CardRow(
          card1: CardWidget(characterList[startIndex]),
          card2: endIndex < characterList.length
              ? CardWidget(characterList[endIndex])
              : null,
        );
      },
    );
  }
}

class CardRow extends StatelessWidget {
  final CardWidget? card1;
  final CardWidget? card2;

  CardRow({this.card1, this.card2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: card1 ?? Container(), // Use Container if card1 is null
        ),
        Expanded(
          child: card2 ?? Container(), // Use Container if card2 is null
        ),
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  final Character character;

  CardWidget(this.character);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              character.kanji,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              character.romaji,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

