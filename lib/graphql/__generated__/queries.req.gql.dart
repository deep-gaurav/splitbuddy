// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:billdivide/__generated__/serializers.gql.dart' as _i6;
import 'package:billdivide/graphql/__generated__/queries.ast.gql.dart' as _i5;
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart' as _i2;
import 'package:billdivide/graphql/__generated__/queries.var.gql.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'queries.req.gql.g.dart';

abstract class GuserReq
    implements
        Built<GuserReq, GuserReqBuilder>,
        _i1.OperationRequest<_i2.GuserData, _i3.GuserVars> {
  GuserReq._();

  factory GuserReq([Function(GuserReqBuilder b) updates]) = _$GuserReq;

  static void _initializeBuilder(GuserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'user',
    )
    ..executeOnListen = true;

  @override
  _i3.GuserVars get vars;
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
  _i2.GuserData? Function(
    _i2.GuserData?,
    _i2.GuserData?,
  )? get updateResult;
  @override
  _i2.GuserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GuserData? parseData(Map<String, dynamic> json) =>
      _i2.GuserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GuserData, _i3.GuserVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GuserReq> get serializer => _$guserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GuserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GuserReq.serializer,
        json,
      );
}

abstract class GuserConfigReq
    implements
        Built<GuserConfigReq, GuserConfigReqBuilder>,
        _i1.OperationRequest<_i2.GuserConfigData, _i3.GuserConfigVars> {
  GuserConfigReq._();

  factory GuserConfigReq([Function(GuserConfigReqBuilder b) updates]) =
      _$GuserConfigReq;

  static void _initializeBuilder(GuserConfigReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'userConfig',
    )
    ..executeOnListen = true;

  @override
  _i3.GuserConfigVars get vars;
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
  _i2.GuserConfigData? Function(
    _i2.GuserConfigData?,
    _i2.GuserConfigData?,
  )? get updateResult;
  @override
  _i2.GuserConfigData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GuserConfigData? parseData(Map<String, dynamic> json) =>
      _i2.GuserConfigData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GuserConfigData, _i3.GuserConfigVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GuserConfigReq> get serializer =>
      _$guserConfigReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GuserConfigReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserConfigReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GuserConfigReq.serializer,
        json,
      );
}

abstract class GgroupsReq
    implements
        Built<GgroupsReq, GgroupsReqBuilder>,
        _i1.OperationRequest<_i2.GgroupsData, _i3.GgroupsVars> {
  GgroupsReq._();

  factory GgroupsReq([Function(GgroupsReqBuilder b) updates]) = _$GgroupsReq;

  static void _initializeBuilder(GgroupsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'groups',
    )
    ..executeOnListen = true;

  @override
  _i3.GgroupsVars get vars;
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
  _i2.GgroupsData? Function(
    _i2.GgroupsData?,
    _i2.GgroupsData?,
  )? get updateResult;
  @override
  _i2.GgroupsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GgroupsData? parseData(Map<String, dynamic> json) =>
      _i2.GgroupsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgroupsData, _i3.GgroupsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgroupsReq> get serializer => _$ggroupsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgroupsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgroupsReq.serializer,
        json,
      );
}

abstract class Ginteracted_usersReq
    implements
        Built<Ginteracted_usersReq, Ginteracted_usersReqBuilder>,
        _i1.OperationRequest<_i2.Ginteracted_usersData,
            _i3.Ginteracted_usersVars> {
  Ginteracted_usersReq._();

  factory Ginteracted_usersReq(
          [Function(Ginteracted_usersReqBuilder b) updates]) =
      _$Ginteracted_usersReq;

  static void _initializeBuilder(Ginteracted_usersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'interacted_users',
    )
    ..executeOnListen = true;

  @override
  _i3.Ginteracted_usersVars get vars;
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
  _i2.Ginteracted_usersData? Function(
    _i2.Ginteracted_usersData?,
    _i2.Ginteracted_usersData?,
  )? get updateResult;
  @override
  _i2.Ginteracted_usersData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Ginteracted_usersData? parseData(Map<String, dynamic> json) =>
      _i2.Ginteracted_usersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Ginteracted_usersData, _i3.Ginteracted_usersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Ginteracted_usersReq> get serializer =>
      _$ginteractedUsersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Ginteracted_usersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Ginteracted_usersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Ginteracted_usersReq.serializer,
        json,
      );
}

abstract class GrefreshReq
    implements
        Built<GrefreshReq, GrefreshReqBuilder>,
        _i1.OperationRequest<_i2.GrefreshData, _i3.GrefreshVars> {
  GrefreshReq._();

  factory GrefreshReq([Function(GrefreshReqBuilder b) updates]) = _$GrefreshReq;

  static void _initializeBuilder(GrefreshReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'refresh',
    )
    ..executeOnListen = true;

  @override
  _i3.GrefreshVars get vars;
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
  _i2.GrefreshData? Function(
    _i2.GrefreshData?,
    _i2.GrefreshData?,
  )? get updateResult;
  @override
  _i2.GrefreshData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GrefreshData? parseData(Map<String, dynamic> json) =>
      _i2.GrefreshData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GrefreshData, _i3.GrefreshVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GrefreshReq> get serializer => _$grefreshReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GrefreshReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GrefreshReq.serializer,
        json,
      );
}

abstract class GcurrenciesReq
    implements
        Built<GcurrenciesReq, GcurrenciesReqBuilder>,
        _i1.OperationRequest<_i2.GcurrenciesData, _i3.GcurrenciesVars> {
  GcurrenciesReq._();

  factory GcurrenciesReq([Function(GcurrenciesReqBuilder b) updates]) =
      _$GcurrenciesReq;

  static void _initializeBuilder(GcurrenciesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'currencies',
    )
    ..executeOnListen = true;

  @override
  _i3.GcurrenciesVars get vars;
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
  _i2.GcurrenciesData? Function(
    _i2.GcurrenciesData?,
    _i2.GcurrenciesData?,
  )? get updateResult;
  @override
  _i2.GcurrenciesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GcurrenciesData? parseData(Map<String, dynamic> json) =>
      _i2.GcurrenciesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GcurrenciesData, _i3.GcurrenciesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GcurrenciesReq> get serializer =>
      _$gcurrenciesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcurrenciesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrenciesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcurrenciesReq.serializer,
        json,
      );
}

