// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Welcome to Flutter',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Welcome to Flutter'),
    //     ),
    //     body:const Center(
    //       child: RandomWords(), //Uses the Stateful widget at the bottom
    //     ),
    //   ),
    // );
    return const MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestion = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  // @override
  // Widget build(BuildContext context) {
  //   final wordPair = WordPair.random();
  //   return Text(wordPair.asPascalCase);
  // }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions(){
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i){
        if(i.isOdd){
          return const Divider();
        }

        final index = i ~/ 2;
        if(index >= _suggestion.length){
          _suggestion.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestion[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
