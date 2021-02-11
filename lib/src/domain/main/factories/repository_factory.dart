import 'package:regions/src/domain/infra/repositories/region_repository_impl.dart';
import 'package:regions/src/domain/repositories/region_repository.dart';

class RepositoryFactory {
  static RegionRepository makeRegionRepository() => RegionRepositoryImpl();
}