abstract class GgroupReq
    implements
        Built<GgroupReq, GgroupReqBuilder>,
        _i1.OperationRequest<_i2.GgroupData, _i3.GgroupVars> {
  GgroupReq._();

  factory GgroupReq([Function(GgroupReqBuilder b) updates]) = _$GgroupReq;

  static void _initializeBuilder(GgroupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'group',
    )
    ..executeOnListen = true;

  @override
  _i3.GgroupVars get vars;
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
  _i2.GgroupData? Function(
    _i2.GgroupData?,
    _i2.GgroupData?,
  )? get updateResult;
  @override
  _i2.GgroupData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GgroupData? parseData(Map<String, dynamic> json) =>
      _i2.GgroupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgroupData, _i3.GgroupVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgroupReq> get serializer => _$ggroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgroupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgroupReq.serializer,
        json,
      );
}

abstract class GsignupReq
    implements
        Built<GsignupReq, GsignupReqBuilder>,
        _i1.OperationRequest<_i2.GsignupData, _i3.GsignupVars> {
  GsignupReq._();

  factory GsignupReq([Function(GsignupReqBuilder b) updates]) = _$GsignupReq;

  static void _initializeBuilder(GsignupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'signup',
    )
    ..executeOnListen = true;

  @override
  _i3.GsignupVars get vars;
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
  _i2.GsignupData? Function(
    _i2.GsignupData?,
    _i2.GsignupData?,
  )? get updateResult;
  @override
  _i2.GsignupData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GsignupData? parseData(Map<String, dynamic> json) =>
      _i2.GsignupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsignupData, _i3.GsignupVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsignupReq> get serializer => _$gsignupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsignupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsignupReq.serializer,
        json,
      );
}

abstract class Gcreate_groupReq
    implements
        Built<Gcreate_groupReq, Gcreate_groupReqBuilder>,
        _i1.OperationRequest<_i2.Gcreate_groupData, _i3.Gcreate_groupVars> {
  Gcreate_groupReq._();

  factory Gcreate_groupReq([Function(Gcreate_groupReqBuilder b) updates]) =
      _$Gcreate_groupReq;

  static void _initializeBuilder(Gcreate_groupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'create_group',
    )
    ..executeOnListen = true;

  @override
  _i3.Gcreate_groupVars get vars;
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
  _i2.Gcreate_groupData? Function(
    _i2.Gcreate_groupData?,
    _i2.Gcreate_groupData?,
  )? get updateResult;
  @override
  _i2.Gcreate_groupData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gcreate_groupData? parseData(Map<String, dynamic> json) =>
      _i2.Gcreate_groupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gcreate_groupData, _i3.Gcreate_groupVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gcreate_groupReq> get serializer =>
      _$gcreateGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gcreate_groupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_groupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gcreate_groupReq.serializer,
        json,
      );
}

abstract class Gadd_to_groupReq
    implements
        Built<Gadd_to_groupReq, Gadd_to_groupReqBuilder>,
        _i1.OperationRequest<_i2.Gadd_to_groupData, _i3.Gadd_to_groupVars> {
  Gadd_to_groupReq._();

  factory Gadd_to_groupReq([Function(Gadd_to_groupReqBuilder b) updates]) =
      _$Gadd_to_groupReq;

  static void _initializeBuilder(Gadd_to_groupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'add_to_group',
    )
    ..executeOnListen = true;

  @override
  _i3.Gadd_to_groupVars get vars;
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
  _i2.Gadd_to_groupData? Function(
    _i2.Gadd_to_groupData?,
    _i2.Gadd_to_groupData?,
  )? get updateResult;
  @override
  _i2.Gadd_to_groupData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gadd_to_groupData? parseData(Map<String, dynamic> json) =>
      _i2.Gadd_to_groupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gadd_to_groupData, _i3.Gadd_to_groupVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gadd_to_groupReq> get serializer =>
      _$gaddToGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gadd_to_groupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_to_groupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gadd_to_groupReq.serializer,
        json,
      );
}

abstract class Gadd_expenseReq
    implements
        Built<Gadd_expenseReq, Gadd_expenseReqBuilder>,
        _i1.OperationRequest<_i2.Gadd_expenseData, _i3.Gadd_expenseVars> {
  Gadd_expenseReq._();

  factory Gadd_expenseReq([Function(Gadd_expenseReqBuilder b) updates]) =
      _$Gadd_expenseReq;

  static void _initializeBuilder(Gadd_expenseReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'add_expense',
    )
    ..executeOnListen = true;

  @override
  _i3.Gadd_expenseVars get vars;
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
  _i2.Gadd_expenseData? Function(
    _i2.Gadd_expenseData?,
    _i2.Gadd_expenseData?,
  )? get updateResult;
  @override
  _i2.Gadd_expenseData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gadd_expenseData? parseData(Map<String, dynamic> json) =>
      _i2.Gadd_expenseData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gadd_expenseData, _i3.Gadd_expenseVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gadd_expenseReq> get serializer =>
      _$gaddExpenseReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gadd_expenseReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gadd_expenseReq.serializer,
        json,
      );
}

