import 'package:regions/src/domain/entities/region_entity.dart';

extension RegionMapper on RegionEntity {
  RegionEntity copyWith({int id, String sigla, String nome}) {
    return RegionEntity(
        id: id ?? this.id, sigla: sigla ?? this.sigla, nome: nome ?? this.nome);
  }

  static RegionEntity fromJson(Map<String, dynamic> json) =>
      RegionEntity(id: json["id"], sigla: json["sigla"], nome: json["nome"]);
}
