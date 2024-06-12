class AuthService {
  static final Map<String, String> _users = {};

  Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    return _users[email] == password;
  }

  Future<bool> register(String email, String password) async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    if (_users.containsKey(email)) {
      return false; // Email already registered
    } else {
      _users[email] = password;
      return true;
    }
  }
}