abstract class Gsend_email_otpReq
    implements
        Built<Gsend_email_otpReq, Gsend_email_otpReqBuilder>,
        _i1.OperationRequest<_i2.Gsend_email_otpData, _i3.Gsend_email_otpVars> {
  Gsend_email_otpReq._();

  factory Gsend_email_otpReq([Function(Gsend_email_otpReqBuilder b) updates]) =
      _$Gsend_email_otpReq;

  static void _initializeBuilder(Gsend_email_otpReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'send_email_otp',
    )
    ..executeOnListen = true;

  @override
  _i3.Gsend_email_otpVars get vars;
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
  _i2.Gsend_email_otpData? Function(
    _i2.Gsend_email_otpData?,
    _i2.Gsend_email_otpData?,
  )? get updateResult;
  @override
  _i2.Gsend_email_otpData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gsend_email_otpData? parseData(Map<String, dynamic> json) =>
      _i2.Gsend_email_otpData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gsend_email_otpData, _i3.Gsend_email_otpVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gsend_email_otpReq> get serializer =>
      _$gsendEmailOtpReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gsend_email_otpReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_email_otpReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gsend_email_otpReq.serializer,
        json,
      );
}

abstract class Gverify_email_otpReq
    implements
        Built<Gverify_email_otpReq, Gverify_email_otpReqBuilder>,
        _i1.OperationRequest<_i2.Gverify_email_otpData,
            _i3.Gverify_email_otpVars> {
  Gverify_email_otpReq._();

  factory Gverify_email_otpReq(
          [Function(Gverify_email_otpReqBuilder b) updates]) =
      _$Gverify_email_otpReq;

  static void _initializeBuilder(Gverify_email_otpReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'verify_email_otp',
    )
    ..executeOnListen = true;

  @override
  _i3.Gverify_email_otpVars get vars;
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
  _i2.Gverify_email_otpData? Function(
    _i2.Gverify_email_otpData?,
    _i2.Gverify_email_otpData?,
  )? get updateResult;
  @override
  _i2.Gverify_email_otpData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gverify_email_otpData? parseData(Map<String, dynamic> json) =>
      _i2.Gverify_email_otpData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gverify_email_otpData, _i3.Gverify_email_otpVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gverify_email_otpReq> get serializer =>
      _$gverifyEmailOtpReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gverify_email_otpReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_email_otpReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gverify_email_otpReq.serializer,
        json,
      );
}

abstract class Grefresh_tokenReq
    implements
        Built<Grefresh_tokenReq, Grefresh_tokenReqBuilder>,
        _i1.OperationRequest<_i2.Grefresh_tokenData, _i3.Grefresh_tokenVars> {
  Grefresh_tokenReq._();

  factory Grefresh_tokenReq([Function(Grefresh_tokenReqBuilder b) updates]) =
      _$Grefresh_tokenReq;

  static void _initializeBuilder(Grefresh_tokenReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'refresh_token',
    )
    ..executeOnListen = true;

  @override
  _i3.Grefresh_tokenVars get vars;
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
  _i2.Grefresh_tokenData? Function(
    _i2.Grefresh_tokenData?,
    _i2.Grefresh_tokenData?,
  )? get updateResult;
  @override
  _i2.Grefresh_tokenData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Grefresh_tokenData? parseData(Map<String, dynamic> json) =>
      _i2.Grefresh_tokenData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Grefresh_tokenData, _i3.Grefresh_tokenVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Grefresh_tokenReq> get serializer =>
      _$grefreshTokenReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Grefresh_tokenReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grefresh_tokenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Grefresh_tokenReq.serializer,
        json,
      );
}

abstract class GsearchUserByEmailReq
    implements
        Built<GsearchUserByEmailReq, GsearchUserByEmailReqBuilder>,
        _i1.OperationRequest<_i2.GsearchUserByEmailData,
            _i3.GsearchUserByEmailVars> {
  GsearchUserByEmailReq._();

  factory GsearchUserByEmailReq(
          [Function(GsearchUserByEmailReqBuilder b) updates]) =
      _$GsearchUserByEmailReq;

  static void _initializeBuilder(GsearchUserByEmailReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'searchUserByEmail',
    )
    ..executeOnListen = true;

  @override
  _i3.GsearchUserByEmailVars get vars;
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
  _i2.GsearchUserByEmailData? Function(
    _i2.GsearchUserByEmailData?,
    _i2.GsearchUserByEmailData?,
  )? get updateResult;
  @override
  _i2.GsearchUserByEmailData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GsearchUserByEmailData? parseData(Map<String, dynamic> json) =>
      _i2.GsearchUserByEmailData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsearchUserByEmailData, _i3.GsearchUserByEmailVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsearchUserByEmailReq> get serializer =>
      _$gsearchUserByEmailReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsearchUserByEmailReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsearchUserByEmailReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsearchUserByEmailReq.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseReq
    implements
        Built<GcreateNonGroupExpenseReq, GcreateNonGroupExpenseReqBuilder>,
        _i1.OperationRequest<_i2.GcreateNonGroupExpenseData,
            _i3.GcreateNonGroupExpenseVars> {
  GcreateNonGroupExpenseReq._();

  factory GcreateNonGroupExpenseReq(
          [Function(GcreateNonGroupExpenseReqBuilder b) updates]) =
      _$GcreateNonGroupExpenseReq;

  static void _initializeBuilder(GcreateNonGroupExpenseReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'createNonGroupExpense',
    )
    ..executeOnListen = true;

  @override
  _i3.GcreateNonGroupExpenseVars get vars;
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
  _i2.GcreateNonGroupExpenseData? Function(
    _i2.GcreateNonGroupExpenseData?,
    _i2.GcreateNonGroupExpenseData?,
  )? get updateResult;
  @override
  _i2.GcreateNonGroupExpenseData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GcreateNonGroupExpenseData? parseData(Map<String, dynamic> json) =>
      _i2.GcreateNonGroupExpenseData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GcreateNonGroupExpenseData,
      _i3.GcreateNonGroupExpenseVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GcreateNonGroupExpenseReq> get serializer =>
      _$gcreateNonGroupExpenseReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcreateNonGroupExpenseReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcreateNonGroupExpenseReq.serializer,
        json,
      );
}

