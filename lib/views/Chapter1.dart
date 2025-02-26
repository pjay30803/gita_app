import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:srimad_bhagvad_gita/views/screens/detail_screen.dart';

import '../helper/provider/bookmark_provider.dart';

class Chapter1 extends StatefulWidget {
  const Chapter1({super.key});

  @override
  State<Chapter1> createState() => _Chapter1State();
}

class _Chapter1State extends State<Chapter1> {
  List? chapterData;
  String? jsonString;

  @override
  void initState() {
    super.initState();
    loadJson();
  }

  Future<void> loadJson() async {
    jsonString = await rootBundle.loadString('assets/json/Chapter1.json');
    Map decodedData = jsonDecode(jsonString!);
    setState(() {
      chapterData = decodedData['BhagavadGitaChapter'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        centerTitle: true,
        title: const Text(
          "CHAPTER 1 DETAILS",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: chapterData == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: chapterData!.length,
              itemBuilder: (context, i) {
                var verse = chapterData![i];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerseDetailScreen(verse: verse),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 2,
                    shadowColor: Colors.blue,
                    margin: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Verse ${verse['verse']}',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              verse['text'],
                              style: const TextStyle(fontSize: 16),
                            ),
                          ]),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
