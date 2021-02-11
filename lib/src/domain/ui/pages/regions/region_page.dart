import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regions/src/domain/main/factories/presenter_factory.dart';

import 'view/region_view.dart';

class RegionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) => PresenterFactory.makeRegionPresenter(),
        child: RegionView());
  }
}
