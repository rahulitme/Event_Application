// // /lib/services/auth_service.dart

// import 'package:appwrite/appwrite.dart';
// import 'package:flutter/foundation.dart';

// class AuthService {
//   final Client client = Client()
//       .setEndpoint('https://cloud.appwrite.io/v1')
//       .setProject('<671bd0cd003c5d0daca0>');

//   final Account account;

//   AuthService() : account = Account(Client());

//   Future<void> registerUser(String email, String password) async {
//     try {
//       await account.create(
//         userId: ID.unique(),
//         email: email,
//         password: password,
//       );
//       if (kDebugMode) {
//         print('Registration successful! OTP sent to email.');
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print('Registration Error: $e');
//       }
//     }
//   }

//   Future<void> verifyEmail(String userId, String secret) async {
//     try {
//       await account.updateVerification(
//         userId: userId,
//         secret: secret, // OTP code received via email
//       );
//       if (kDebugMode) {
//         print('Email verified successfully!');
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print('Verification Error: $e');
//       }
//     }
//   }

//   resetPassword(String email) {}

//   logout() {}

//   login(String email, String password) {}

//   register(String email, String password) {}
// }
// // 


import 'package:appwrite/appwrite.dart';

class AuthService {
  static final Client client = Client()
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('671d49310035919a1b84'); // Your project ID

  static final Account account = Account(client);
  
  static final AuthService _instance = AuthService._internal();
  
  factory AuthService() {
    return _instance;
  }
  
  AuthService._internal();

  Future<String> sendOTP(String phoneNumber) async {
    try {
      final token = await account.createPhoneToken(
        userId: ID.unique(),
        phone: phoneNumber
      );
      return token.userId;
    } catch (e) {
      throw Exception('Failed to send OTP: $e');
    }
  }

  Future<void> verifyOTP(String userId, String otp) async {
    try {
      await account.createSession(
        userId: userId,
        secret: otp
      );
    } catch (e) {
      throw Exception('Failed to verify OTP: $e');
    }
  }

  Future<bool> isLoggedIn() async {
    try {
      await account.get();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> logout() async {
    try {
      await account.deleteSession(sessionId: 'current');
    } catch (e) {
      throw Exception('Failed to logout: $e');
    }
  }
}