abstract class GsettleInGroupReq
    implements
        Built<GsettleInGroupReq, GsettleInGroupReqBuilder>,
        _i1.OperationRequest<_i2.GsettleInGroupData, _i3.GsettleInGroupVars> {
  GsettleInGroupReq._();

  factory GsettleInGroupReq([Function(GsettleInGroupReqBuilder b) updates]) =
      _$GsettleInGroupReq;

  static void _initializeBuilder(GsettleInGroupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'settleInGroup',
    )
    ..executeOnListen = true;

  @override
  _i3.GsettleInGroupVars get vars;
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
  _i2.GsettleInGroupData? Function(
    _i2.GsettleInGroupData?,
    _i2.GsettleInGroupData?,
  )? get updateResult;
  @override
  _i2.GsettleInGroupData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GsettleInGroupData? parseData(Map<String, dynamic> json) =>
      _i2.GsettleInGroupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsettleInGroupData, _i3.GsettleInGroupVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsettleInGroupReq> get serializer =>
      _$gsettleInGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsettleInGroupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsettleInGroupReq.serializer,
        json,
      );
}

abstract class GsimplifyUserReq
    implements
        Built<GsimplifyUserReq, GsimplifyUserReqBuilder>,
        _i1.OperationRequest<_i2.GsimplifyUserData, _i3.GsimplifyUserVars> {
  GsimplifyUserReq._();

  factory GsimplifyUserReq([Function(GsimplifyUserReqBuilder b) updates]) =
      _$GsimplifyUserReq;

  static void _initializeBuilder(GsimplifyUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'simplifyUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GsimplifyUserVars get vars;
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
  _i2.GsimplifyUserData? Function(
    _i2.GsimplifyUserData?,
    _i2.GsimplifyUserData?,
  )? get updateResult;
  @override
  _i2.GsimplifyUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GsimplifyUserData? parseData(Map<String, dynamic> json) =>
      _i2.GsimplifyUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsimplifyUserData, _i3.GsimplifyUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsimplifyUserReq> get serializer =>
      _$gsimplifyUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsimplifyUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsimplifyUserReq.serializer,
        json,
      );
}

abstract class GautoSettleWithUserReq
    implements
        Built<GautoSettleWithUserReq, GautoSettleWithUserReqBuilder>,
        _i1.OperationRequest<_i2.GautoSettleWithUserData,
            _i3.GautoSettleWithUserVars> {
  GautoSettleWithUserReq._();

  factory GautoSettleWithUserReq(
          [Function(GautoSettleWithUserReqBuilder b) updates]) =
      _$GautoSettleWithUserReq;

  static void _initializeBuilder(GautoSettleWithUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'autoSettleWithUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GautoSettleWithUserVars get vars;
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
  _i2.GautoSettleWithUserData? Function(
    _i2.GautoSettleWithUserData?,
    _i2.GautoSettleWithUserData?,
  )? get updateResult;
  @override
  _i2.GautoSettleWithUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GautoSettleWithUserData? parseData(Map<String, dynamic> json) =>
      _i2.GautoSettleWithUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GautoSettleWithUserData, _i3.GautoSettleWithUserVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GautoSettleWithUserReq> get serializer =>
      _$gautoSettleWithUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GautoSettleWithUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GautoSettleWithUserReq.serializer,
        json,
      );
}

abstract class GtransactionWithUserReq
    implements
        Built<GtransactionWithUserReq, GtransactionWithUserReqBuilder>,
        _i1.OperationRequest<_i2.GtransactionWithUserData,
            _i3.GtransactionWithUserVars> {
  GtransactionWithUserReq._();

  factory GtransactionWithUserReq(
          [Function(GtransactionWithUserReqBuilder b) updates]) =
      _$GtransactionWithUserReq;

  static void _initializeBuilder(GtransactionWithUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'transactionWithUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GtransactionWithUserVars get vars;
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
  _i2.GtransactionWithUserData? Function(
    _i2.GtransactionWithUserData?,
    _i2.GtransactionWithUserData?,
  )? get updateResult;
  @override
  _i2.GtransactionWithUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GtransactionWithUserData? parseData(Map<String, dynamic> json) =>
      _i2.GtransactionWithUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GtransactionWithUserData,
      _i3.GtransactionWithUserVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GtransactionWithUserReq> get serializer =>
      _$gtransactionWithUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GtransactionWithUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GtransactionWithUserReq.serializer,
        json,
      );
}

abstract class GtransactionMixExpenseReq
    implements
        Built<GtransactionMixExpenseReq, GtransactionMixExpenseReqBuilder>,
        _i1.OperationRequest<_i2.GtransactionMixExpenseData,
            _i3.GtransactionMixExpenseVars> {
  GtransactionMixExpenseReq._();

  factory GtransactionMixExpenseReq(
          [Function(GtransactionMixExpenseReqBuilder b) updates]) =
      _$GtransactionMixExpenseReq;

  static void _initializeBuilder(GtransactionMixExpenseReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'transactionMixExpense',
    )
    ..executeOnListen = true;

  @override
  _i3.GtransactionMixExpenseVars get vars;
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
  _i2.GtransactionMixExpenseData? Function(
    _i2.GtransactionMixExpenseData?,
    _i2.GtransactionMixExpenseData?,
  )? get updateResult;
  @override
  _i2.GtransactionMixExpenseData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GtransactionMixExpenseData? parseData(Map<String, dynamic> json) =>
      _i2.GtransactionMixExpenseData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GtransactionMixExpenseData,
      _i3.GtransactionMixExpenseVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GtransactionMixExpenseReq> get serializer =>
      _$gtransactionMixExpenseReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GtransactionMixExpenseReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GtransactionMixExpenseReq.serializer,
        json,
      );
}

