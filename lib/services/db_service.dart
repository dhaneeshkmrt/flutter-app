abstract class DbService {
  Future<void> connectDb();
  Future<void> createTable();
  // Future<bool> insertData();
}
