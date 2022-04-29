import '../../../../domain/entities/region_entity.dart';

abstract class RegionPresenter {
  Future<List<RegionEntity>> getAll();
}
