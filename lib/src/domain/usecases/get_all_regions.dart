import 'package:regions/src/domain/entities/region_entity.dart';
import 'package:regions/src/domain/repositories/region_repository.dart';

class GetAllRegions {
  final RegionRepository _regionRepository;

  GetAllRegions(this._regionRepository);

  Future<List<RegionEntity>> call() => _regionRepository.findAll();
}
