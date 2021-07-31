import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Chat Apps"),
          ),
          body: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return ChatItem(
                imageUrl: "https://picsum.photos/id/$index/200/300",
                title: faker.person.name(),
                subtitle: faker.lorem.sentence(),
              );
            },
          )),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem({this.imageUrl, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text("10.00 PM"),
    );
  }
}
