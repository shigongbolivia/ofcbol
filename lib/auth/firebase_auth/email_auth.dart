import 'package:firebase_auth/firebase_auth.dart';

Future<UserCredential?> emailSignInFunc(
  String email,
  String password,
) async {
  try {
    return await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );
  } catch (e) {
    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'user-not-found':
          throw Exception('No se encontró una cuenta con este correo.');
        case 'wrong-password':
          throw Exception('La contraseña es incorrecta. Inténtalo de nuevo.');
        default:
          throw Exception('Ocurrió un error. ${e.message}');
      }
    } else {
      throw Exception('Ocurrió un error inesperado.');
    }
  }
}

Future<UserCredential?> emailCreateAccountFunc(
  String email,
  String password,
) async {
  try {
    return await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password,
    );
  } catch (e) {
    if (e is FirebaseAuthException) {
      switch (e.code) {
        case 'email-already-in-use':
          throw Exception(
              'Este correo ya está registrado con otra cuenta. Usa otro correo.');
        case 'weak-password':
          throw Exception(
              'La contraseña es demasiado débil. Usa al menos 6 caracteres.');
        default:
          throw Exception('Ocurrió un error. ${e.message}');
      }
    } else {
      throw Exception('Ocurrió un error inesperado.');
    }
  }
}
