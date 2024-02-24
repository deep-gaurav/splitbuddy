// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:billdivide/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'client_version.data.gql.g.dart';

abstract class GsupportedClientConstraintsData
    implements
        Built<GsupportedClientConstraintsData,
            GsupportedClientConstraintsDataBuilder> {
  GsupportedClientConstraintsData._();

  factory GsupportedClientConstraintsData(
          [Function(GsupportedClientConstraintsDataBuilder b) updates]) =
      _$GsupportedClientConstraintsData;

  static void _initializeBuilder(GsupportedClientConstraintsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get supportedClient;
  static Serializer<GsupportedClientConstraintsData> get serializer =>
      _$gsupportedClientConstraintsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsupportedClientConstraintsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsupportedClientConstraintsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsupportedClientConstraintsData.serializer,
        json,
      );
}