abstract class GsetDefaultCurrencyReq
    implements
        Built<GsetDefaultCurrencyReq, GsetDefaultCurrencyReqBuilder>,
        _i1.OperationRequest<_i2.GsetDefaultCurrencyData,
            _i3.GsetDefaultCurrencyVars> {
  GsetDefaultCurrencyReq._();

  factory GsetDefaultCurrencyReq(
          [Function(GsetDefaultCurrencyReqBuilder b) updates]) =
      _$GsetDefaultCurrencyReq;

  static void _initializeBuilder(GsetDefaultCurrencyReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'setDefaultCurrency',
    )
    ..executeOnListen = true;

  @override
  _i3.GsetDefaultCurrencyVars get vars;
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
  _i2.GsetDefaultCurrencyData? Function(
    _i2.GsetDefaultCurrencyData?,
    _i2.GsetDefaultCurrencyData?,
  )? get updateResult;
  @override
  _i2.GsetDefaultCurrencyData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GsetDefaultCurrencyData? parseData(Map<String, dynamic> json) =>
      _i2.GsetDefaultCurrencyData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsetDefaultCurrencyData, _i3.GsetDefaultCurrencyVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsetDefaultCurrencyReq> get serializer =>
      _$gsetDefaultCurrencyReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsetDefaultCurrencyReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetDefaultCurrencyReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsetDefaultCurrencyReq.serializer,
        json,
      );
}

abstract class GcurrencyConvertReq
    implements
        Built<GcurrencyConvertReq, GcurrencyConvertReqBuilder>,
        _i1
        .OperationRequest<_i2.GcurrencyConvertData, _i3.GcurrencyConvertVars> {
  GcurrencyConvertReq._();

  factory GcurrencyConvertReq(
      [Function(GcurrencyConvertReqBuilder b) updates]) = _$GcurrencyConvertReq;

  static void _initializeBuilder(GcurrencyConvertReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'currencyConvert',
    )
    ..executeOnListen = true;

  @override
  _i3.GcurrencyConvertVars get vars;
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
  _i2.GcurrencyConvertData? Function(
    _i2.GcurrencyConvertData?,
    _i2.GcurrencyConvertData?,
  )? get updateResult;
  @override
  _i2.GcurrencyConvertData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GcurrencyConvertData? parseData(Map<String, dynamic> json) =>
      _i2.GcurrencyConvertData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GcurrencyConvertData, _i3.GcurrencyConvertVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GcurrencyConvertReq> get serializer =>
      _$gcurrencyConvertReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GcurrencyConvertReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GcurrencyConvertReq.serializer,
        json,
      );
}

abstract class GchangeNameReq
    implements
        Built<GchangeNameReq, GchangeNameReqBuilder>,
        _i1.OperationRequest<_i2.GchangeNameData, _i3.GchangeNameVars> {
  GchangeNameReq._();

  factory GchangeNameReq([Function(GchangeNameReqBuilder b) updates]) =
      _$GchangeNameReq;

  static void _initializeBuilder(GchangeNameReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'changeName',
    )
    ..executeOnListen = true;

  @override
  _i3.GchangeNameVars get vars;
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
  _i2.GchangeNameData? Function(
    _i2.GchangeNameData?,
    _i2.GchangeNameData?,
  )? get updateResult;
  @override
  _i2.GchangeNameData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GchangeNameData? parseData(Map<String, dynamic> json) =>
      _i2.GchangeNameData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GchangeNameData, _i3.GchangeNameVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GchangeNameReq> get serializer =>
      _$gchangeNameReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GchangeNameReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchangeNameReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GchangeNameReq.serializer,
        json,
      );
}

abstract class GgetTransactionsReq
    implements
        Built<GgetTransactionsReq, GgetTransactionsReqBuilder>,
        _i1
        .OperationRequest<_i2.GgetTransactionsData, _i3.GgetTransactionsVars> {
  GgetTransactionsReq._();

  factory GgetTransactionsReq(
      [Function(GgetTransactionsReqBuilder b) updates]) = _$GgetTransactionsReq;

  static void _initializeBuilder(GgetTransactionsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getTransactions',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetTransactionsVars get vars;
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
  _i2.GgetTransactionsData? Function(
    _i2.GgetTransactionsData?,
    _i2.GgetTransactionsData?,
  )? get updateResult;
  @override
  _i2.GgetTransactionsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GgetTransactionsData? parseData(Map<String, dynamic> json) =>
      _i2.GgetTransactionsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetTransactionsData, _i3.GgetTransactionsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetTransactionsReq> get serializer =>
      _$ggetTransactionsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetTransactionsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetTransactionsReq.serializer,
        json,
      );
}

abstract class GsetNotificationTokenReq
    implements
        Built<GsetNotificationTokenReq, GsetNotificationTokenReqBuilder>,
        _i1.OperationRequest<_i2.GsetNotificationTokenData,
            _i3.GsetNotificationTokenVars> {
  GsetNotificationTokenReq._();

  factory GsetNotificationTokenReq(
          [Function(GsetNotificationTokenReqBuilder b) updates]) =
      _$GsetNotificationTokenReq;

  static void _initializeBuilder(GsetNotificationTokenReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'setNotificationToken',
    )
    ..executeOnListen = true;

  @override
  _i3.GsetNotificationTokenVars get vars;
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
  _i2.GsetNotificationTokenData? Function(
    _i2.GsetNotificationTokenData?,
    _i2.GsetNotificationTokenData?,
  )? get updateResult;
  @override
  _i2.GsetNotificationTokenData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GsetNotificationTokenData? parseData(Map<String, dynamic> json) =>
      _i2.GsetNotificationTokenData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsetNotificationTokenData,
      _i3.GsetNotificationTokenVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsetNotificationTokenReq> get serializer =>
      _$gsetNotificationTokenReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsetNotificationTokenReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetNotificationTokenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsetNotificationTokenReq.serializer,
        json,
      );
}

