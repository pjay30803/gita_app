import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:srimad_bhagvad_gita/helper/provider/theme_privider.dart';

import 'bookmark_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? jsondata;

  List mylist = [];

  @override
  void initState() {
    super.initState();
    loadJsonfile();
  }

  loadJsonfile() async {
    jsondata = await rootBundle.loadString('assets/json/Chapter1.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SriMadBhagvadGita"),
          centerTitle: true,
          backgroundColor: Colors.redAccent.shade100,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          leading: IconButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .changetheme();
              },
              icon: Icon(Icons.shuffle)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter1');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 1"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter2');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 2"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter3');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 3"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter4');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 4"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter5');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 5"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter6');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 6"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter7');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 7"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter8');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 8"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter9');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 9"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter10');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 10"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter11');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 11"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter12');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 12"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter13');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 13"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter14');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 14"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter15');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 15"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter16');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 16"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter17');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 17"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Card(
                  shadowColor: Colors.redAccent.shade100,
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, 'Chapter18');
                    },
                    title: Text("BhagvadGita"),
                    subtitle: Text("Chapter 18"),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
