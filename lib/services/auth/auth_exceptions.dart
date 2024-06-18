// sign in exceptions
class UserNotLoggedInAuthException implements Exception {}

class UserNotFoundAuthException implements Exception {}

class WrongPasswordAuthException implements Exception {}

// sign up exceptions
class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

class InvalidEmailAuthException implements Exception {}

// unknown exceptions
class GenericAuthException implements Exception {}
