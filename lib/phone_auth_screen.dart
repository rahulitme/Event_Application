// import 'package:appwrite/appwrite.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'appwrite_service.dart';

// class PhoneAuthScreen extends StatefulWidget {
//   const PhoneAuthScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
// }

// class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _otpController = TextEditingController();

//   bool _isOtpSent = false;
//   bool _isLoading = false;

//   // Step 1: Send OTP to the user's phone number
//   Future<void> sendOtp() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       // Send OTP to the user's phone
//       await AppwriteService.account?.createPhoneSession(
//         userId: 'unique()',
//         phone: _phoneController.text, code: '',
//       );

//       setState(() {
//         _isOtpSent = true;
//       });
//       if (kDebugMode) {
//         print("OTP Sent!");
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print("Error sending OTP: $e");
//       }
//       // ignore: use_build_context_synchronously
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Error sending OTP")),
//       );
//     }

//     setState(() {
//       _isLoading = false;
//     });
//   }

//   // Step 2: Verify the OTP entered by the user
//   Future<void> verifyOtp() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       // Verify OTP by creating a new phone session
//       final session = await AppwriteService.account?.createPhoneSession(
//         userId: 'unique()', // This should match the user ID used for the initial OTP request
//         phone: _phoneController.text,
//         code: _otpController.text,
//       );

//       if (session != null) {
//         if (kDebugMode) {
//           print("OTP Verified! User authenticated.");
//         }
//         // ignore: use_build_context_synchronously
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text("OTP Verified!")),
//         );
//         // Navigate to home or main screen
//       } else {
//         if (kDebugMode) {
//           print("OTP Verification Failed.");
//         }
//         // ignore: use_build_context_synchronously
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text("Invalid OTP")),
//         );
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print("Error verifying OTP: $e");
//       }
//       // ignore: use_build_context_synchronously
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Error verifying OTP")),
//       );
//     }

//     setState(() {
//       _isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Phone OTP Authentication'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _phoneController,
//               decoration: const InputDecoration(labelText: 'Enter Phone Number'),
//               keyboardType: TextInputType.phone,
//             ),
//             const SizedBox(height: 16.0),
//             if (_isOtpSent)
//               TextField(
//                 controller: _otpController,
//                 decoration: const InputDecoration(labelText: 'Enter OTP'),
//                 keyboardType: TextInputType.number,
//               ),
//             const SizedBox(height: 16.0),
//             _isLoading
//                 ? const CircularProgressIndicator()
//                 : ElevatedButton(
//                     onPressed: _isOtpSent ? verifyOtp : sendOtp,
//                     child: Text(_isOtpSent ? 'Verify OTP' : 'Send OTP'),
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// extension on Account? {
//   createPhoneSession({required String userId, required String phone, required String code}) {}
// }