abstract class GgetImageUploadUrlReq
    implements
        Built<GgetImageUploadUrlReq, GgetImageUploadUrlReqBuilder>,
        _i1.OperationRequest<_i2.GgetImageUploadUrlData,
            _i3.GgetImageUploadUrlVars> {
  GgetImageUploadUrlReq._();

  factory GgetImageUploadUrlReq(
          [Function(GgetImageUploadUrlReqBuilder b) updates]) =
      _$GgetImageUploadUrlReq;

  static void _initializeBuilder(GgetImageUploadUrlReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getImageUploadUrl',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetImageUploadUrlVars get vars;
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
  _i2.GgetImageUploadUrlData? Function(
    _i2.GgetImageUploadUrlData?,
    _i2.GgetImageUploadUrlData?,
  )? get updateResult;
  @override
  _i2.GgetImageUploadUrlData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GgetImageUploadUrlData? parseData(Map<String, dynamic> json) =>
      _i2.GgetImageUploadUrlData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetImageUploadUrlData, _i3.GgetImageUploadUrlVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetImageUploadUrlReq> get serializer =>
      _$ggetImageUploadUrlReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetImageUploadUrlReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageUploadUrlReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetImageUploadUrlReq.serializer,
        json,
      );
}

abstract class GgetImageViewUrlReq
    implements
        Built<GgetImageViewUrlReq, GgetImageViewUrlReqBuilder>,
        _i1
        .OperationRequest<_i2.GgetImageViewUrlData, _i3.GgetImageViewUrlVars> {
  GgetImageViewUrlReq._();

  factory GgetImageViewUrlReq(
      [Function(GgetImageViewUrlReqBuilder b) updates]) = _$GgetImageViewUrlReq;

  static void _initializeBuilder(GgetImageViewUrlReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getImageViewUrl',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetImageViewUrlVars get vars;
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
  _i2.GgetImageViewUrlData? Function(
    _i2.GgetImageViewUrlData?,
    _i2.GgetImageViewUrlData?,
  )? get updateResult;
  @override
  _i2.GgetImageViewUrlData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GgetImageViewUrlData? parseData(Map<String, dynamic> json) =>
      _i2.GgetImageViewUrlData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetImageViewUrlData, _i3.GgetImageViewUrlVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetImageViewUrlReq> get serializer =>
      _$ggetImageViewUrlReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetImageViewUrlReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageViewUrlReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetImageViewUrlReq.serializer,
        json,
      );
}

abstract class GgetExpenseReq
    implements
        Built<GgetExpenseReq, GgetExpenseReqBuilder>,
        _i1.OperationRequest<_i2.GgetExpenseData, _i3.GgetExpenseVars> {
  GgetExpenseReq._();

  factory GgetExpenseReq([Function(GgetExpenseReqBuilder b) updates]) =
      _$GgetExpenseReq;

  static void _initializeBuilder(GgetExpenseReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getExpense',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetExpenseVars get vars;
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
  _i2.GgetExpenseData? Function(
    _i2.GgetExpenseData?,
    _i2.GgetExpenseData?,
  )? get updateResult;
  @override
  _i2.GgetExpenseData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GgetExpenseData? parseData(Map<String, dynamic> json) =>
      _i2.GgetExpenseData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetExpenseData, _i3.GgetExpenseVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetExpenseReq> get serializer =>
      _$ggetExpenseReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetExpenseReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExpenseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetExpenseReq.serializer,
        json,
      );
}

abstract class GsplitFromidReq
    implements
        Built<GsplitFromidReq, GsplitFromidReqBuilder>,
        _i1.OperationRequest<_i2.GsplitFromidData, _i3.GsplitFromidVars> {
  GsplitFromidReq._();

  factory GsplitFromidReq([Function(GsplitFromidReqBuilder b) updates]) =
      _$GsplitFromidReq;

  static void _initializeBuilder(GsplitFromidReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'splitFromid',
    )
    ..executeOnListen = true;

  @override
  _i3.GsplitFromidVars get vars;
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
  _i2.GsplitFromidData? Function(
    _i2.GsplitFromidData?,
    _i2.GsplitFromidData?,
  )? get updateResult;
  @override
  _i2.GsplitFromidData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GsplitFromidData? parseData(Map<String, dynamic> json) =>
      _i2.GsplitFromidData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsplitFromidData, _i3.GsplitFromidVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsplitFromidReq> get serializer =>
      _$gsplitFromidReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsplitFromidReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsplitFromidReq.serializer,
        json,
      );
}

abstract class GsplitFromGroupReq
    implements
        Built<GsplitFromGroupReq, GsplitFromGroupReqBuilder>,
        _i1.OperationRequest<_i2.GsplitFromGroupData, _i3.GsplitFromGroupVars> {
  GsplitFromGroupReq._();

  factory GsplitFromGroupReq([Function(GsplitFromGroupReqBuilder b) updates]) =
      _$GsplitFromGroupReq;

  static void _initializeBuilder(GsplitFromGroupReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'splitFromGroup',
    )
    ..executeOnListen = true;

  @override
  _i3.GsplitFromGroupVars get vars;
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
  _i2.GsplitFromGroupData? Function(
    _i2.GsplitFromGroupData?,
    _i2.GsplitFromGroupData?,
  )? get updateResult;
  @override
  _i2.GsplitFromGroupData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GsplitFromGroupData? parseData(Map<String, dynamic> json) =>
      _i2.GsplitFromGroupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GsplitFromGroupData, _i3.GsplitFromGroupVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsplitFromGroupReq> get serializer =>
      _$gsplitFromGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsplitFromGroupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromGroupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsplitFromGroupReq.serializer,
        json,
      );
}

abstract class GUploadFieldsReq
    implements
        Built<GUploadFieldsReq, GUploadFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GUploadFieldsData, _i3.GUploadFieldsVars> {
  GUploadFieldsReq._();

  factory GUploadFieldsReq([Function(GUploadFieldsReqBuilder b) updates]) =
      _$GUploadFieldsReq;

  static void _initializeBuilder(GUploadFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'UploadFields';

  @override
  _i3.GUploadFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUploadFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GUploadFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GUploadFieldsReq> get serializer =>
      _$gUploadFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUploadFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUploadFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUploadFieldsReq.serializer,
        json,
      );
}

