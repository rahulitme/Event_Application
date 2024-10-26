// // import 'package:appwrite/appwrite.dart';

// // class AppwriteClient {
// //   static final Client client = Client()
// //     ..setEndpoint('https://cloud.appwrite.io/v1') // Your Appwrite endpoint
// //     ..setProject('671bd0cd003c5d0daca0'); // Your Appwrite project ID
// // }



// // import 'package:appwrite/appwrite.dart';

// // class AppwriteService {
// //   static final Client client = Client();
// //   static Account? account;

// //   // Initialize Appwrite Client and Account
// //   static void init() {
// //     client
// //       ..setEndpoint('https://cloud.appwrite.io/v1') // Replace with Appwrite endpoint
// //       ..setProject('671bd0cd003c5d0daca0');
// //        // Replace with your project ID

// //     // Initialize the account service
// //     account = Account(client);
// //   }
// // }



// import 'package:appwrite/appwrite.dart';

// final client = Client()
//     .setEndpoint('https://cloud.appwrite.io/v1')
//     .setProject('671bd0cd003c5d0daca0');

// final account = Account(client);

// final token = await account.createPhoneToken(
//     userId: ID.unique(),
//     phone: '+14255550123'
// );

// final userId = token.userId;

