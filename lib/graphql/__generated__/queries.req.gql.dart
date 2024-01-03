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
