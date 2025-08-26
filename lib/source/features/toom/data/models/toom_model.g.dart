// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToomModel _$ToomModelFromJson(Map<String, dynamic> json) => ToomModel(
  id: json['id'] as String?,
  name: json['name'] as String? ?? '',
  description: json['description'] as String? ?? '',
  skin: json['skin'] as String? ?? '',
  stage: json['stage'] as String? ?? '',
  hunger: json['hunger'] as num? ?? 0,
  clean: json['clean'] as num? ?? 0,
);

Map<String, dynamic> _$ToomModelToJson(ToomModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'skin': instance.skin,
  'stage': instance.stage,
  'hunger': instance.hunger,
  'clean': instance.clean,
};
