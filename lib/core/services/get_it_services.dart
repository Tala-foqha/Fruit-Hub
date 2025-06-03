// core/services/get_it_services.dart
import 'package:fruits_app/core/services/firebase_auth_services.dart';
import 'package:fruits_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruits_app/features/auth/domain/repos/auth_repos.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<AuthRebos>(AuthRepoImpl(
    firebaseAuthServices: getIt<FirebaseAuthServices>(),

  ));

}