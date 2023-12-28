// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:splitbuddy/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GSplitInput implements Built<GSplitInput, GSplitInputBuilder> {
  GSplitInput._();

  factory GSplitInput([Function(GSplitInputBuilder b) updates]) = _$GSplitInput;

  int get amount;
  String get userId;
  static Serializer<GSplitInput> get serializer => _$gSplitInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {
  'UserAuth': {
    'Unregistered',
    'Registered',
  }
};
