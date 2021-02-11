import 'package:regions/src/domain/usecases/get_all_regions.dart';
import 'package:regions/src/domain/entities/region_entity.dart';
import 'package:regions/src/domain/ui/pages/regions/presenter/region_presenter.dart';

class RegionsPresenterImpl implements RegionPresenter {
  final GetAllRegions _getAllRegioes;

  RegionsPresenterImpl(this._getAllRegioes);

  @override
  Future<List<RegionEntity>> getAll() => _getAllRegioes();
}
