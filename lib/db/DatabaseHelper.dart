import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  DatabaseHelper.internal();

  Future<Database> initDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'your_database_name.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE "User" (
        "userId" INTEGER UNIQUE,
        "userName" TEXT NOT NULL,
        "Email" TEXT NOT NULL UNIQUE,
        "Phone" NUMERIC NOT NULL,
        "Address" TEXT,
        "image" TEXT,
        PRIMARY KEY("userId" AUTOINCREMENT)
      );
    ''');
    await db.execute('''
      CREATE TABLE "Services" (
        "name" INTEGER NOT NULL,
        "Id" INTEGER,
        "type" TEXT NOT NULL,
        "cost" NUMERIC NOT NULL,
        PRIMARY KEY("Id" AUTOINCREMENT)
      );
    ''');
    await db.execute('''
      CREATE TABLE "Offers" (
        "Id" INTEGER,
        "Rate" INTEGER NOT NULL,
        "Type" TEXT NOT NULL,
        PRIMARY KEY("Id" AUTOINCREMENT)
      );
    ''');

    await db.execute('''
      CREATE TABLE "Crew" (
        "StaffId" INTEGER,
        "StaffName" TEXT NOT NULL,
        "StaffWork" TEXT NOT NULL,
        "StaffNumber" TEXT NOT NULL,
        "StaffEmail" TEXT NOT NULL,
        "StaffAddress" TEXT NOT NULL,
        PRIMARY KEY("StaffId")
      );
    ''');

    await db.execute('''
      CREATE TABLE "Bookings" (
        "BookId" INTEGER,
        "userId" INTEGER,
        "TimeBooking" NUMERIC NOT NULL CHECK(TimeBooking >= 9 AND TimeBooking < 11),
        FOREIGN KEY("userId") REFERENCES "User"("userId"),
        PRIMARY KEY("BookId")
      );
    ''');

    await db.execute('''
      CREATE TABLE "BookServices" (
        "BookId" INTEGER,
        "Id" INTEGER,
        FOREIGN KEY("BookId") REFERENCES "Bookings"("BookId"),
        FOREIGN KEY("Id") REFERENCES "Services"("Id"),
        PRIMARY KEY("BookId","Id")
      );
    ''');

    await db.execute('''
      CREATE TABLE "AppointmentClients" (
        "Id" INTEGER UNIQUE,
        "Date" Date NOT NULL,
        "Time" TIME NOT NULL,
        "userId" INTEGER,
        FOREIGN KEY("userId") REFERENCES "User"("userId"),
        PRIMARY KEY("Id" AUTOINCREMENT)
      );
    ''');
  }

  Future<int> insertUser(Map<String, dynamic> user) async {
    Database db = await database;
    return await db.insert('User', user);
  }
  Future<int> insertAppointmentClients(Map<String, dynamic> appointmentClients) async {
    Database db = await database;
    return await db.insert('AppointmentClients', appointmentClients);
  }
  Future<int> insertOffers(Map<String, dynamic> offers) async {
    Database db = await database;
    return await db.insert('Offers', offers);
  }
}
