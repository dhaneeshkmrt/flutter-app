import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNotesDialog extends StatefulWidget {
  AddNotesDialog({Key key}) : super(key: key);

  @override
  _AddNotesDialogState createState() => _AddNotesDialogState();
}

class _AddNotesDialogState extends State<AddNotesDialog> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Dialog(
      backgroundColor: Colors.teal[500],
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: screenHeight * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(),
                ),
                Icon(
                  Icons.pin,
                  size: 36.0,
                )
              ],
            ),
            Expanded(
              child: TextField(
                  maxLines: null, keyboardType: TextInputType.multiline),
            )
          ],
        ),
      ),
    );
  }
}
