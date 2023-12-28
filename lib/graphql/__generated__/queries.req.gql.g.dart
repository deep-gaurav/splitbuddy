// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GuserReq> _$guserReqSerializer = new _$GuserReqSerializer();
Serializer<GgroupsReq> _$ggroupsReqSerializer = new _$GgroupsReqSerializer();
Serializer<Ginteracted_usersReq> _$ginteractedUsersReqSerializer =
    new _$Ginteracted_usersReqSerializer();
Serializer<GgroupReq> _$ggroupReqSerializer = new _$GgroupReqSerializer();
Serializer<GsignupReq> _$gsignupReqSerializer = new _$GsignupReqSerializer();
Serializer<Gcreate_groupReq> _$gcreateGroupReqSerializer =
    new _$Gcreate_groupReqSerializer();
Serializer<Gadd_to_groupReq> _$gaddToGroupReqSerializer =
    new _$Gadd_to_groupReqSerializer();
Serializer<Gadd_expenseReq> _$gaddExpenseReqSerializer =
    new _$Gadd_expenseReqSerializer();
Serializer<Gsettle_userReq> _$gsettleUserReqSerializer =
    new _$Gsettle_userReqSerializer();
Serializer<Gsettle_expenseReq> _$gsettleExpenseReqSerializer =
    new _$Gsettle_expenseReqSerializer();
Serializer<Gsend_email_otpReq> _$gsendEmailOtpReqSerializer =
    new _$Gsend_email_otpReqSerializer();
Serializer<Gverify_email_otpReq> _$gverifyEmailOtpReqSerializer =
    new _$Gverify_email_otpReqSerializer();
Serializer<Grefresh_tokenReq> _$grefreshTokenReqSerializer =
    new _$Grefresh_tokenReqSerializer();
Serializer<GUserFieldsReq> _$gUserFieldsReqSerializer =
    new _$GUserFieldsReqSerializer();
Serializer<GUserPaysFieldsReq> _$gUserPaysFieldsReqSerializer =
    new _$GUserPaysFieldsReqSerializer();
Serializer<GGroupFieldsReq> _$gGroupFieldsReqSerializer =
    new _$GGroupFieldsReqSerializer();
Serializer<GExpenseFieldsReq> _$gExpenseFieldsReqSerializer =
    new _$GExpenseFieldsReqSerializer();
Serializer<GSplitFieldsReq> _$gSplitFieldsReqSerializer =
    new _$GSplitFieldsReqSerializer();
Serializer<GGroupWithExpensesReq> _$gGroupWithExpensesReqSerializer =
    new _$GGroupWithExpensesReqSerializer();

