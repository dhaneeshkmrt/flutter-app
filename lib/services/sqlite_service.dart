import 'package:notes_app/services/db_service.dart';

class SqliteService extends DbService {
  @override
  Future<void> connectDb() {
    throw UnimplementedError();
  }

  @override
  Future<void> createTable() {
    throw UnimplementedError();
  }

  String checkFun() {
    return 'Success';
  }
}
