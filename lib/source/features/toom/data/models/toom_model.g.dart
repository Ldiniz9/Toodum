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
  exp: json['exp'] as num? ?? 0,
  isAlive: json['isAlive'] as bool? ?? true,
);

Map<String, dynamic> _$ToomModelToJson(ToomModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'skin': instance.skin,
  'stage': instance.stage,
  'hunger': instance.hunger,
  'clean': instance.clean,
  'exp': instance.exp,
  'isAlive': instance.isAlive,
};
