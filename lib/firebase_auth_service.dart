// import 'package:equatable/equatable.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';


// Future<UserEntity?> signInWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );

//       // return _mapFirebaseUser(userCredential.user);
//       return userCredential.user;
//     } on FirebaseAuthException catch (e) {
//       throw _determineError(e);
//     }
//   }

//   @override
//   Future<UserEntity?> createUserWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );

//       return _mapFirebaseUser(FirebaseAuth.instance.currentUser);
//     } on FirebaseAuthException catch (e) {
//       throw _determineError(e);
//     }
//   }
// class UserEntity extends Equatable {
//   const UserEntity({
//     required this.id,
//     required this.firstName,
//     required this.lastName,
//     required this.email,
//     // required this.imageUrl,
//   });

//   final String id;
//   final String firstName;
//   final String lastName;
//   final String email;
//   // final String imageUrl;

//   factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
//         id: json['id'] ?? "",
//         firstName: json['firstName'] ?? "",
//         lastName: json['lastName'] ?? "",
//         email: json['email'] ?? "",
//         // imageUrl: json['imageUrl'] ?? "",
//       );

//   Map<String, dynamic> toJson() => <String, dynamic>{
//         'id': id,
//         'firstName': firstName,
//         'lastName': lastName,
//         'email': email,
//         // 'imageUrl': imageUrl,
//       };
//   factory UserEntity.empty() => const UserEntity(
//         id: "",
//         firstName: "",
//         lastName: "",
//         email: "",
//         // imageUrl: "",
//       );
//   @override
//   // List<Object?> get props => [id, firstName, lastName, email, imageUrl];
//   List<Object?> get props => [id, firstName, lastName, email];
// }

//   AuthError _determineError(FirebaseAuthException exception) {
//     switch (exception.code) {
//       case 'invalid-email':
//         return AuthError.invalidEmail;
//       case 'user-disabled':
//         return AuthError.userDisabled;
//       case 'user-not-found':
//         return AuthError.userNotFound;
//       case 'wrong-password':
//         return AuthError.wrongPassword;
//       case 'email-already-in-use':
//       case 'account-exists-with-different-credential':
//         return AuthError.emailAlreadyInUse;
//       case 'invalid-credential':
//         return AuthError.invalidCredential;
//       case 'operation-not-allowed':
//         return AuthError.operationNotAllowed;
//       case 'weak-password':
//         return AuthError.weakPassword;
//       case 'ERROR_MISSING_GOOGLE_AUTH_TOKEN':
//       default:
//         return AuthError.error;
//     }
//   }


// enum AuthError {
//   invalidEmail,
//   userDisabled,
//   userNotFound,
//   wrongPassword,
//   emailAlreadyInUse,
//   invalidCredential,
//   operationNotAllowed,
//   weakPassword,
//   error,
// }