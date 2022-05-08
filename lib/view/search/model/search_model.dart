// ----------------------------------------------------------------------------------
// Please note that this is a generated file. Edit model as in your response or request.
// ----------------------------------------------------------------------------------

import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel extends INetworkModel<SearchModel> {
  String? string;
  int? integer;
  bool? boolean;
  List? list;
  Map? map;

  SearchModel({
      this.string, 
      this.integer,
      this.boolean,
      this.list,
      this.map,
    });

  @override
  SearchModel fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$SearchModelToJson(this);
  }
}

