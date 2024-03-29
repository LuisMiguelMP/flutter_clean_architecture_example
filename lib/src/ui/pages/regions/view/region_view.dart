import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/entities/region_entity.dart';
import '../presenter/region_presenter.dart';

class RegionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RegionPresenter presenter = Provider.of<RegionPresenter>(context);

    return Scaffold(
        body: Container(
            margin: const EdgeInsets.all(12),
            child: FutureBuilder<List<RegionEntity>>(
                future: presenter.getAll(),
                builder: (_, snapshot) {
                  return snapshot.hasData
                      ? ListView(
                          children: snapshot.data
                              .map((region) => ListTile(
                                    title: Text(region.nome),
                                  ))
                              .toList(),
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                })));
  }
}
