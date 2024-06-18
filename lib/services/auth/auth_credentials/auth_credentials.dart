import 'package:cloud_firestore/cloud_firestore.dart';

class AuthCredentials {
  final authCredential = FirebaseFirestore.instance.collection('credentials');

  Future<void> addUser({
    required String username,
    required String firstName,
    required String lastName,
    required int phoneNumber,
  }) async {
    await authCredential.add({
      'username': username,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
    });
  }
}
