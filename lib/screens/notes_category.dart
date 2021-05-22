import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/screens/notes.dart';
import 'package:notes_app/widgets/add_notes_dialog.dart';

class NotesCategory extends StatefulWidget {
  NotesCategory({Key key}) : super(key: key);

  @override
  _NotesCategoryState createState() => _NotesCategoryState();
}

class _NotesCategoryState extends State<NotesCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text('Title $index'),
                        leading: Icon(Icons.note),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Notes();
                            }),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AddNotesDialog();
                        });
                  },
                ))
          ],
        ),
      ),
    );
  }
}
