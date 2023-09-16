class Character {
  final String kanji;
  final String romaji;

  Character({required this.kanji, required this.romaji});
}

// Create a list of Character objects
List<Character> characters = [
  Character(kanji: '漢字1', romaji: 'Kanji 1'),
  Character(kanji: '漢字2', romaji: 'Kanji 2'),
  Character(kanji: '漢字3', romaji: 'Kanji 3'),
  Character(kanji: '漢字4', romaji: 'Kanji 4'),
  // Add more characters as needed
];