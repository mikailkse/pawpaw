import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'breeds_request_model.g.dart';

@JsonSerializable()
class BreedsRequestModel extends INetworkModel<BreedsRequestModel> {
  int? adaptability;
  @JsonKey(name: 'affection_level')
  int? affectionLevel;
  @JsonKey(name: 'alt_names')
  String? altNames;
  @JsonKey(name: 'cfa_url')
  String? cfaUrl;
  @JsonKey(name: 'child_friendly')
  int? childFriendly;
  @JsonKey(name: 'country_code')
  String? countryCode;
  @JsonKey(name: 'country_codes')
  String? countryCodes;
  String? description;
  @JsonKey(name: 'dog_friendly')
  int? dogFriendly;
  @JsonKey(name: 'energy_level')
  int? energyLevel;
  int? experimental;
  int? grooming;
  int? hairless;
  @JsonKey(name: 'health_issues')
  int? healthIssues;
  int? hypoallergenic;
  String? id;
  Image? image;
  int? indoor;
  int? intelligence;
  int? lap;
  @JsonKey(name: 'life_span')
  String? lifeSpan;
  String? name;
  int? natural;
  String? origin;
  int? rare;
  @JsonKey(name: 'reference_image_id')
  String? referenceImageId;
  int? rex;
  @JsonKey(name: 'shedding_level')
  int? sheddingLevel;
  @JsonKey(name: 'short_legs')
  int? shortLegs;
  @JsonKey(name: 'social_needs')
  int? socialNeeds;
  @JsonKey(name: 'stranger_friendly')
  int? strangerFriendly;
  @JsonKey(name: 'suppressed_tail')
  int? suppressedTail;
  String? temperament;
  @JsonKey(name: 'vcahospitals_url')
  String? vcahospitalsUrl;
  @JsonKey(name: 'vetstreet_url')
  String? vetstreetUrl;
  int? vocalisation;
  Weight? weight;
  @JsonKey(name: 'wikipedia_url')
  String? wikipediaUrl;

  BreedsRequestModel(
      {this.adaptability,
      this.affectionLevel,
      this.altNames,
      this.cfaUrl,
      this.childFriendly,
      this.countryCode,
      this.countryCodes,
      this.description,
      this.dogFriendly,
      this.energyLevel,
      this.experimental,
      this.grooming,
      this.hairless,
      this.healthIssues,
      this.hypoallergenic,
      this.id,
      this.image,
      this.indoor,
      this.intelligence,
      this.lap,
      this.lifeSpan,
      this.name,
      this.natural,
      this.origin,
      this.rare,
      this.referenceImageId,
      this.rex,
      this.sheddingLevel,
      this.shortLegs,
      this.socialNeeds,
      this.strangerFriendly,
      this.suppressedTail,
      this.temperament,
      this.vcahospitalsUrl,
      this.vetstreetUrl,
      this.vocalisation,
      this.weight,
      this.wikipediaUrl});

  @override
  BreedsRequestModel fromJson(Map<String, dynamic> json) {
    return _$BreedsRequestModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return _$BreedsRequestModelToJson(this);
  }
}

@JsonSerializable()
class Image {
  int? height;
  String? id;
  String? url;
  int? width;

  Image({this.height, this.id, this.url, this.width});

  factory Image.fromJson(Map<String, dynamic> json) {
    return _$ImageFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ImageToJson(this);
  }
}

@JsonSerializable()
class Weight {
  String? imperial;
  String? metric;

  Weight({this.imperial, this.metric});

  factory Weight.fromJson(Map<String, dynamic> json) {
    return _$WeightFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$WeightToJson(this);
  }
}
