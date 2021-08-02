import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dismissable"),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: 100,
          itemBuilder: (context, index) {
            return Dismissible(
              confirmDismiss: (direction) => showDialog(
                  context: context,
                  builder: (builder) => AlertDialog(
                        title: Text("Apakah Anda Yakin?"),
                        content: Text("Ini Akan Menghapus Secara Permanen!"),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: Text("Yes")),
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: Text("No")),
                        ],
                      )),
              onDismissed: (direction) => print("Dismiss"),
              direction: DismissDirection.startToEnd,
              background: Container(
                child: Icon(
                  Icons.delete,
                  size: 25,
                ),
                color: Colors.redAccent,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15),
              ),
              key: Key(index.toString()),
              child: ListTile(
                  leading: CircleAvatar(
                    child: Center(
                      child: Text("${index + 1}"),
                    ),
                  ),
                  title: Text(faker.person.name()),
                  subtitle: Text(faker.lorem.sentence())),
            );
          },
        ));
  }
}
