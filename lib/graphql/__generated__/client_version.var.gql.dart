// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:billdivide/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'client_version.var.gql.g.dart';

abstract class GsupportedClientConstraintsVars
    implements
        Built<GsupportedClientConstraintsVars,
            GsupportedClientConstraintsVarsBuilder> {
  GsupportedClientConstraintsVars._();

  factory GsupportedClientConstraintsVars(
          [Function(GsupportedClientConstraintsVarsBuilder b) updates]) =
      _$GsupportedClientConstraintsVars;

  static Serializer<GsupportedClientConstraintsVars> get serializer =>
      _$gsupportedClientConstraintsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsupportedClientConstraintsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsupportedClientConstraintsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsupportedClientConstraintsVars.serializer,
        json,
      );
}