class _$GuserReqSerializer implements StructuredSerializer<GuserReq> {
  @override
  final Iterable<Type> types = const [GuserReq, _$GuserReq];
  @override
  final String wireName = 'GuserReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GuserReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GuserVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GuserData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GuserReq deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GuserReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GuserVars))! as _i3.GuserVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GuserData))! as _i2.GuserData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GgroupsReqSerializer implements StructuredSerializer<GgroupsReq> {
  @override
  final Iterable<Type> types = const [GgroupsReq, _$GgroupsReq];
  @override
  final String wireName = 'GgroupsReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgroupsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GgroupsVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GgroupsData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GgroupsReq deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgroupsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GgroupsVars))!
              as _i3.GgroupsVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GgroupsData))!
              as _i2.GgroupsData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Ginteracted_usersReqSerializer
    implements StructuredSerializer<Ginteracted_usersReq> {
  @override
  final Iterable<Type> types = const [
    Ginteracted_usersReq,
    _$Ginteracted_usersReq
  ];
  @override
  final String wireName = 'Ginteracted_usersReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Ginteracted_usersReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Ginteracted_usersVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Ginteracted_usersData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Ginteracted_usersReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Ginteracted_usersReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Ginteracted_usersVars))!
              as _i3.Ginteracted_usersVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Ginteracted_usersData))!
              as _i2.Ginteracted_usersData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GgroupReqSerializer implements StructuredSerializer<GgroupReq> {
  @override
  final Iterable<Type> types = const [GgroupReq, _$GgroupReq];
  @override
  final String wireName = 'GgroupReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgroupReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GgroupVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GgroupData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GgroupReq deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgroupReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GgroupVars))!
              as _i3.GgroupVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GgroupData))!
              as _i2.GgroupData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GsignupReqSerializer implements StructuredSerializer<GsignupReq> {
  @override
  final Iterable<Type> types = const [GsignupReq, _$GsignupReq];
  @override
  final String wireName = 'GsignupReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GsignupReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GsignupVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GsignupData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GsignupReq deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsignupReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GsignupVars))!
              as _i3.GsignupVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GsignupData))!
              as _i2.GsignupData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_groupReqSerializer
    implements StructuredSerializer<Gcreate_groupReq> {
  @override
  final Iterable<Type> types = const [Gcreate_groupReq, _$Gcreate_groupReq];
  @override
  final String wireName = 'Gcreate_groupReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gcreate_groupReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gcreate_groupVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Gcreate_groupData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Gcreate_groupReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_groupReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gcreate_groupVars))!
              as _i3.Gcreate_groupVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gcreate_groupData))!
              as _i2.Gcreate_groupData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_to_groupReqSerializer
    implements StructuredSerializer<Gadd_to_groupReq> {
  @override
  final Iterable<Type> types = const [Gadd_to_groupReq, _$Gadd_to_groupReq];
  @override
  final String wireName = 'Gadd_to_groupReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_to_groupReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gadd_to_groupVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Gadd_to_groupData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Gadd_to_groupReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_to_groupReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gadd_to_groupVars))!
              as _i3.Gadd_to_groupVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gadd_to_groupData))!
              as _i2.Gadd_to_groupData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_expenseReqSerializer
    implements StructuredSerializer<Gadd_expenseReq> {
  @override
  final Iterable<Type> types = const [Gadd_expenseReq, _$Gadd_expenseReq];
  @override
  final String wireName = 'Gadd_expenseReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_expenseReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gadd_expenseVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Gadd_expenseData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Gadd_expenseReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_expenseReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gadd_expenseVars))!
              as _i3.Gadd_expenseVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gadd_expenseData))!
              as _i2.Gadd_expenseData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsettle_userReqSerializer
    implements StructuredSerializer<Gsettle_userReq> {
  @override
  final Iterable<Type> types = const [Gsettle_userReq, _$Gsettle_userReq];
  @override
  final String wireName = 'Gsettle_userReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gsettle_userReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gsettle_userVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Gsettle_userData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Gsettle_userReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsettle_userReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gsettle_userVars))!
              as _i3.Gsettle_userVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gsettle_userData))!
              as _i2.Gsettle_userData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsettle_expenseReqSerializer
    implements StructuredSerializer<Gsettle_expenseReq> {
  @override
  final Iterable<Type> types = const [Gsettle_expenseReq, _$Gsettle_expenseReq];
  @override
  final String wireName = 'Gsettle_expenseReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsettle_expenseReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gsettle_expenseVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Gsettle_expenseData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Gsettle_expenseReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsettle_expenseReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gsettle_expenseVars))!
              as _i3.Gsettle_expenseVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gsettle_expenseData))!
              as _i2.Gsettle_expenseData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_email_otpReqSerializer
    implements StructuredSerializer<Gsend_email_otpReq> {
  @override
  final Iterable<Type> types = const [Gsend_email_otpReq, _$Gsend_email_otpReq];
  @override
  final String wireName = 'Gsend_email_otpReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_email_otpReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gsend_email_otpVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Gsend_email_otpData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Gsend_email_otpReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_email_otpReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gsend_email_otpVars))!
              as _i3.Gsend_email_otpVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gsend_email_otpData))!
              as _i2.Gsend_email_otpData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_email_otpReqSerializer
    implements StructuredSerializer<Gverify_email_otpReq> {
  @override
  final Iterable<Type> types = const [
    Gverify_email_otpReq,
    _$Gverify_email_otpReq
  ];
  @override
  final String wireName = 'Gverify_email_otpReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gverify_email_otpReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gverify_email_otpVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Gverify_email_otpData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Gverify_email_otpReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gverify_email_otpReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gverify_email_otpVars))!
              as _i3.Gverify_email_otpVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gverify_email_otpData))!
              as _i2.Gverify_email_otpData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Grefresh_tokenReqSerializer
    implements StructuredSerializer<Grefresh_tokenReq> {
  @override
  final Iterable<Type> types = const [Grefresh_tokenReq, _$Grefresh_tokenReq];
  @override
  final String wireName = 'Grefresh_tokenReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, Grefresh_tokenReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Grefresh_tokenVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Grefresh_tokenData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  Grefresh_tokenReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Grefresh_tokenReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Grefresh_tokenVars))!
              as _i3.Grefresh_tokenVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Grefresh_tokenData))!
              as _i2.Grefresh_tokenData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserFieldsReqSerializer
    implements StructuredSerializer<GUserFieldsReq> {
  @override
  final Iterable<Type> types = const [GUserFieldsReq, _$GUserFieldsReq];
  @override
  final String wireName = 'GUserFieldsReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserFieldsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUserFieldsVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserFieldsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserFieldsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUserFieldsVars))!
              as _i3.GUserFieldsVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserPaysFieldsReqSerializer
    implements StructuredSerializer<GUserPaysFieldsReq> {
  @override
  final Iterable<Type> types = const [GUserPaysFieldsReq, _$GUserPaysFieldsReq];
  @override
  final String wireName = 'GUserPaysFieldsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserPaysFieldsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUserPaysFieldsVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserPaysFieldsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserPaysFieldsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUserPaysFieldsVars))!
              as _i3.GUserPaysFieldsVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupFieldsReqSerializer
    implements StructuredSerializer<GGroupFieldsReq> {
  @override
  final Iterable<Type> types = const [GGroupFieldsReq, _$GGroupFieldsReq];
  @override
  final String wireName = 'GGroupFieldsReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGroupFieldsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGroupFieldsVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGroupFieldsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupFieldsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGroupFieldsVars))!
              as _i3.GGroupFieldsVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GExpenseFieldsReqSerializer
    implements StructuredSerializer<GExpenseFieldsReq> {
  @override
  final Iterable<Type> types = const [GExpenseFieldsReq, _$GExpenseFieldsReq];
  @override
  final String wireName = 'GExpenseFieldsReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GExpenseFieldsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GExpenseFieldsVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GExpenseFieldsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExpenseFieldsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GExpenseFieldsVars))!
              as _i3.GExpenseFieldsVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GSplitFieldsReqSerializer
    implements StructuredSerializer<GSplitFieldsReq> {
  @override
  final Iterable<Type> types = const [GSplitFieldsReq, _$GSplitFieldsReq];
  @override
  final String wireName = 'GSplitFieldsReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSplitFieldsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GSplitFieldsVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSplitFieldsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSplitFieldsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GSplitFieldsVars))!
              as _i3.GSplitFieldsVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupWithExpensesReqSerializer
    implements StructuredSerializer<GGroupWithExpensesReq> {
  @override
  final Iterable<Type> types = const [
    GGroupWithExpensesReq,
    _$GGroupWithExpensesReq
  ];
  @override
  final String wireName = 'GGroupWithExpensesReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupWithExpensesReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGroupWithExpensesVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGroupWithExpensesReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupWithExpensesReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGroupWithExpensesVars))!
              as _i3.GGroupWithExpensesVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GuserReq extends GuserReq {
  @override
  final _i3.GuserVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GuserData? Function(_i2.GuserData?, _i2.GuserData?)? updateResult;
  @override
  final _i2.GuserData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GuserReq([void Function(GuserReqBuilder)? updates]) =>
      (new GuserReqBuilder()..update(updates))._build();

  _$GuserReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GuserReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(operation, r'GuserReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GuserReq', 'executeOnListen');
  }

  @override
  GuserReq rebuild(void Function(GuserReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserReqBuilder toBuilder() => new GuserReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GuserReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GuserReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GuserReqBuilder implements Builder<GuserReq, GuserReqBuilder> {
  _$GuserReq? _$v;

  _i3.GuserVarsBuilder? _vars;
  _i3.GuserVarsBuilder get vars => _$this._vars ??= new _i3.GuserVarsBuilder();
  set vars(_i3.GuserVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GuserData? Function(_i2.GuserData?, _i2.GuserData?)? _updateResult;
  _i2.GuserData? Function(_i2.GuserData?, _i2.GuserData?)? get updateResult =>
      _$this._updateResult;
  set updateResult(
          _i2.GuserData? Function(_i2.GuserData?, _i2.GuserData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GuserDataBuilder? _optimisticResponse;
  _i2.GuserDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GuserDataBuilder();
  set optimisticResponse(_i2.GuserDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GuserReqBuilder() {
    GuserReq._initializeBuilder(this);
  }

  GuserReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GuserReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserReq;
  }

  @override
  void update(void Function(GuserReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserReq build() => _build();

  _$GuserReq _build() {
    _$GuserReq _$result;
    try {
      _$result = _$v ??
          new _$GuserReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GuserReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GuserReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GuserReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgroupsReq extends GgroupsReq {
  @override
  final _i3.GgroupsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GgroupsData? Function(_i2.GgroupsData?, _i2.GgroupsData?)?
      updateResult;
  @override
  final _i2.GgroupsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GgroupsReq([void Function(GgroupsReqBuilder)? updates]) =>
      (new GgroupsReqBuilder()..update(updates))._build();

  _$GgroupsReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GgroupsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GgroupsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GgroupsReq', 'executeOnListen');
  }

  @override
  GgroupsReq rebuild(void Function(GgroupsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgroupsReqBuilder toBuilder() => new GgroupsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GgroupsReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgroupsReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GgroupsReqBuilder implements Builder<GgroupsReq, GgroupsReqBuilder> {
  _$GgroupsReq? _$v;

  _i3.GgroupsVarsBuilder? _vars;
  _i3.GgroupsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GgroupsVarsBuilder();
  set vars(_i3.GgroupsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GgroupsData? Function(_i2.GgroupsData?, _i2.GgroupsData?)? _updateResult;
  _i2.GgroupsData? Function(_i2.GgroupsData?, _i2.GgroupsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GgroupsData? Function(_i2.GgroupsData?, _i2.GgroupsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GgroupsDataBuilder? _optimisticResponse;
  _i2.GgroupsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GgroupsDataBuilder();
  set optimisticResponse(_i2.GgroupsDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GgroupsReqBuilder() {
    GgroupsReq._initializeBuilder(this);
  }

  GgroupsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgroupsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgroupsReq;
  }

  @override
  void update(void Function(GgroupsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgroupsReq build() => _build();

  _$GgroupsReq _build() {
    _$GgroupsReq _$result;
    try {
      _$result = _$v ??
          new _$GgroupsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GgroupsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GgroupsReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgroupsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Ginteracted_usersReq extends Ginteracted_usersReq {
  @override
  final _i3.Ginteracted_usersVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Ginteracted_usersData? Function(
      _i2.Ginteracted_usersData?, _i2.Ginteracted_usersData?)? updateResult;
  @override
  final _i2.Ginteracted_usersData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$Ginteracted_usersReq(
          [void Function(Ginteracted_usersReqBuilder)? updates]) =>
      (new Ginteracted_usersReqBuilder()..update(updates))._build();

  _$Ginteracted_usersReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'Ginteracted_usersReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Ginteracted_usersReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Ginteracted_usersReq', 'executeOnListen');
  }

  @override
  Ginteracted_usersReq rebuild(
          void Function(Ginteracted_usersReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ginteracted_usersReqBuilder toBuilder() =>
      new Ginteracted_usersReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Ginteracted_usersReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Ginteracted_usersReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class Ginteracted_usersReqBuilder
    implements Builder<Ginteracted_usersReq, Ginteracted_usersReqBuilder> {
  _$Ginteracted_usersReq? _$v;

  _i3.Ginteracted_usersVarsBuilder? _vars;
  _i3.Ginteracted_usersVarsBuilder get vars =>
      _$this._vars ??= new _i3.Ginteracted_usersVarsBuilder();
  set vars(_i3.Ginteracted_usersVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Ginteracted_usersData? Function(
      _i2.Ginteracted_usersData?, _i2.Ginteracted_usersData?)? _updateResult;
  _i2.Ginteracted_usersData? Function(
          _i2.Ginteracted_usersData?, _i2.Ginteracted_usersData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Ginteracted_usersData? Function(
                  _i2.Ginteracted_usersData?, _i2.Ginteracted_usersData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Ginteracted_usersDataBuilder? _optimisticResponse;
  _i2.Ginteracted_usersDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Ginteracted_usersDataBuilder();
  set optimisticResponse(
          _i2.Ginteracted_usersDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  Ginteracted_usersReqBuilder() {
    Ginteracted_usersReq._initializeBuilder(this);
  }

  Ginteracted_usersReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ginteracted_usersReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ginteracted_usersReq;
  }

  @override
  void update(void Function(Ginteracted_usersReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ginteracted_usersReq build() => _build();

  _$Ginteracted_usersReq _build() {
    _$Ginteracted_usersReq _$result;
    try {
      _$result = _$v ??
          new _$Ginteracted_usersReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Ginteracted_usersReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'Ginteracted_usersReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Ginteracted_usersReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgroupReq extends GgroupReq {
  @override
  final _i3.GgroupVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GgroupData? Function(_i2.GgroupData?, _i2.GgroupData?)?
      updateResult;
  @override
  final _i2.GgroupData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GgroupReq([void Function(GgroupReqBuilder)? updates]) =>
      (new GgroupReqBuilder()..update(updates))._build();

  _$GgroupReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GgroupReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(operation, r'GgroupReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GgroupReq', 'executeOnListen');
  }

  @override
  GgroupReq rebuild(void Function(GgroupReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgroupReqBuilder toBuilder() => new GgroupReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GgroupReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgroupReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GgroupReqBuilder implements Builder<GgroupReq, GgroupReqBuilder> {
  _$GgroupReq? _$v;

  _i3.GgroupVarsBuilder? _vars;
  _i3.GgroupVarsBuilder get vars =>
      _$this._vars ??= new _i3.GgroupVarsBuilder();
  set vars(_i3.GgroupVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GgroupData? Function(_i2.GgroupData?, _i2.GgroupData?)? _updateResult;
  _i2.GgroupData? Function(_i2.GgroupData?, _i2.GgroupData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GgroupData? Function(_i2.GgroupData?, _i2.GgroupData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GgroupDataBuilder? _optimisticResponse;
  _i2.GgroupDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GgroupDataBuilder();
  set optimisticResponse(_i2.GgroupDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GgroupReqBuilder() {
    GgroupReq._initializeBuilder(this);
  }

  GgroupReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgroupReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgroupReq;
  }

  @override
  void update(void Function(GgroupReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgroupReq build() => _build();

  _$GgroupReq _build() {
    _$GgroupReq _$result;
    try {
      _$result = _$v ??
          new _$GgroupReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GgroupReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GgroupReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GgroupReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsignupReq extends GsignupReq {
  @override
  final _i3.GsignupVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GsignupData? Function(_i2.GsignupData?, _i2.GsignupData?)?
      updateResult;
  @override
  final _i2.GsignupData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GsignupReq([void Function(GsignupReqBuilder)? updates]) =>
      (new GsignupReqBuilder()..update(updates))._build();

  _$GsignupReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GsignupReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GsignupReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GsignupReq', 'executeOnListen');
  }

  @override
  GsignupReq rebuild(void Function(GsignupReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsignupReqBuilder toBuilder() => new GsignupReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GsignupReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsignupReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GsignupReqBuilder implements Builder<GsignupReq, GsignupReqBuilder> {
  _$GsignupReq? _$v;

  _i3.GsignupVarsBuilder? _vars;
  _i3.GsignupVarsBuilder get vars =>
      _$this._vars ??= new _i3.GsignupVarsBuilder();
  set vars(_i3.GsignupVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GsignupData? Function(_i2.GsignupData?, _i2.GsignupData?)? _updateResult;
  _i2.GsignupData? Function(_i2.GsignupData?, _i2.GsignupData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GsignupData? Function(_i2.GsignupData?, _i2.GsignupData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GsignupDataBuilder? _optimisticResponse;
  _i2.GsignupDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GsignupDataBuilder();
  set optimisticResponse(_i2.GsignupDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GsignupReqBuilder() {
    GsignupReq._initializeBuilder(this);
  }

  GsignupReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsignupReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsignupReq;
  }

  @override
  void update(void Function(GsignupReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsignupReq build() => _build();

  _$GsignupReq _build() {
    _$GsignupReq _$result;
    try {
      _$result = _$v ??
          new _$GsignupReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GsignupReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GsignupReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GsignupReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_groupReq extends Gcreate_groupReq {
  @override
  final _i3.Gcreate_groupVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gcreate_groupData? Function(
      _i2.Gcreate_groupData?, _i2.Gcreate_groupData?)? updateResult;
  @override
  final _i2.Gcreate_groupData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$Gcreate_groupReq(
          [void Function(Gcreate_groupReqBuilder)? updates]) =>
      (new Gcreate_groupReqBuilder()..update(updates))._build();

  _$Gcreate_groupReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'Gcreate_groupReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gcreate_groupReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gcreate_groupReq', 'executeOnListen');
  }

  @override
  Gcreate_groupReq rebuild(void Function(Gcreate_groupReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_groupReqBuilder toBuilder() =>
      new Gcreate_groupReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gcreate_groupReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_groupReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class Gcreate_groupReqBuilder
    implements Builder<Gcreate_groupReq, Gcreate_groupReqBuilder> {
  _$Gcreate_groupReq? _$v;

  _i3.Gcreate_groupVarsBuilder? _vars;
  _i3.Gcreate_groupVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gcreate_groupVarsBuilder();
  set vars(_i3.Gcreate_groupVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gcreate_groupData? Function(
      _i2.Gcreate_groupData?, _i2.Gcreate_groupData?)? _updateResult;
  _i2.Gcreate_groupData? Function(
          _i2.Gcreate_groupData?, _i2.Gcreate_groupData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gcreate_groupData? Function(
                  _i2.Gcreate_groupData?, _i2.Gcreate_groupData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gcreate_groupDataBuilder? _optimisticResponse;
  _i2.Gcreate_groupDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Gcreate_groupDataBuilder();
  set optimisticResponse(_i2.Gcreate_groupDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  Gcreate_groupReqBuilder() {
    Gcreate_groupReq._initializeBuilder(this);
  }

  Gcreate_groupReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_groupReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_groupReq;
  }

  @override
  void update(void Function(Gcreate_groupReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_groupReq build() => _build();

  _$Gcreate_groupReq _build() {
    _$Gcreate_groupReq _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_groupReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gcreate_groupReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'Gcreate_groupReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_groupReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_to_groupReq extends Gadd_to_groupReq {
  @override
  final _i3.Gadd_to_groupVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gadd_to_groupData? Function(
      _i2.Gadd_to_groupData?, _i2.Gadd_to_groupData?)? updateResult;
  @override
  final _i2.Gadd_to_groupData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$Gadd_to_groupReq(
          [void Function(Gadd_to_groupReqBuilder)? updates]) =>
      (new Gadd_to_groupReqBuilder()..update(updates))._build();

  _$Gadd_to_groupReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'Gadd_to_groupReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gadd_to_groupReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gadd_to_groupReq', 'executeOnListen');
  }

  @override
  Gadd_to_groupReq rebuild(void Function(Gadd_to_groupReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_to_groupReqBuilder toBuilder() =>
      new Gadd_to_groupReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gadd_to_groupReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_to_groupReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class Gadd_to_groupReqBuilder
    implements Builder<Gadd_to_groupReq, Gadd_to_groupReqBuilder> {
  _$Gadd_to_groupReq? _$v;

  _i3.Gadd_to_groupVarsBuilder? _vars;
  _i3.Gadd_to_groupVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gadd_to_groupVarsBuilder();
  set vars(_i3.Gadd_to_groupVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gadd_to_groupData? Function(
      _i2.Gadd_to_groupData?, _i2.Gadd_to_groupData?)? _updateResult;
  _i2.Gadd_to_groupData? Function(
          _i2.Gadd_to_groupData?, _i2.Gadd_to_groupData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gadd_to_groupData? Function(
                  _i2.Gadd_to_groupData?, _i2.Gadd_to_groupData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gadd_to_groupDataBuilder? _optimisticResponse;
  _i2.Gadd_to_groupDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Gadd_to_groupDataBuilder();
  set optimisticResponse(_i2.Gadd_to_groupDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  Gadd_to_groupReqBuilder() {
    Gadd_to_groupReq._initializeBuilder(this);
  }

  Gadd_to_groupReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_to_groupReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_to_groupReq;
  }

  @override
  void update(void Function(Gadd_to_groupReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_to_groupReq build() => _build();

  _$Gadd_to_groupReq _build() {
    _$Gadd_to_groupReq _$result;
    try {
      _$result = _$v ??
          new _$Gadd_to_groupReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gadd_to_groupReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'Gadd_to_groupReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_to_groupReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_expenseReq extends Gadd_expenseReq {
  @override
  final _i3.Gadd_expenseVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gadd_expenseData? Function(
      _i2.Gadd_expenseData?, _i2.Gadd_expenseData?)? updateResult;
  @override
  final _i2.Gadd_expenseData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$Gadd_expenseReq([void Function(Gadd_expenseReqBuilder)? updates]) =>
      (new Gadd_expenseReqBuilder()..update(updates))._build();

  _$Gadd_expenseReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'Gadd_expenseReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gadd_expenseReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gadd_expenseReq', 'executeOnListen');
  }

  @override
  Gadd_expenseReq rebuild(void Function(Gadd_expenseReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_expenseReqBuilder toBuilder() =>
      new Gadd_expenseReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gadd_expenseReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_expenseReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class Gadd_expenseReqBuilder
    implements Builder<Gadd_expenseReq, Gadd_expenseReqBuilder> {
  _$Gadd_expenseReq? _$v;

  _i3.Gadd_expenseVarsBuilder? _vars;
  _i3.Gadd_expenseVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gadd_expenseVarsBuilder();
  set vars(_i3.Gadd_expenseVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gadd_expenseData? Function(_i2.Gadd_expenseData?, _i2.Gadd_expenseData?)?
      _updateResult;
  _i2.Gadd_expenseData? Function(_i2.Gadd_expenseData?, _i2.Gadd_expenseData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gadd_expenseData? Function(
                  _i2.Gadd_expenseData?, _i2.Gadd_expenseData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gadd_expenseDataBuilder? _optimisticResponse;
  _i2.Gadd_expenseDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Gadd_expenseDataBuilder();
  set optimisticResponse(_i2.Gadd_expenseDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  Gadd_expenseReqBuilder() {
    Gadd_expenseReq._initializeBuilder(this);
  }

  Gadd_expenseReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_expenseReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_expenseReq;
  }

  @override
  void update(void Function(Gadd_expenseReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_expenseReq build() => _build();

  _$Gadd_expenseReq _build() {
    _$Gadd_expenseReq _$result;
    try {
      _$result = _$v ??
          new _$Gadd_expenseReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gadd_expenseReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'Gadd_expenseReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_expenseReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsettle_userReq extends Gsettle_userReq {
  @override
  final _i3.Gsettle_userVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gsettle_userData? Function(
      _i2.Gsettle_userData?, _i2.Gsettle_userData?)? updateResult;
  @override
  final _i2.Gsettle_userData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$Gsettle_userReq([void Function(Gsettle_userReqBuilder)? updates]) =>
      (new Gsettle_userReqBuilder()..update(updates))._build();

  _$Gsettle_userReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'Gsettle_userReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gsettle_userReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gsettle_userReq', 'executeOnListen');
  }

  @override
  Gsettle_userReq rebuild(void Function(Gsettle_userReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsettle_userReqBuilder toBuilder() =>
      new Gsettle_userReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gsettle_userReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsettle_userReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class Gsettle_userReqBuilder
    implements Builder<Gsettle_userReq, Gsettle_userReqBuilder> {
  _$Gsettle_userReq? _$v;

  _i3.Gsettle_userVarsBuilder? _vars;
  _i3.Gsettle_userVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gsettle_userVarsBuilder();
  set vars(_i3.Gsettle_userVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gsettle_userData? Function(_i2.Gsettle_userData?, _i2.Gsettle_userData?)?
      _updateResult;
  _i2.Gsettle_userData? Function(_i2.Gsettle_userData?, _i2.Gsettle_userData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gsettle_userData? Function(
                  _i2.Gsettle_userData?, _i2.Gsettle_userData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gsettle_userDataBuilder? _optimisticResponse;
  _i2.Gsettle_userDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Gsettle_userDataBuilder();
  set optimisticResponse(_i2.Gsettle_userDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  Gsettle_userReqBuilder() {
    Gsettle_userReq._initializeBuilder(this);
  }

  Gsettle_userReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsettle_userReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsettle_userReq;
  }

  @override
  void update(void Function(Gsettle_userReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsettle_userReq build() => _build();

  _$Gsettle_userReq _build() {
    _$Gsettle_userReq _$result;
    try {
      _$result = _$v ??
          new _$Gsettle_userReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gsettle_userReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'Gsettle_userReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsettle_userReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsettle_expenseReq extends Gsettle_expenseReq {
  @override
  final _i3.Gsettle_expenseVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gsettle_expenseData? Function(
      _i2.Gsettle_expenseData?, _i2.Gsettle_expenseData?)? updateResult;
  @override
  final _i2.Gsettle_expenseData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$Gsettle_expenseReq(
          [void Function(Gsettle_expenseReqBuilder)? updates]) =>
      (new Gsettle_expenseReqBuilder()..update(updates))._build();

  _$Gsettle_expenseReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'Gsettle_expenseReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gsettle_expenseReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gsettle_expenseReq', 'executeOnListen');
  }

  @override
  Gsettle_expenseReq rebuild(
          void Function(Gsettle_expenseReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsettle_expenseReqBuilder toBuilder() =>
      new Gsettle_expenseReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gsettle_expenseReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsettle_expenseReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class Gsettle_expenseReqBuilder
    implements Builder<Gsettle_expenseReq, Gsettle_expenseReqBuilder> {
  _$Gsettle_expenseReq? _$v;

  _i3.Gsettle_expenseVarsBuilder? _vars;
  _i3.Gsettle_expenseVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gsettle_expenseVarsBuilder();
  set vars(_i3.Gsettle_expenseVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gsettle_expenseData? Function(
      _i2.Gsettle_expenseData?, _i2.Gsettle_expenseData?)? _updateResult;
  _i2.Gsettle_expenseData? Function(
          _i2.Gsettle_expenseData?, _i2.Gsettle_expenseData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gsettle_expenseData? Function(
                  _i2.Gsettle_expenseData?, _i2.Gsettle_expenseData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gsettle_expenseDataBuilder? _optimisticResponse;
  _i2.Gsettle_expenseDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Gsettle_expenseDataBuilder();
  set optimisticResponse(_i2.Gsettle_expenseDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  Gsettle_expenseReqBuilder() {
    Gsettle_expenseReq._initializeBuilder(this);
  }

  Gsettle_expenseReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsettle_expenseReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsettle_expenseReq;
  }

  @override
  void update(void Function(Gsettle_expenseReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsettle_expenseReq build() => _build();

  _$Gsettle_expenseReq _build() {
    _$Gsettle_expenseReq _$result;
    try {
      _$result = _$v ??
          new _$Gsettle_expenseReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gsettle_expenseReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'Gsettle_expenseReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsettle_expenseReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_email_otpReq extends Gsend_email_otpReq {
  @override
  final _i3.Gsend_email_otpVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gsend_email_otpData? Function(
      _i2.Gsend_email_otpData?, _i2.Gsend_email_otpData?)? updateResult;
  @override
  final _i2.Gsend_email_otpData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$Gsend_email_otpReq(
          [void Function(Gsend_email_otpReqBuilder)? updates]) =>
      (new Gsend_email_otpReqBuilder()..update(updates))._build();

  _$Gsend_email_otpReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'Gsend_email_otpReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gsend_email_otpReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gsend_email_otpReq', 'executeOnListen');
  }

  @override
  Gsend_email_otpReq rebuild(
          void Function(Gsend_email_otpReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_email_otpReqBuilder toBuilder() =>
      new Gsend_email_otpReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gsend_email_otpReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_email_otpReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class Gsend_email_otpReqBuilder
    implements Builder<Gsend_email_otpReq, Gsend_email_otpReqBuilder> {
  _$Gsend_email_otpReq? _$v;

  _i3.Gsend_email_otpVarsBuilder? _vars;
  _i3.Gsend_email_otpVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gsend_email_otpVarsBuilder();
  set vars(_i3.Gsend_email_otpVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gsend_email_otpData? Function(
      _i2.Gsend_email_otpData?, _i2.Gsend_email_otpData?)? _updateResult;
  _i2.Gsend_email_otpData? Function(
          _i2.Gsend_email_otpData?, _i2.Gsend_email_otpData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gsend_email_otpData? Function(
                  _i2.Gsend_email_otpData?, _i2.Gsend_email_otpData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gsend_email_otpDataBuilder? _optimisticResponse;
  _i2.Gsend_email_otpDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Gsend_email_otpDataBuilder();
  set optimisticResponse(_i2.Gsend_email_otpDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  Gsend_email_otpReqBuilder() {
    Gsend_email_otpReq._initializeBuilder(this);
  }

  Gsend_email_otpReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_email_otpReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_email_otpReq;
  }

  @override
  void update(void Function(Gsend_email_otpReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_email_otpReq build() => _build();

  _$Gsend_email_otpReq _build() {
    _$Gsend_email_otpReq _$result;
    try {
      _$result = _$v ??
          new _$Gsend_email_otpReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gsend_email_otpReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'Gsend_email_otpReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_email_otpReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gverify_email_otpReq extends Gverify_email_otpReq {
  @override
  final _i3.Gverify_email_otpVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Gverify_email_otpData? Function(
      _i2.Gverify_email_otpData?, _i2.Gverify_email_otpData?)? updateResult;
  @override
  final _i2.Gverify_email_otpData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$Gverify_email_otpReq(
          [void Function(Gverify_email_otpReqBuilder)? updates]) =>
      (new Gverify_email_otpReqBuilder()..update(updates))._build();

  _$Gverify_email_otpReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'Gverify_email_otpReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Gverify_email_otpReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Gverify_email_otpReq', 'executeOnListen');
  }

  @override
  Gverify_email_otpReq rebuild(
          void Function(Gverify_email_otpReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_email_otpReqBuilder toBuilder() =>
      new Gverify_email_otpReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Gverify_email_otpReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gverify_email_otpReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class Gverify_email_otpReqBuilder
    implements Builder<Gverify_email_otpReq, Gverify_email_otpReqBuilder> {
  _$Gverify_email_otpReq? _$v;

  _i3.Gverify_email_otpVarsBuilder? _vars;
  _i3.Gverify_email_otpVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gverify_email_otpVarsBuilder();
  set vars(_i3.Gverify_email_otpVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Gverify_email_otpData? Function(
      _i2.Gverify_email_otpData?, _i2.Gverify_email_otpData?)? _updateResult;
  _i2.Gverify_email_otpData? Function(
          _i2.Gverify_email_otpData?, _i2.Gverify_email_otpData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Gverify_email_otpData? Function(
                  _i2.Gverify_email_otpData?, _i2.Gverify_email_otpData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Gverify_email_otpDataBuilder? _optimisticResponse;
  _i2.Gverify_email_otpDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Gverify_email_otpDataBuilder();
  set optimisticResponse(
          _i2.Gverify_email_otpDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  Gverify_email_otpReqBuilder() {
    Gverify_email_otpReq._initializeBuilder(this);
  }

  Gverify_email_otpReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gverify_email_otpReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_email_otpReq;
  }

  @override
  void update(void Function(Gverify_email_otpReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_email_otpReq build() => _build();

  _$Gverify_email_otpReq _build() {
    _$Gverify_email_otpReq _$result;
    try {
      _$result = _$v ??
          new _$Gverify_email_otpReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Gverify_email_otpReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'Gverify_email_otpReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gverify_email_otpReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Grefresh_tokenReq extends Grefresh_tokenReq {
  @override
  final _i3.Grefresh_tokenVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.Grefresh_tokenData? Function(
      _i2.Grefresh_tokenData?, _i2.Grefresh_tokenData?)? updateResult;
  @override
  final _i2.Grefresh_tokenData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$Grefresh_tokenReq(
          [void Function(Grefresh_tokenReqBuilder)? updates]) =>
      (new Grefresh_tokenReqBuilder()..update(updates))._build();

  _$Grefresh_tokenReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'Grefresh_tokenReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'Grefresh_tokenReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'Grefresh_tokenReq', 'executeOnListen');
  }

  @override
  Grefresh_tokenReq rebuild(void Function(Grefresh_tokenReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grefresh_tokenReqBuilder toBuilder() =>
      new Grefresh_tokenReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is Grefresh_tokenReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jc(_$hash, requestId.hashCode);
    _$hash = $jc(_$hash, updateResult.hashCode);
    _$hash = $jc(_$hash, optimisticResponse.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerKey.hashCode);
    _$hash = $jc(_$hash, updateCacheHandlerContext.hashCode);
    _$hash = $jc(_$hash, fetchPolicy.hashCode);
    _$hash = $jc(_$hash, executeOnListen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Grefresh_tokenReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class Grefresh_tokenReqBuilder
    implements Builder<Grefresh_tokenReq, Grefresh_tokenReqBuilder> {
  _$Grefresh_tokenReq? _$v;

  _i3.Grefresh_tokenVarsBuilder? _vars;
  _i3.Grefresh_tokenVarsBuilder get vars =>
      _$this._vars ??= new _i3.Grefresh_tokenVarsBuilder();
  set vars(_i3.Grefresh_tokenVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.Grefresh_tokenData? Function(
      _i2.Grefresh_tokenData?, _i2.Grefresh_tokenData?)? _updateResult;
  _i2.Grefresh_tokenData? Function(
          _i2.Grefresh_tokenData?, _i2.Grefresh_tokenData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.Grefresh_tokenData? Function(
                  _i2.Grefresh_tokenData?, _i2.Grefresh_tokenData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.Grefresh_tokenDataBuilder? _optimisticResponse;
  _i2.Grefresh_tokenDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.Grefresh_tokenDataBuilder();
  set optimisticResponse(_i2.Grefresh_tokenDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  Grefresh_tokenReqBuilder() {
    Grefresh_tokenReq._initializeBuilder(this);
  }

  Grefresh_tokenReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grefresh_tokenReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grefresh_tokenReq;
  }

  @override
  void update(void Function(Grefresh_tokenReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grefresh_tokenReq build() => _build();

  _$Grefresh_tokenReq _build() {
    _$Grefresh_tokenReq _$result;
    try {
      _$result = _$v ??
          new _$Grefresh_tokenReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'Grefresh_tokenReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'Grefresh_tokenReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Grefresh_tokenReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserFieldsReq extends GUserFieldsReq {
  @override
  final _i3.GUserFieldsVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GUserFieldsReq([void Function(GUserFieldsReqBuilder)? updates]) =>
      (new GUserFieldsReqBuilder()..update(updates))._build();

  _$GUserFieldsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GUserFieldsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GUserFieldsReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GUserFieldsReq', 'idFields');
  }

  @override
  GUserFieldsReq rebuild(void Function(GUserFieldsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFieldsReqBuilder toBuilder() =>
      new GUserFieldsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFieldsReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserFieldsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GUserFieldsReqBuilder
    implements Builder<GUserFieldsReq, GUserFieldsReqBuilder> {
  _$GUserFieldsReq? _$v;

  _i3.GUserFieldsVarsBuilder? _vars;
  _i3.GUserFieldsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUserFieldsVarsBuilder();
  set vars(_i3.GUserFieldsVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GUserFieldsReqBuilder() {
    GUserFieldsReq._initializeBuilder(this);
  }

  GUserFieldsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserFieldsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFieldsReq;
  }

  @override
  void update(void Function(GUserFieldsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFieldsReq build() => _build();

  _$GUserFieldsReq _build() {
    _$GUserFieldsReq _$result;
    try {
      _$result = _$v ??
          new _$GUserFieldsReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GUserFieldsReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GUserFieldsReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserFieldsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserPaysFieldsReq extends GUserPaysFieldsReq {
  @override
  final _i3.GUserPaysFieldsVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GUserPaysFieldsReq(
          [void Function(GUserPaysFieldsReqBuilder)? updates]) =>
      (new GUserPaysFieldsReqBuilder()..update(updates))._build();

  _$GUserPaysFieldsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GUserPaysFieldsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GUserPaysFieldsReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GUserPaysFieldsReq', 'idFields');
  }

  @override
  GUserPaysFieldsReq rebuild(
          void Function(GUserPaysFieldsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserPaysFieldsReqBuilder toBuilder() =>
      new GUserPaysFieldsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserPaysFieldsReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserPaysFieldsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GUserPaysFieldsReqBuilder
    implements Builder<GUserPaysFieldsReq, GUserPaysFieldsReqBuilder> {
  _$GUserPaysFieldsReq? _$v;

  _i3.GUserPaysFieldsVarsBuilder? _vars;
  _i3.GUserPaysFieldsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUserPaysFieldsVarsBuilder();
  set vars(_i3.GUserPaysFieldsVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GUserPaysFieldsReqBuilder() {
    GUserPaysFieldsReq._initializeBuilder(this);
  }

  GUserPaysFieldsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserPaysFieldsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserPaysFieldsReq;
  }

  @override
  void update(void Function(GUserPaysFieldsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserPaysFieldsReq build() => _build();

  _$GUserPaysFieldsReq _build() {
    _$GUserPaysFieldsReq _$result;
    try {
      _$result = _$v ??
          new _$GUserPaysFieldsReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GUserPaysFieldsReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GUserPaysFieldsReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserPaysFieldsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGroupFieldsReq extends GGroupFieldsReq {
  @override
  final _i3.GGroupFieldsVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GGroupFieldsReq([void Function(GGroupFieldsReqBuilder)? updates]) =>
      (new GGroupFieldsReqBuilder()..update(updates))._build();

  _$GGroupFieldsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GGroupFieldsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GGroupFieldsReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GGroupFieldsReq', 'idFields');
  }

  @override
  GGroupFieldsReq rebuild(void Function(GGroupFieldsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupFieldsReqBuilder toBuilder() =>
      new GGroupFieldsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupFieldsReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGroupFieldsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GGroupFieldsReqBuilder
    implements Builder<GGroupFieldsReq, GGroupFieldsReqBuilder> {
  _$GGroupFieldsReq? _$v;

  _i3.GGroupFieldsVarsBuilder? _vars;
  _i3.GGroupFieldsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGroupFieldsVarsBuilder();
  set vars(_i3.GGroupFieldsVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GGroupFieldsReqBuilder() {
    GGroupFieldsReq._initializeBuilder(this);
  }

  GGroupFieldsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupFieldsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupFieldsReq;
  }

  @override
  void update(void Function(GGroupFieldsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupFieldsReq build() => _build();

  _$GGroupFieldsReq _build() {
    _$GGroupFieldsReq _$result;
    try {
      _$result = _$v ??
          new _$GGroupFieldsReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GGroupFieldsReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GGroupFieldsReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGroupFieldsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExpenseFieldsReq extends GExpenseFieldsReq {
  @override
  final _i3.GExpenseFieldsVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GExpenseFieldsReq(
          [void Function(GExpenseFieldsReqBuilder)? updates]) =>
      (new GExpenseFieldsReqBuilder()..update(updates))._build();

  _$GExpenseFieldsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GExpenseFieldsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GExpenseFieldsReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GExpenseFieldsReq', 'idFields');
  }

  @override
  GExpenseFieldsReq rebuild(void Function(GExpenseFieldsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExpenseFieldsReqBuilder toBuilder() =>
      new GExpenseFieldsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExpenseFieldsReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExpenseFieldsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GExpenseFieldsReqBuilder
    implements Builder<GExpenseFieldsReq, GExpenseFieldsReqBuilder> {
  _$GExpenseFieldsReq? _$v;

  _i3.GExpenseFieldsVarsBuilder? _vars;
  _i3.GExpenseFieldsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GExpenseFieldsVarsBuilder();
  set vars(_i3.GExpenseFieldsVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GExpenseFieldsReqBuilder() {
    GExpenseFieldsReq._initializeBuilder(this);
  }

  GExpenseFieldsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExpenseFieldsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExpenseFieldsReq;
  }

  @override
  void update(void Function(GExpenseFieldsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExpenseFieldsReq build() => _build();

  _$GExpenseFieldsReq _build() {
    _$GExpenseFieldsReq _$result;
    try {
      _$result = _$v ??
          new _$GExpenseFieldsReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GExpenseFieldsReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GExpenseFieldsReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExpenseFieldsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSplitFieldsReq extends GSplitFieldsReq {
  @override
  final _i3.GSplitFieldsVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GSplitFieldsReq([void Function(GSplitFieldsReqBuilder)? updates]) =>
      (new GSplitFieldsReqBuilder()..update(updates))._build();

  _$GSplitFieldsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GSplitFieldsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GSplitFieldsReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GSplitFieldsReq', 'idFields');
  }

  @override
  GSplitFieldsReq rebuild(void Function(GSplitFieldsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSplitFieldsReqBuilder toBuilder() =>
      new GSplitFieldsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSplitFieldsReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSplitFieldsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GSplitFieldsReqBuilder
    implements Builder<GSplitFieldsReq, GSplitFieldsReqBuilder> {
  _$GSplitFieldsReq? _$v;

  _i3.GSplitFieldsVarsBuilder? _vars;
  _i3.GSplitFieldsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GSplitFieldsVarsBuilder();
  set vars(_i3.GSplitFieldsVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GSplitFieldsReqBuilder() {
    GSplitFieldsReq._initializeBuilder(this);
  }

  GSplitFieldsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSplitFieldsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSplitFieldsReq;
  }

  @override
  void update(void Function(GSplitFieldsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSplitFieldsReq build() => _build();

  _$GSplitFieldsReq _build() {
    _$GSplitFieldsReq _$result;
    try {
      _$result = _$v ??
          new _$GSplitFieldsReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GSplitFieldsReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GSplitFieldsReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSplitFieldsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGroupWithExpensesReq extends GGroupWithExpensesReq {
  @override
  final _i3.GGroupWithExpensesVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GGroupWithExpensesReq(
          [void Function(GGroupWithExpensesReqBuilder)? updates]) =>
      (new GGroupWithExpensesReqBuilder()..update(updates))._build();

  _$GGroupWithExpensesReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GGroupWithExpensesReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GGroupWithExpensesReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GGroupWithExpensesReq', 'idFields');
  }

  @override
  GGroupWithExpensesReq rebuild(
          void Function(GGroupWithExpensesReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupWithExpensesReqBuilder toBuilder() =>
      new GGroupWithExpensesReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupWithExpensesReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGroupWithExpensesReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GGroupWithExpensesReqBuilder
    implements Builder<GGroupWithExpensesReq, GGroupWithExpensesReqBuilder> {
  _$GGroupWithExpensesReq? _$v;

  _i3.GGroupWithExpensesVarsBuilder? _vars;
  _i3.GGroupWithExpensesVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGroupWithExpensesVarsBuilder();
  set vars(_i3.GGroupWithExpensesVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GGroupWithExpensesReqBuilder() {
    GGroupWithExpensesReq._initializeBuilder(this);
  }

  GGroupWithExpensesReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupWithExpensesReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupWithExpensesReq;
  }

  @override
  void update(void Function(GGroupWithExpensesReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupWithExpensesReq build() => _build();

  _$GGroupWithExpensesReq _build() {
    _$GGroupWithExpensesReq _$result;
    try {
      _$result = _$v ??
          new _$GGroupWithExpensesReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GGroupWithExpensesReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GGroupWithExpensesReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGroupWithExpensesReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
