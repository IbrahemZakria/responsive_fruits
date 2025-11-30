import 'package:get_it/get_it.dart';
import 'package:responsive_fruits/core/network/api_servises.dart';
import 'package:responsive_fruits/features/auth/data/repos/auth_repo_impl.dart';
import 'package:responsive_fruits/features/auth/domain/repo/auth_repo.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(apiServises: getIt<ApiServices>()),
  );
}
