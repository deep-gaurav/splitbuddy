// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:splitbuddy/__generated__/serializers.gql.dart' as _i6;
import 'package:splitbuddy/graphql/__generated__/queries.ast.gql.dart' as _i5;
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart' as _i2;
import 'package:splitbuddy/graphql/__generated__/queries.var.gql.dart' as _i3;

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

abstract class Gsettle_userReq
    implements
        Built<Gsettle_userReq, Gsettle_userReqBuilder>,
        _i1.OperationRequest<_i2.Gsettle_userData, _i3.Gsettle_userVars> {
  Gsettle_userReq._();

  factory Gsettle_userReq([Function(Gsettle_userReqBuilder b) updates]) =
      _$Gsettle_userReq;

  static void _initializeBuilder(Gsettle_userReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'settle_user',
    )
    ..executeOnListen = true;

  @override
  _i3.Gsettle_userVars get vars;
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
  _i2.Gsettle_userData? Function(
    _i2.Gsettle_userData?,
    _i2.Gsettle_userData?,
  )? get updateResult;
  @override
  _i2.Gsettle_userData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gsettle_userData? parseData(Map<String, dynamic> json) =>
      _i2.Gsettle_userData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gsettle_userData, _i3.Gsettle_userVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gsettle_userReq> get serializer =>
      _$gsettleUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gsettle_userReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_userReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gsettle_userReq.serializer,
        json,
      );
}

abstract class Gsettle_expenseReq
    implements
        Built<Gsettle_expenseReq, Gsettle_expenseReqBuilder>,
        _i1.OperationRequest<_i2.Gsettle_expenseData, _i3.Gsettle_expenseVars> {
  Gsettle_expenseReq._();

  factory Gsettle_expenseReq([Function(Gsettle_expenseReqBuilder b) updates]) =
      _$Gsettle_expenseReq;

  static void _initializeBuilder(Gsettle_expenseReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'settle_expense',
    )
    ..executeOnListen = true;

  @override
  _i3.Gsettle_expenseVars get vars;
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
  _i2.Gsettle_expenseData? Function(
    _i2.Gsettle_expenseData?,
    _i2.Gsettle_expenseData?,
  )? get updateResult;
  @override
  _i2.Gsettle_expenseData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.Gsettle_expenseData? parseData(Map<String, dynamic> json) =>
      _i2.Gsettle_expenseData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(dynamic data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.Gsettle_expenseData, _i3.Gsettle_expenseVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gsettle_expenseReq> get serializer =>
      _$gsettleExpenseReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gsettle_expenseReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_expenseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gsettle_expenseReq.serializer,
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
