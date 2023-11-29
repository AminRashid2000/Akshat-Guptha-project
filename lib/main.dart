import 'package:flutter/material.dart';
import 'package:testproject/modelclass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Person>? athletList = Person.jsonData();
  List<String> levels = ["Basic", "Intermediate", "Advanced"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Athlets",
              style: TextStyle(fontSize: 70),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: levels
                    .map(
                      (level) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 10, color: Colors.blue)),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        margin:
                            const EdgeInsets.only(top: 60, left: 10, right: 10),
                        child: Column(
                          children: [
                            Text(level,
                                style: TextStyle(
                                    fontSize: 50,
                                    decoration: TextDecoration.underline)),
                            Column(
                                children: filteredlist(level)
                                    .map((athlet) => Text(
                                          athlet.name,
                                          style: TextStyle(fontSize: 30),
                                        ))
                                    .toList())
                          ],
                        ),
                      ),
                    )
                    .toList()),
          )),
    );
  }

  List<Person> filteredlist(String level) {
    List<Person> foundlist = [];
    foundlist = athletList!.where((athlet) => athlet.level == level).toList();

    return foundlist;
  }
}
