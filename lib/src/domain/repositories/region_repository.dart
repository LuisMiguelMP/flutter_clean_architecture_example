import 'package:regions/src/domain/entities/region_entity.dart';

abstract class RegionRepository {
  Future<List<RegionEntity>> findAll();
}
