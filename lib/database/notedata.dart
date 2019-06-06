import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class Noteprovider {
   Database db;

   Future open() async{
    db = await openDatabase(join(await getDatabasesPath(), 'notes.db'),
     version: 1,

      onCreate: (Database db, int version) async{
       db.execute( '''
          create table Notes(
          id integer primary key autoincrement,
          title text not null,
          subtext text not null
         );
''');
      }

     );


   }
   Future<List<Map<String,dynamic>>> getNotesList()async{
     if (db==null){
       await open();
     }
    return await db.query('Notes');
   }
}