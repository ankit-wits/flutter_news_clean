/// Represents a repository for handling login operations.
abstract class LoginRepository {
  /// Logs in the user with the provided [username] and [password].
  Future<void> login(String username, String password);
}
