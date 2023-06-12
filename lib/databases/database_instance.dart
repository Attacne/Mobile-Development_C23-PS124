import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import '../models/scan_history_model.dart';

class DataBaseInstance {
  final String _databaseName = 'my_database.db';
  final int _databaseVersion = 1;

  //producht
  final String table = 'scanned';
  final String id = 'id';
  final String title = 'title';
  final String desc = 'desc';
  final String date = 'date';

  Database? _database;

  Future<Database> database() async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    _database = await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
    await _onCreate(_database!, _databaseVersion); // Tambahkan baris ini
    return _database!;
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        $id INTEGER PRIMARY KEY,
        $title TEXT,
        $desc TEXT,
        $date TEXT
      )
  ''');
  }

  Future<List<ScanHistoryModel>> all() async {
    final data = await _database!.query(table);
    List<ScanHistoryModel> result = data.map((e) => ScanHistoryModel.fromJson(e)).toList();
    print(result);
    return result;
  }

  Future<int> insert(Map<String, dynamic> row) async {
    final query = await _database!.insert(table, row);
    return query;
  }

  Future<void> deleteDatabase(String path) async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    await deleteDatabase(path);
    _database = null;
  }

  Future<void> deleteAllData() async {
    final db = await database();
    await db.delete(table);
  }
}
