import 'package:regions/src/domain/usecases/get_all_regions.dart';
import 'package:regions/src/domain/presentation/presenters/regions_presenter.dart';
import 'package:regions/src/domain/ui/pages/regions/presenter/region_presenter.dart';

import 'repository_factory.dart';

class PresenterFactory {
  static RegionPresenter makeRegionPresenter() => RegionsPresenterImpl(
      GetAllRegions(RepositoryFactory.makeRegionRepository()));
}
