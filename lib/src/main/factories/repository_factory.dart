import 'package:regions/src/domain/repositories/region_repository.dart';

import '../../infra/repositories/region_repository_impl.dart';

class RepositoryFactory {
  static RegionRepository makeRegionRepository() => RegionRepositoryImpl();
}
