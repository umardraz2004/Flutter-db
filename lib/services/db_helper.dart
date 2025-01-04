import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  // Getter to access the database instance
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Initialize the SQLite database
  Future<Database> _initDatabase() async {
    // Manually create a database path using `path`
    String directory = await getDatabasesPath(); // Current working directory
    String path = join(directory, 'app_database.db');

    // Open or create the database
    return await openDatabase(
      path,
      version: 2,
      onCreate: _onCreate, // Define the database schema
    );
  }

  // Define the database schema and initial data
  Future<void> _onCreate(Database db, int version) async {
    // Create a table
    await db.execute('''
      CREATE TABLE my_table (
        id INTEGER PRIMARY KEY NOT NULL,
        text TEXT NOT NULL
      )
    ''');

    // Insert initial data into the table
    await db.insert('my_table', {'id': '1', 'text': 'text 1'});
    await db.insert('my_table', {'id': '2', 'text': 'text 2'});
    await db.insert('my_table', {'id': '3', 'text': 'text 3'});
    await db.insert('my_table', {'id': '4', 'text': 'text 4'});
    await db.insert('my_table', {'id': '5', 'text': 'text 5'});
    await db.insert('my_table', {'id': '6', 'text': 'text 6'});
    await db.insert('my_table', {'id': '7', 'text': 'text 7'});
    await db.insert('my_table', {'id': '8', 'text': 'text 8'});
    await db.insert('my_table', {'id': '9', 'text': 'text 9'});
    await db.insert('my_table', {'id': '10', 'text': 'text 10'});
  }

  // Manually run an insert function after initialization (when required)
  Future<void> insertData(int id , String text) async {
    final db = await database; // Ensure database is initialized
    // Insert new data into the table
    await db.insert('my_table', {'text': text});
  }

  // Fetch data from the table
  Future<List<Map<String, dynamic>>> getData() async {
    final db = await database; // Ensure database is initialized
    return await db.query('my_table'); // Query the table
  }
}
