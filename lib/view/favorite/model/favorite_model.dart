// ----------------------------------------------------------------------------------
// Please note that this is a generated file. Edit model as in your response or request.
// ----------------------------------------------------------------------------------

import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'favorite_model.g.dart';

@JsonSerializable()
class FavoriteModel extends INetworkModel<FavoriteModel> {
  String? string;
  int? integer;
  bool? boolean;
  List? list;
  Map? map;

  FavoriteModel({
      this.string, 
      this.integer,
      this.boolean,
      this.list,
      this.map,
    });

  @override
  FavoriteModel fromJson(Map<String, dynamic> json) {
    return _$FavoriteModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$FavoriteModelToJson(this);
  }
}

