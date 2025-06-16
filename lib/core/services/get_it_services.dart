// core/services/get_it_services.dart
import 'package:fruits_app/core/services/data_base_services.dart';
import 'package:fruits_app/core/services/fire_store_services.dart';
import 'package:fruits_app/core/services/firebase_auth_services.dart';
import 'package:fruits_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruits_app/features/auth/domain/repos/auth_repos.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
    getIt.registerSingleton<DatabaseServices>(FireStoreServices());

  getIt.registerSingleton<AuthRebos>(AuthRepoImpl(
  
      firebaseAuthService: getIt<FirebaseAuthService>(),
    databaseService:   getIt<DatabaseServices>()

  ));

}