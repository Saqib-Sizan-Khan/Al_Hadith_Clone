import 'package:drift/drift.dart';

class Books extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get title_ar => text()();
  IntColumn get number_of_hadis => integer()();
  TextColumn get abvr_code => text()();
  TextColumn get book_name => text()();
  TextColumn get book_descr => text()();
  TextColumn get color_code => text()();
}