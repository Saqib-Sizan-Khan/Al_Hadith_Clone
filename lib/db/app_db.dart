import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import '../entity/books_entity.dart';

part 'app_db.g.dart';

LazyDatabase _openConnection () {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, "hadith_bn_test.db"));

    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Books])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}