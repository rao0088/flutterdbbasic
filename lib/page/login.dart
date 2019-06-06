import 'package:flutter/material.dart';

import 'notes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Item'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Note(NoteMode.Editing)));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 30.0, right: 20.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Titlem(),
                  Textm(),
                ],
              ),
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Note(NoteMode.Adding)));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Titlem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "some title 1",
      style: TextStyle(
          fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.red),
    );
  }
}

class Textm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque maximus eget felis sed porta. Etiam nec egestas metus. Curabitur vulputate a felis sed porttitor. Nam pulvinar feugiat ornare. Curabitur vitae convallis risus. Donec dapibus id eros in gravida. Proin lectus dolor, iaculis volutpat egestas sit amet, posuere ut sapien. Nunc elementum est posuere dolor sodales, eu iaculis justo ultricies. Nam commodo ligula magna, ac blandit felis sagittis et. Praesent ac lacus ut odio fermentum varius vitae eget ligula",
      style: TextStyle(fontSize: 12.0, color: Colors.grey.shade500),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
