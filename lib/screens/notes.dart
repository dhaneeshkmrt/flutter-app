import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  Notes({Key key}) : super(key: key);

  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Notes'),
      ),
    );
  }
}
