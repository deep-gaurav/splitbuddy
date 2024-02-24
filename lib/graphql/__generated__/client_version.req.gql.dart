// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:billdivide/__generated__/serializers.gql.dart' as _i6;
import 'package:billdivide/graphql/__generated__/client_version.ast.gql.dart'
    as _i5;
import 'package:billdivide/graphql/__generated__/client_version.data.gql.dart'
    as _i2;
import 'package:billdivide/graphql/__generated__/client_version.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'client_version.req.gql.g.dart';

abstract class GsupportedClientConstraintsReq
    implements
        Built<GsupportedClientConstraintsReq,
            GsupportedClientConstraintsReqBuilder>,
        _i1.OperationRequest<_i2.GsupportedClientConstraintsData,
            _i3.GsupportedClientConstraintsVars> {
  GsupportedClientConstraintsReq._();

  factory GsupportedClientConstraintsReq(
          [Function(GsupportedClientConstraintsReqBuilder b) updates]) =
      _$GsupportedClientConstraintsReq;

  static void _initializeBuilder(GsupportedClientConstraintsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'supportedClientConstraints',
    )
    ..executeOnListen = true;

  @override
  _i3.GsupportedClientConstraintsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GsupportedClientConstraintsData? Function(
    _i2.GsupportedClientConstraintsData?,
    _i2.GsupportedClientConstraintsData?,
  )? get updateResult;
  @override
  _i2.GsupportedClientConstraintsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GsupportedClientConstraintsData? parseData(Map<String, dynamic> json) =>
      _i2.GsupportedClientConstraintsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsupportedClientConstraintsData,
      _i3.GsupportedClientConstraintsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsupportedClientConstraintsReq> get serializer =>
      _$gsupportedClientConstraintsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsupportedClientConstraintsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsupportedClientConstraintsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsupportedClientConstraintsReq.serializer,
        json,
      );
}
