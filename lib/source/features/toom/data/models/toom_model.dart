import 'package:json_annotation/json_annotation.dart';
import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';

part 'toom_model.g.dart';

@JsonSerializable(createToJson: true)
final class ToomModel extends ToomEntity {
  const ToomModel({
    this.id,
    this.name = '',
    this.description = '',
    this.type = '',
    this.skin = '',
    this.stage = '',
    this.hunger = 0,
    this.clean = 0,
    this.exp = 0,
    this.isAlive = true,
  });

  @override
  final String? id;

  @override
  final String name;

  @override
  final String description;

  @override
  final String type;

  @override
  final String skin;

  @override
  final String stage;

  @override
  final num hunger;

  @override
  final num clean;

  @override
  final num exp;

  @override
  final bool isAlive;

  ToomModel copyWith({
    String? id,
    String? name,
    String? description,
    String? type,
    String? stage,
    num? hunger,
    num? clean,
    num? exp,
    bool? isAlive,
  }) {
    return ToomModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      stage: stage ?? this.stage,
      hunger: hunger ?? this.hunger,
      clean: clean ?? this.clean,
      exp: exp ?? this.exp,
      isAlive: isAlive ?? this.isAlive,
    );
  }

  factory ToomModel.fromJson(Map<String, dynamic> json) =>
      _$ToomModelFromJson(json);

  Map<String, dynamic> toJson() => _$ToomModelToJson(this);
}