abstract class GUserFieldsReq
    implements
        Built<GUserFieldsReq, GUserFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GUserFieldsData, _i3.GUserFieldsVars> {
  GUserFieldsReq._();

  factory GUserFieldsReq([Function(GUserFieldsReqBuilder b) updates]) =
      _$GUserFieldsReq;

  static void _initializeBuilder(GUserFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'UserFields';

  @override
  _i3.GUserFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GUserFieldsReq> get serializer =>
      _$gUserFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserFieldsReq.serializer,
        json,
      );
}

abstract class GAmountFieldsReq
    implements
        Built<GAmountFieldsReq, GAmountFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GAmountFieldsData, _i3.GAmountFieldsVars> {
  GAmountFieldsReq._();

  factory GAmountFieldsReq([Function(GAmountFieldsReqBuilder b) updates]) =
      _$GAmountFieldsReq;

  static void _initializeBuilder(GAmountFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'AmountFields';

  @override
  _i3.GAmountFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GAmountFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GAmountFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GAmountFieldsReq> get serializer =>
      _$gAmountFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAmountFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAmountFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAmountFieldsReq.serializer,
        json,
      );
}

abstract class GCurrencyFieldsReq
    implements
        Built<GCurrencyFieldsReq, GCurrencyFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GCurrencyFieldsData, _i3.GCurrencyFieldsVars> {
  GCurrencyFieldsReq._();

  factory GCurrencyFieldsReq([Function(GCurrencyFieldsReqBuilder b) updates]) =
      _$GCurrencyFieldsReq;

  static void _initializeBuilder(GCurrencyFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'CurrencyFields';

  @override
  _i3.GCurrencyFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GCurrencyFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GCurrencyFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GCurrencyFieldsReq> get serializer =>
      _$gCurrencyFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCurrencyFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCurrencyFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCurrencyFieldsReq.serializer,
        json,
      );
}

abstract class GUserPaysFieldsReq
    implements
        Built<GUserPaysFieldsReq, GUserPaysFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GUserPaysFieldsData, _i3.GUserPaysFieldsVars> {
  GUserPaysFieldsReq._();

  factory GUserPaysFieldsReq([Function(GUserPaysFieldsReqBuilder b) updates]) =
      _$GUserPaysFieldsReq;

  static void _initializeBuilder(GUserPaysFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'UserPaysFields';

  @override
  _i3.GUserPaysFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserPaysFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserPaysFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GUserPaysFieldsReq> get serializer =>
      _$gUserPaysFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserPaysFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserPaysFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserPaysFieldsReq.serializer,
        json,
      );
}

abstract class GGroupBasicReq
    implements
        Built<GGroupBasicReq, GGroupBasicReqBuilder>,
        _i1.FragmentRequest<_i2.GGroupBasicData, _i3.GGroupBasicVars> {
  GGroupBasicReq._();

  factory GGroupBasicReq([Function(GGroupBasicReqBuilder b) updates]) =
      _$GGroupBasicReq;

  static void _initializeBuilder(GGroupBasicReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'GroupBasic';

  @override
  _i3.GGroupBasicVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GGroupBasicData? parseData(Map<String, dynamic> json) =>
      _i2.GGroupBasicData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GGroupBasicReq> get serializer =>
      _$gGroupBasicReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGroupBasicReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupBasicReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGroupBasicReq.serializer,
        json,
      );
}

abstract class GGroupFieldsReq
    implements
        Built<GGroupFieldsReq, GGroupFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GGroupFieldsData, _i3.GGroupFieldsVars> {
  GGroupFieldsReq._();

  factory GGroupFieldsReq([Function(GGroupFieldsReqBuilder b) updates]) =
      _$GGroupFieldsReq;

  static void _initializeBuilder(GGroupFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'GroupFields';

  @override
  _i3.GGroupFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GGroupFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GGroupFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GGroupFieldsReq> get serializer =>
      _$gGroupFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGroupFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGroupFieldsReq.serializer,
        json,
      );
}

abstract class GExpenseBasicReq
    implements
        Built<GExpenseBasicReq, GExpenseBasicReqBuilder>,
        _i1.FragmentRequest<_i2.GExpenseBasicData, _i3.GExpenseBasicVars> {
  GExpenseBasicReq._();

  factory GExpenseBasicReq([Function(GExpenseBasicReqBuilder b) updates]) =
      _$GExpenseBasicReq;

  static void _initializeBuilder(GExpenseBasicReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ExpenseBasic';

  @override
  _i3.GExpenseBasicVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GExpenseBasicData? parseData(Map<String, dynamic> json) =>
      _i2.GExpenseBasicData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GExpenseBasicReq> get serializer =>
      _$gExpenseBasicReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GExpenseBasicReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseBasicReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GExpenseBasicReq.serializer,
        json,
      );
}

abstract class GExpenseFieldsReq
    implements
        Built<GExpenseFieldsReq, GExpenseFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GExpenseFieldsData, _i3.GExpenseFieldsVars> {
  GExpenseFieldsReq._();

  factory GExpenseFieldsReq([Function(GExpenseFieldsReqBuilder b) updates]) =
      _$GExpenseFieldsReq;

  static void _initializeBuilder(GExpenseFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ExpenseFields';

  @override
  _i3.GExpenseFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GExpenseFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GExpenseFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GExpenseFieldsReq> get serializer =>
      _$gExpenseFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GExpenseFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GExpenseFieldsReq.serializer,
        json,
      );
}

abstract class GNewExpenseFieldsReq
    implements
        Built<GNewExpenseFieldsReq, GNewExpenseFieldsReqBuilder>,
        _i1
        .FragmentRequest<_i2.GNewExpenseFieldsData, _i3.GNewExpenseFieldsVars> {
  GNewExpenseFieldsReq._();

  factory GNewExpenseFieldsReq(
          [Function(GNewExpenseFieldsReqBuilder b) updates]) =
      _$GNewExpenseFieldsReq;

  static void _initializeBuilder(GNewExpenseFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'NewExpenseFields';

  @override
  _i3.GNewExpenseFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GNewExpenseFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GNewExpenseFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GNewExpenseFieldsReq> get serializer =>
      _$gNewExpenseFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GNewExpenseFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GNewExpenseFieldsReq.serializer,
        json,
      );
}

