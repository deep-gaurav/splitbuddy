// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:billdivide/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

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

abstract class GSplitInputNonGroup
    implements Built<GSplitInputNonGroup, GSplitInputNonGroupBuilder> {
  GSplitInputNonGroup._();

  factory GSplitInputNonGroup(
      [Function(GSplitInputNonGroupBuilder b) updates]) = _$GSplitInputNonGroup;

  int get amount;
  String? get email;
  String? get userId;
  static Serializer<GSplitInputNonGroup> get serializer =>
      _$gSplitInputNonGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitInputNonGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitInputNonGroup? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitInputNonGroup.serializer,
        json,
      );
}

class GTransactionType extends EnumClass {
  const GTransactionType._(String name) : super(name);

  static const GTransactionType EXPENSE_SPLIT = _$gTransactionTypeEXPENSE_SPLIT;

  static const GTransactionType CROSS_GROUP_SETTLEMENT =
      _$gTransactionTypeCROSS_GROUP_SETTLEMENT;

  static const GTransactionType CURRENCY_CONVERSION =
      _$gTransactionTypeCURRENCY_CONVERSION;

  static const GTransactionType CASH_PAID = _$gTransactionTypeCASH_PAID;

  static Serializer<GTransactionType> get serializer =>
      _$gTransactionTypeSerializer;

  static BuiltSet<GTransactionType> get values => _$gTransactionTypeValues;

  static GTransactionType valueOf(String name) =>
      _$gTransactionTypeValueOf(name);
}

const Map<String, Set<String>> possibleTypesMap = {
  'AuthResult': {
    'UserNotSignedUp',
    'UserSignedUp',
  },
  'UserAuth': {
    'Unregistered',
    'Registered',
  },
};
