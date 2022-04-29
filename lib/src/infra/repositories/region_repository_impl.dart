import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:regions/src/domain/entities/region_entity.dart';
import 'package:regions/src/domain/repositories/region_repository.dart';

import '../../data/mappers/region_mapper.dart';

class RegionRepositoryImpl implements RegionRepository {
  @override
  Future<List<RegionEntity>> findAll() async {
    final result = await http
        .get("https://servicodados.ibge.gov.br/api/v1/localidades/regioes");

    final data = jsonDecode(result.body);

    return (data as List)
        .map<RegionEntity>((json) => RegionMapper.fromJson(json))
        .toList();
  }
}
