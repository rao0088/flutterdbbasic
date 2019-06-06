import 'package:flutter/material.dart';

enum NoteMode{
Editing,
Adding
}

class Note extends StatelessWidget{
  final NoteMode _noteMode;
  Note(this._noteMode);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _noteMode == NoteMode.Adding ? 'Add Note' :'Edit Note'
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          TextField( decoration: InputDecoration( labelText:"Title",border: OutlineInputBorder(),),

          ),
          TextField( decoration: InputDecoration( labelText:"Subtext",border: OutlineInputBorder(),),

          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _Notebutton('ADD',Colors.green,(){
                  Navigator.pop(context);
                }),
                _Notebutton('Discart',Colors.blue,(){
                  Navigator.pop(context);
                }),
                _noteMode == NoteMode.Editing ?
                _Notebutton('Delete',Colors.red,(){
                  Navigator.pop(context);
                }) : Container(),

              ],
            ),
        ],),
      ),
    );
  }

}

class _Notebutton extends StatelessWidget{
 final String _text;
 final Color _color;
 final Function _onPressed;

 _Notebutton(this._text,this._color,this._onPressed);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(onPressed: _onPressed,
      child: Text(_text,style: TextStyle(color: Colors.white),),
      color: _color,
    );
  }

}