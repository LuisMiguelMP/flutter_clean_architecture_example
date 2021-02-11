import 'package:regions/src/domain/entities/region_entity.dart';

abstract class RegionPresenter {
  Future<List<RegionEntity>> getAll();
}
