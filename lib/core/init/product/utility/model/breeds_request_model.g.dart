// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breeds_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreedsRequestModel _$BreedsRequestModelFromJson(Map<String, dynamic> json) =>
    BreedsRequestModel(
      adaptability: json['adaptability'] as int?,
      affectionLevel: json['affection_level'] as int?,
      altNames: json['alt_names'] as String?,
      cfaUrl: json['cfa_url'] as String?,
      childFriendly: json['child_friendly'] as int?,
      countryCode: json['country_code'] as String?,
      countryCodes: json['country_codes'] as String?,
      description: json['description'] as String?,
      dogFriendly: json['dog_friendly'] as int?,
      energyLevel: json['energy_level'] as int?,
      experimental: json['experimental'] as int?,
      grooming: json['grooming'] as int?,
      hairless: json['hairless'] as int?,
      healthIssues: json['health_issues'] as int?,
      hypoallergenic: json['hypoallergenic'] as int?,
      id: json['id'] as String?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      indoor: json['indoor'] as int?,
      intelligence: json['intelligence'] as int?,
      lap: json['lap'] as int?,
      lifeSpan: json['life_span'] as String?,
      name: json['name'] as String?,
      natural: json['natural'] as int?,
      origin: json['origin'] as String?,
      rare: json['rare'] as int?,
      referenceImageId: json['reference_image_id'] as String?,
      rex: json['rex'] as int?,
      sheddingLevel: json['shedding_level'] as int?,
      shortLegs: json['short_legs'] as int?,
      socialNeeds: json['social_needs'] as int?,
      strangerFriendly: json['stranger_friendly'] as int?,
      suppressedTail: json['suppressed_tail'] as int?,
      temperament: json['temperament'] as String?,
      vcahospitalsUrl: json['vcahospitals_url'] as String?,
      vetstreetUrl: json['vetstreet_url'] as String?,
      vocalisation: json['vocalisation'] as int?,
      weight: json['weight'] == null
          ? null
          : Weight.fromJson(json['weight'] as Map<String, dynamic>),
      wikipediaUrl: json['wikipedia_url'] as String?,
    );

Map<String, dynamic> _$BreedsRequestModelToJson(BreedsRequestModel instance) =>
    <String, dynamic>{
      'adaptability': instance.adaptability,
      'affection_level': instance.affectionLevel,
      'alt_names': instance.altNames,
      'cfa_url': instance.cfaUrl,
      'child_friendly': instance.childFriendly,
      'country_code': instance.countryCode,
      'country_codes': instance.countryCodes,
      'description': instance.description,
      'dog_friendly': instance.dogFriendly,
      'energy_level': instance.energyLevel,
      'experimental': instance.experimental,
      'grooming': instance.grooming,
      'hairless': instance.hairless,
      'health_issues': instance.healthIssues,
      'hypoallergenic': instance.hypoallergenic,
      'id': instance.id,
      'image': instance.image,
      'indoor': instance.indoor,
      'intelligence': instance.intelligence,
      'lap': instance.lap,
      'life_span': instance.lifeSpan,
      'name': instance.name,
      'natural': instance.natural,
      'origin': instance.origin,
      'rare': instance.rare,
      'reference_image_id': instance.referenceImageId,
      'rex': instance.rex,
      'shedding_level': instance.sheddingLevel,
      'short_legs': instance.shortLegs,
      'social_needs': instance.socialNeeds,
      'stranger_friendly': instance.strangerFriendly,
      'suppressed_tail': instance.suppressedTail,
      'temperament': instance.temperament,
      'vcahospitals_url': instance.vcahospitalsUrl,
      'vetstreet_url': instance.vetstreetUrl,
      'vocalisation': instance.vocalisation,
      'weight': instance.weight,
      'wikipedia_url': instance.wikipediaUrl,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      height: json['height'] as int?,
      id: json['id'] as String?,
      url: json['url'] as String?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'height': instance.height,
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
    };

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      imperial: json['imperial'] as String?,
      metric: json['metric'] as String?,
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      'imperial': instance.imperial,
      'metric': instance.metric,
    };