abstract class GConfigFieldsReq
    implements
        Built<GConfigFieldsReq, GConfigFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GConfigFieldsData, _i3.GConfigFieldsVars> {
  GConfigFieldsReq._();

  factory GConfigFieldsReq([Function(GConfigFieldsReqBuilder b) updates]) =
      _$GConfigFieldsReq;

  static void _initializeBuilder(GConfigFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ConfigFields';

  @override
  _i3.GConfigFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GConfigFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GConfigFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GConfigFieldsReq> get serializer =>
      _$gConfigFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GConfigFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GConfigFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GConfigFieldsReq.serializer,
        json,
      );
}

abstract class GSplitFieldsBasicsReq
    implements
        Built<GSplitFieldsBasicsReq, GSplitFieldsBasicsReqBuilder>,
        _i1.FragmentRequest<_i2.GSplitFieldsBasicsData,
            _i3.GSplitFieldsBasicsVars> {
  GSplitFieldsBasicsReq._();

  factory GSplitFieldsBasicsReq(
          [Function(GSplitFieldsBasicsReqBuilder b) updates]) =
      _$GSplitFieldsBasicsReq;

  static void _initializeBuilder(GSplitFieldsBasicsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'SplitFieldsBasics';

  @override
  _i3.GSplitFieldsBasicsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GSplitFieldsBasicsData? parseData(Map<String, dynamic> json) =>
      _i2.GSplitFieldsBasicsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GSplitFieldsBasicsReq> get serializer =>
      _$gSplitFieldsBasicsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSplitFieldsBasicsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsBasicsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSplitFieldsBasicsReq.serializer,
        json,
      );
}

abstract class GSplitFieldsReq
    implements
        Built<GSplitFieldsReq, GSplitFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GSplitFieldsData, _i3.GSplitFieldsVars> {
  GSplitFieldsReq._();

  factory GSplitFieldsReq([Function(GSplitFieldsReqBuilder b) updates]) =
      _$GSplitFieldsReq;

  static void _initializeBuilder(GSplitFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'SplitFields';

  @override
  _i3.GSplitFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GSplitFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GSplitFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GSplitFieldsReq> get serializer =>
      _$gSplitFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSplitFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSplitFieldsReq.serializer,
        json,
      );
}

abstract class GSplitTransactionFieldsReq
    implements
        Built<GSplitTransactionFieldsReq, GSplitTransactionFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GSplitTransactionFieldsData,
            _i3.GSplitTransactionFieldsVars> {
  GSplitTransactionFieldsReq._();

  factory GSplitTransactionFieldsReq(
          [Function(GSplitTransactionFieldsReqBuilder b) updates]) =
      _$GSplitTransactionFieldsReq;

  static void _initializeBuilder(GSplitTransactionFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'SplitTransactionFields';

  @override
  _i3.GSplitTransactionFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GSplitTransactionFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GSplitTransactionFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GSplitTransactionFieldsReq> get serializer =>
      _$gSplitTransactionFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSplitTransactionFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSplitTransactionFieldsReq.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsReq
    implements
        Built<GSplitWithSiblingsReq, GSplitWithSiblingsReqBuilder>,
        _i1.FragmentRequest<_i2.GSplitWithSiblingsData,
            _i3.GSplitWithSiblingsVars> {
  GSplitWithSiblingsReq._();

  factory GSplitWithSiblingsReq(
          [Function(GSplitWithSiblingsReqBuilder b) updates]) =
      _$GSplitWithSiblingsReq;

  static void _initializeBuilder(GSplitWithSiblingsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'SplitWithSiblings';

  @override
  _i3.GSplitWithSiblingsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GSplitWithSiblingsData? parseData(Map<String, dynamic> json) =>
      _i2.GSplitWithSiblingsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GSplitWithSiblingsReq> get serializer =>
      _$gSplitWithSiblingsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSplitWithSiblingsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSplitWithSiblingsReq.serializer,
        json,
      );
}

abstract class GGroupWithExpensesReq
    implements
        Built<GGroupWithExpensesReq, GGroupWithExpensesReqBuilder>,
        _i1.FragmentRequest<_i2.GGroupWithExpensesData,
            _i3.GGroupWithExpensesVars> {
  GGroupWithExpensesReq._();

  factory GGroupWithExpensesReq(
          [Function(GGroupWithExpensesReqBuilder b) updates]) =
      _$GGroupWithExpensesReq;

  static void _initializeBuilder(GGroupWithExpensesReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'GroupWithExpenses';

  @override
  _i3.GGroupWithExpensesVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GGroupWithExpensesData? parseData(Map<String, dynamic> json) =>
      _i2.GGroupWithExpensesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GGroupWithExpensesReq> get serializer =>
      _$gGroupWithExpensesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGroupWithExpensesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGroupWithExpensesReq.serializer,
        json,
      );
}

abstract class GExpenseMixSplitFieldsReq
    implements
        Built<GExpenseMixSplitFieldsReq, GExpenseMixSplitFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GExpenseMixSplitFieldsData,
            _i3.GExpenseMixSplitFieldsVars> {
  GExpenseMixSplitFieldsReq._();

  factory GExpenseMixSplitFieldsReq(
          [Function(GExpenseMixSplitFieldsReqBuilder b) updates]) =
      _$GExpenseMixSplitFieldsReq;

  static void _initializeBuilder(GExpenseMixSplitFieldsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ExpenseMixSplitFields';

  @override
  _i3.GExpenseMixSplitFieldsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GExpenseMixSplitFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GExpenseMixSplitFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  static Serializer<GExpenseMixSplitFieldsReq> get serializer =>
      _$gExpenseMixSplitFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GExpenseMixSplitFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseMixSplitFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GExpenseMixSplitFieldsReq.serializer,
        json,
      );
}
