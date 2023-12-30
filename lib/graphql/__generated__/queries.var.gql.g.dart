// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queries.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GuserVars> _$guserVarsSerializer = new _$GuserVarsSerializer();
Serializer<GgroupsVars> _$ggroupsVarsSerializer = new _$GgroupsVarsSerializer();
Serializer<Ginteracted_usersVars> _$ginteractedUsersVarsSerializer =
    new _$Ginteracted_usersVarsSerializer();
Serializer<GgroupVars> _$ggroupVarsSerializer = new _$GgroupVarsSerializer();
Serializer<GsignupVars> _$gsignupVarsSerializer = new _$GsignupVarsSerializer();
Serializer<Gcreate_groupVars> _$gcreateGroupVarsSerializer =
    new _$Gcreate_groupVarsSerializer();
Serializer<Gadd_to_groupVars> _$gaddToGroupVarsSerializer =
    new _$Gadd_to_groupVarsSerializer();
Serializer<Gadd_expenseVars> _$gaddExpenseVarsSerializer =
    new _$Gadd_expenseVarsSerializer();
Serializer<Gsettle_userVars> _$gsettleUserVarsSerializer =
    new _$Gsettle_userVarsSerializer();
Serializer<Gsettle_expenseVars> _$gsettleExpenseVarsSerializer =
    new _$Gsettle_expenseVarsSerializer();
Serializer<Gsend_email_otpVars> _$gsendEmailOtpVarsSerializer =
    new _$Gsend_email_otpVarsSerializer();
Serializer<Gverify_email_otpVars> _$gverifyEmailOtpVarsSerializer =
    new _$Gverify_email_otpVarsSerializer();
Serializer<Grefresh_tokenVars> _$grefreshTokenVarsSerializer =
    new _$Grefresh_tokenVarsSerializer();
Serializer<GsearchUserByEmailVars> _$gsearchUserByEmailVarsSerializer =
    new _$GsearchUserByEmailVarsSerializer();
Serializer<GcreateNonGroupExpenseVars> _$gcreateNonGroupExpenseVarsSerializer =
    new _$GcreateNonGroupExpenseVarsSerializer();
Serializer<GUserFieldsVars> _$gUserFieldsVarsSerializer =
    new _$GUserFieldsVarsSerializer();
Serializer<GUserPaysFieldsVars> _$gUserPaysFieldsVarsSerializer =
    new _$GUserPaysFieldsVarsSerializer();
Serializer<GGroupFieldsVars> _$gGroupFieldsVarsSerializer =
    new _$GGroupFieldsVarsSerializer();
Serializer<GExpenseFieldsVars> _$gExpenseFieldsVarsSerializer =
    new _$GExpenseFieldsVarsSerializer();
Serializer<GSplitFieldsVars> _$gSplitFieldsVarsSerializer =
    new _$GSplitFieldsVarsSerializer();
Serializer<GGroupWithExpensesVars> _$gGroupWithExpensesVarsSerializer =
    new _$GGroupWithExpensesVarsSerializer();

class _$GuserVarsSerializer implements StructuredSerializer<GuserVars> {
  @override
  final Iterable<Type> types = const [GuserVars, _$GuserVars];
  @override
  final String wireName = 'GuserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GuserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GuserVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GuserVarsBuilder().build();
  }
}

class _$GgroupsVarsSerializer implements StructuredSerializer<GgroupsVars> {
  @override
  final Iterable<Type> types = const [GgroupsVars, _$GgroupsVars];
  @override
  final String wireName = 'GgroupsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgroupsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgroupsVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GgroupsVarsBuilder().build();
  }
}

class _$Ginteracted_usersVarsSerializer
    implements StructuredSerializer<Ginteracted_usersVars> {
  @override
  final Iterable<Type> types = const [
    Ginteracted_usersVars,
    _$Ginteracted_usersVars
  ];
  @override
  final String wireName = 'Ginteracted_usersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Ginteracted_usersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Ginteracted_usersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Ginteracted_usersVarsBuilder().build();
  }
}

class _$GgroupVarsSerializer implements StructuredSerializer<GgroupVars> {
  @override
  final Iterable<Type> types = const [GgroupVars, _$GgroupVars];
  @override
  final String wireName = 'GgroupVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgroupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GgroupVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GgroupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GsignupVarsSerializer implements StructuredSerializer<GsignupVars> {
  @override
  final Iterable<Type> types = const [GsignupVars, _$GsignupVars];
  @override
  final String wireName = 'GsignupVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GsignupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.upi_id;
    if (value != null) {
      result
        ..add('upi_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GsignupVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsignupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'upi_id':
          result.upi_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_groupVarsSerializer
    implements StructuredSerializer<Gcreate_groupVars> {
  @override
  final Iterable<Type> types = const [Gcreate_groupVars, _$Gcreate_groupVars];
  @override
  final String wireName = 'Gcreate_groupVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gcreate_groupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gcreate_groupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_groupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_to_groupVarsSerializer
    implements StructuredSerializer<Gadd_to_groupVars> {
  @override
  final Iterable<Type> types = const [Gadd_to_groupVars, _$Gadd_to_groupVars];
  @override
  final String wireName = 'Gadd_to_groupVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_to_groupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gadd_to_groupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_to_groupVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_expenseVarsSerializer
    implements StructuredSerializer<Gadd_expenseVars> {
  @override
  final Iterable<Type> types = const [Gadd_expenseVars, _$Gadd_expenseVars];
  @override
  final String wireName = 'Gadd_expenseVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_expenseVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount, specifiedType: const FullType(int)),
      'splits',
      serializers.serialize(object.splits,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i2.GSplitInput)])),
      'groupId',
      serializers.serialize(object.groupId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gadd_expenseVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_expenseVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'splits':
          result.splits.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i2.GSplitInput)]))!
              as BuiltList<Object?>);
          break;
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsettle_userVarsSerializer
    implements StructuredSerializer<Gsettle_userVars> {
  @override
  final Iterable<Type> types = const [Gsettle_userVars, _$Gsettle_userVars];
  @override
  final String wireName = 'Gsettle_userVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gsettle_userVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'amount',
      serializers.serialize(object.amount, specifiedType: const FullType(int)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gsettle_userVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsettle_userVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsettle_expenseVarsSerializer
    implements StructuredSerializer<Gsettle_expenseVars> {
  @override
  final Iterable<Type> types = const [
    Gsettle_expenseVars,
    _$Gsettle_expenseVars
  ];
  @override
  final String wireName = 'Gsettle_expenseVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsettle_expenseVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'amount',
      serializers.serialize(object.amount, specifiedType: const FullType(int)),
      'expenseId',
      serializers.serialize(object.expenseId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gsettle_expenseVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsettle_expenseVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'expenseId':
          result.expenseId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_email_otpVarsSerializer
    implements StructuredSerializer<Gsend_email_otpVars> {
  @override
  final Iterable<Type> types = const [
    Gsend_email_otpVars,
    _$Gsend_email_otpVars
  ];
  @override
  final String wireName = 'Gsend_email_otpVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_email_otpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gsend_email_otpVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_email_otpVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_email_otpVarsSerializer
    implements StructuredSerializer<Gverify_email_otpVars> {
  @override
  final Iterable<Type> types = const [
    Gverify_email_otpVars,
    _$Gverify_email_otpVars
  ];
  @override
  final String wireName = 'Gverify_email_otpVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gverify_email_otpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'otp',
      serializers.serialize(object.otp, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gverify_email_otpVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gverify_email_otpVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'otp':
          result.otp = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Grefresh_tokenVarsSerializer
    implements StructuredSerializer<Grefresh_tokenVars> {
  @override
  final Iterable<Type> types = const [Grefresh_tokenVars, _$Grefresh_tokenVars];
  @override
  final String wireName = 'Grefresh_tokenVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Grefresh_tokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'refresh_token',
      serializers.serialize(object.refresh_token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Grefresh_tokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Grefresh_tokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'refresh_token':
          result.refresh_token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GsearchUserByEmailVarsSerializer
    implements StructuredSerializer<GsearchUserByEmailVars> {
  @override
  final Iterable<Type> types = const [
    GsearchUserByEmailVars,
    _$GsearchUserByEmailVars
  ];
  @override
  final String wireName = 'GsearchUserByEmailVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsearchUserByEmailVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GsearchUserByEmailVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GsearchUserByEmailVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GcreateNonGroupExpenseVarsSerializer
    implements StructuredSerializer<GcreateNonGroupExpenseVars> {
  @override
  final Iterable<Type> types = const [
    GcreateNonGroupExpenseVars,
    _$GcreateNonGroupExpenseVars
  ];
  @override
  final String wireName = 'GcreateNonGroupExpenseVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GcreateNonGroupExpenseVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount, specifiedType: const FullType(int)),
      'splitsNonGroup',
      serializers.serialize(object.splitsNonGroup,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i2.GSplitInputNonGroup)])),
    ];

    return result;
  }

  @override
  GcreateNonGroupExpenseVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GcreateNonGroupExpenseVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'splitsNonGroup':
          result.splitsNonGroup.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i2.GSplitInputNonGroup)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserFieldsVarsSerializer
    implements StructuredSerializer<GUserFieldsVars> {
  @override
  final Iterable<Type> types = const [GUserFieldsVars, _$GUserFieldsVars];
  @override
  final String wireName = 'GUserFieldsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserFieldsVarsBuilder().build();
  }
}

class _$GUserPaysFieldsVarsSerializer
    implements StructuredSerializer<GUserPaysFieldsVars> {
  @override
  final Iterable<Type> types = const [
    GUserPaysFieldsVars,
    _$GUserPaysFieldsVars
  ];
  @override
  final String wireName = 'GUserPaysFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserPaysFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserPaysFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserPaysFieldsVarsBuilder().build();
  }
}

class _$GGroupFieldsVarsSerializer
    implements StructuredSerializer<GGroupFieldsVars> {
  @override
  final Iterable<Type> types = const [GGroupFieldsVars, _$GGroupFieldsVars];
  @override
  final String wireName = 'GGroupFieldsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGroupFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGroupFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGroupFieldsVarsBuilder().build();
  }
}

class _$GExpenseFieldsVarsSerializer
    implements StructuredSerializer<GExpenseFieldsVars> {
  @override
  final Iterable<Type> types = const [GExpenseFieldsVars, _$GExpenseFieldsVars];
  @override
  final String wireName = 'GExpenseFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExpenseFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GExpenseFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GExpenseFieldsVarsBuilder().build();
  }
}

class _$GSplitFieldsVarsSerializer
    implements StructuredSerializer<GSplitFieldsVars> {
  @override
  final Iterable<Type> types = const [GSplitFieldsVars, _$GSplitFieldsVars];
  @override
  final String wireName = 'GSplitFieldsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSplitFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GSplitFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GSplitFieldsVarsBuilder().build();
  }
}

class _$GGroupWithExpensesVarsSerializer
    implements StructuredSerializer<GGroupWithExpensesVars> {
  @override
  final Iterable<Type> types = const [
    GGroupWithExpensesVars,
    _$GGroupWithExpensesVars
  ];
  @override
  final String wireName = 'GGroupWithExpensesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupWithExpensesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'skip',
      serializers.serialize(object.skip, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGroupWithExpensesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupWithExpensesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'skip':
          result.skip = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GuserVars extends GuserVars {
  factory _$GuserVars([void Function(GuserVarsBuilder)? updates]) =>
      (new GuserVarsBuilder()..update(updates))._build();

  _$GuserVars._() : super._();

  @override
  GuserVars rebuild(void Function(GuserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuserVarsBuilder toBuilder() => new GuserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GuserVars;
  }

  @override
  int get hashCode {
    return 1072466984;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GuserVars').toString();
  }
}

class GuserVarsBuilder implements Builder<GuserVars, GuserVarsBuilder> {
  _$GuserVars? _$v;

  GuserVarsBuilder();

  @override
  void replace(GuserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GuserVars;
  }

  @override
  void update(void Function(GuserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GuserVars build() => _build();

  _$GuserVars _build() {
    final _$result = _$v ?? new _$GuserVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GgroupsVars extends GgroupsVars {
  factory _$GgroupsVars([void Function(GgroupsVarsBuilder)? updates]) =>
      (new GgroupsVarsBuilder()..update(updates))._build();

  _$GgroupsVars._() : super._();

  @override
  GgroupsVars rebuild(void Function(GgroupsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgroupsVarsBuilder toBuilder() => new GgroupsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgroupsVars;
  }

  @override
  int get hashCode {
    return 4626207;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgroupsVars').toString();
  }
}

class GgroupsVarsBuilder implements Builder<GgroupsVars, GgroupsVarsBuilder> {
  _$GgroupsVars? _$v;

  GgroupsVarsBuilder();

  @override
  void replace(GgroupsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgroupsVars;
  }

  @override
  void update(void Function(GgroupsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgroupsVars build() => _build();

  _$GgroupsVars _build() {
    final _$result = _$v ?? new _$GgroupsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$Ginteracted_usersVars extends Ginteracted_usersVars {
  factory _$Ginteracted_usersVars(
          [void Function(Ginteracted_usersVarsBuilder)? updates]) =>
      (new Ginteracted_usersVarsBuilder()..update(updates))._build();

  _$Ginteracted_usersVars._() : super._();

  @override
  Ginteracted_usersVars rebuild(
          void Function(Ginteracted_usersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ginteracted_usersVarsBuilder toBuilder() =>
      new Ginteracted_usersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ginteracted_usersVars;
  }

  @override
  int get hashCode {
    return 824740354;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Ginteracted_usersVars').toString();
  }
}

class Ginteracted_usersVarsBuilder
    implements Builder<Ginteracted_usersVars, Ginteracted_usersVarsBuilder> {
  _$Ginteracted_usersVars? _$v;

  Ginteracted_usersVarsBuilder();

  @override
  void replace(Ginteracted_usersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ginteracted_usersVars;
  }

  @override
  void update(void Function(Ginteracted_usersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ginteracted_usersVars build() => _build();

  _$Ginteracted_usersVars _build() {
    final _$result = _$v ?? new _$Ginteracted_usersVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GgroupVars extends GgroupVars {
  @override
  final int skip;
  @override
  final int limit;
  @override
  final String groupId;

  factory _$GgroupVars([void Function(GgroupVarsBuilder)? updates]) =>
      (new GgroupVarsBuilder()..update(updates))._build();

  _$GgroupVars._(
      {required this.skip, required this.limit, required this.groupId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(skip, r'GgroupVars', 'skip');
    BuiltValueNullFieldError.checkNotNull(limit, r'GgroupVars', 'limit');
    BuiltValueNullFieldError.checkNotNull(groupId, r'GgroupVars', 'groupId');
  }

  @override
  GgroupVars rebuild(void Function(GgroupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgroupVarsBuilder toBuilder() => new GgroupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgroupVars &&
        skip == other.skip &&
        limit == other.limit &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgroupVars')
          ..add('skip', skip)
          ..add('limit', limit)
          ..add('groupId', groupId))
        .toString();
  }
}

class GgroupVarsBuilder implements Builder<GgroupVars, GgroupVarsBuilder> {
  _$GgroupVars? _$v;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  GgroupVarsBuilder();

  GgroupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skip = $v.skip;
      _limit = $v.limit;
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgroupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GgroupVars;
  }

  @override
  void update(void Function(GgroupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgroupVars build() => _build();

  _$GgroupVars _build() {
    final _$result = _$v ??
        new _$GgroupVars._(
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GgroupVars', 'skip'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'GgroupVars', 'limit'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, r'GgroupVars', 'groupId'));
    replace(_$result);
    return _$result;
  }
}

class _$GsignupVars extends GsignupVars {
  @override
  final String name;
  @override
  final String? upi_id;

  factory _$GsignupVars([void Function(GsignupVarsBuilder)? updates]) =>
      (new GsignupVarsBuilder()..update(updates))._build();

  _$GsignupVars._({required this.name, this.upi_id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GsignupVars', 'name');
  }

  @override
  GsignupVars rebuild(void Function(GsignupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsignupVarsBuilder toBuilder() => new GsignupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsignupVars && name == other.name && upi_id == other.upi_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, upi_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsignupVars')
          ..add('name', name)
          ..add('upi_id', upi_id))
        .toString();
  }
}

class GsignupVarsBuilder implements Builder<GsignupVars, GsignupVarsBuilder> {
  _$GsignupVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _upi_id;
  String? get upi_id => _$this._upi_id;
  set upi_id(String? upi_id) => _$this._upi_id = upi_id;

  GsignupVarsBuilder();

  GsignupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _upi_id = $v.upi_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsignupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsignupVars;
  }

  @override
  void update(void Function(GsignupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsignupVars build() => _build();

  _$GsignupVars _build() {
    final _$result = _$v ??
        new _$GsignupVars._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GsignupVars', 'name'),
            upi_id: upi_id);
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_groupVars extends Gcreate_groupVars {
  @override
  final String name;

  factory _$Gcreate_groupVars(
          [void Function(Gcreate_groupVarsBuilder)? updates]) =>
      (new Gcreate_groupVarsBuilder()..update(updates))._build();

  _$Gcreate_groupVars._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Gcreate_groupVars', 'name');
  }

  @override
  Gcreate_groupVars rebuild(void Function(Gcreate_groupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_groupVarsBuilder toBuilder() =>
      new Gcreate_groupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_groupVars && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_groupVars')
          ..add('name', name))
        .toString();
  }
}

class Gcreate_groupVarsBuilder
    implements Builder<Gcreate_groupVars, Gcreate_groupVarsBuilder> {
  _$Gcreate_groupVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gcreate_groupVarsBuilder();

  Gcreate_groupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_groupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_groupVars;
  }

  @override
  void update(void Function(Gcreate_groupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_groupVars build() => _build();

  _$Gcreate_groupVars _build() {
    final _$result = _$v ??
        new _$Gcreate_groupVars._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Gcreate_groupVars', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_to_groupVars extends Gadd_to_groupVars {
  @override
  final String email;
  @override
  final String groupId;

  factory _$Gadd_to_groupVars(
          [void Function(Gadd_to_groupVarsBuilder)? updates]) =>
      (new Gadd_to_groupVarsBuilder()..update(updates))._build();

  _$Gadd_to_groupVars._({required this.email, required this.groupId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'Gadd_to_groupVars', 'email');
    BuiltValueNullFieldError.checkNotNull(
        groupId, r'Gadd_to_groupVars', 'groupId');
  }

  @override
  Gadd_to_groupVars rebuild(void Function(Gadd_to_groupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_to_groupVarsBuilder toBuilder() =>
      new Gadd_to_groupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_to_groupVars &&
        email == other.email &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_to_groupVars')
          ..add('email', email)
          ..add('groupId', groupId))
        .toString();
  }
}

class Gadd_to_groupVarsBuilder
    implements Builder<Gadd_to_groupVars, Gadd_to_groupVarsBuilder> {
  _$Gadd_to_groupVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  Gadd_to_groupVarsBuilder();

  Gadd_to_groupVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_to_groupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_to_groupVars;
  }

  @override
  void update(void Function(Gadd_to_groupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_to_groupVars build() => _build();

  _$Gadd_to_groupVars _build() {
    final _$result = _$v ??
        new _$Gadd_to_groupVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'Gadd_to_groupVars', 'email'),
            groupId: BuiltValueNullFieldError.checkNotNull(
                groupId, r'Gadd_to_groupVars', 'groupId'));
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_expenseVars extends Gadd_expenseVars {
  @override
  final String title;
  @override
  final int amount;
  @override
  final BuiltList<_i2.GSplitInput> splits;
  @override
  final String groupId;

  factory _$Gadd_expenseVars(
          [void Function(Gadd_expenseVarsBuilder)? updates]) =>
      (new Gadd_expenseVarsBuilder()..update(updates))._build();

  _$Gadd_expenseVars._(
      {required this.title,
      required this.amount,
      required this.splits,
      required this.groupId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'Gadd_expenseVars', 'title');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'Gadd_expenseVars', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        splits, r'Gadd_expenseVars', 'splits');
    BuiltValueNullFieldError.checkNotNull(
        groupId, r'Gadd_expenseVars', 'groupId');
  }

  @override
  Gadd_expenseVars rebuild(void Function(Gadd_expenseVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_expenseVarsBuilder toBuilder() =>
      new Gadd_expenseVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_expenseVars &&
        title == other.title &&
        amount == other.amount &&
        splits == other.splits &&
        groupId == other.groupId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, splits.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_expenseVars')
          ..add('title', title)
          ..add('amount', amount)
          ..add('splits', splits)
          ..add('groupId', groupId))
        .toString();
  }
}

class Gadd_expenseVarsBuilder
    implements Builder<Gadd_expenseVars, Gadd_expenseVarsBuilder> {
  _$Gadd_expenseVars? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  ListBuilder<_i2.GSplitInput>? _splits;
  ListBuilder<_i2.GSplitInput> get splits =>
      _$this._splits ??= new ListBuilder<_i2.GSplitInput>();
  set splits(ListBuilder<_i2.GSplitInput>? splits) => _$this._splits = splits;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  Gadd_expenseVarsBuilder();

  Gadd_expenseVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _amount = $v.amount;
      _splits = $v.splits.toBuilder();
      _groupId = $v.groupId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_expenseVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_expenseVars;
  }

  @override
  void update(void Function(Gadd_expenseVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_expenseVars build() => _build();

  _$Gadd_expenseVars _build() {
    _$Gadd_expenseVars _$result;
    try {
      _$result = _$v ??
          new _$Gadd_expenseVars._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Gadd_expenseVars', 'title'),
              amount: BuiltValueNullFieldError.checkNotNull(
                  amount, r'Gadd_expenseVars', 'amount'),
              splits: splits.build(),
              groupId: BuiltValueNullFieldError.checkNotNull(
                  groupId, r'Gadd_expenseVars', 'groupId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'splits';
        splits.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_expenseVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsettle_userVars extends Gsettle_userVars {
  @override
  final int amount;
  @override
  final String userId;

  factory _$Gsettle_userVars(
          [void Function(Gsettle_userVarsBuilder)? updates]) =>
      (new Gsettle_userVarsBuilder()..update(updates))._build();

  _$Gsettle_userVars._({required this.amount, required this.userId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'Gsettle_userVars', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'Gsettle_userVars', 'userId');
  }

  @override
  Gsettle_userVars rebuild(void Function(Gsettle_userVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsettle_userVarsBuilder toBuilder() =>
      new Gsettle_userVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsettle_userVars &&
        amount == other.amount &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsettle_userVars')
          ..add('amount', amount)
          ..add('userId', userId))
        .toString();
  }
}

class Gsettle_userVarsBuilder
    implements Builder<Gsettle_userVars, Gsettle_userVarsBuilder> {
  _$Gsettle_userVars? _$v;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  Gsettle_userVarsBuilder();

  Gsettle_userVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsettle_userVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsettle_userVars;
  }

  @override
  void update(void Function(Gsettle_userVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsettle_userVars build() => _build();

  _$Gsettle_userVars _build() {
    final _$result = _$v ??
        new _$Gsettle_userVars._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'Gsettle_userVars', 'amount'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'Gsettle_userVars', 'userId'));
    replace(_$result);
    return _$result;
  }
}

class _$Gsettle_expenseVars extends Gsettle_expenseVars {
  @override
  final int amount;
  @override
  final String expenseId;

  factory _$Gsettle_expenseVars(
          [void Function(Gsettle_expenseVarsBuilder)? updates]) =>
      (new Gsettle_expenseVarsBuilder()..update(updates))._build();

  _$Gsettle_expenseVars._({required this.amount, required this.expenseId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'Gsettle_expenseVars', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        expenseId, r'Gsettle_expenseVars', 'expenseId');
  }

  @override
  Gsettle_expenseVars rebuild(
          void Function(Gsettle_expenseVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsettle_expenseVarsBuilder toBuilder() =>
      new Gsettle_expenseVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsettle_expenseVars &&
        amount == other.amount &&
        expenseId == other.expenseId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, expenseId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsettle_expenseVars')
          ..add('amount', amount)
          ..add('expenseId', expenseId))
        .toString();
  }
}

class Gsettle_expenseVarsBuilder
    implements Builder<Gsettle_expenseVars, Gsettle_expenseVarsBuilder> {
  _$Gsettle_expenseVars? _$v;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  String? _expenseId;
  String? get expenseId => _$this._expenseId;
  set expenseId(String? expenseId) => _$this._expenseId = expenseId;

  Gsettle_expenseVarsBuilder();

  Gsettle_expenseVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _expenseId = $v.expenseId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsettle_expenseVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsettle_expenseVars;
  }

  @override
  void update(void Function(Gsettle_expenseVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsettle_expenseVars build() => _build();

  _$Gsettle_expenseVars _build() {
    final _$result = _$v ??
        new _$Gsettle_expenseVars._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'Gsettle_expenseVars', 'amount'),
            expenseId: BuiltValueNullFieldError.checkNotNull(
                expenseId, r'Gsettle_expenseVars', 'expenseId'));
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_email_otpVars extends Gsend_email_otpVars {
  @override
  final String email;

  factory _$Gsend_email_otpVars(
          [void Function(Gsend_email_otpVarsBuilder)? updates]) =>
      (new Gsend_email_otpVarsBuilder()..update(updates))._build();

  _$Gsend_email_otpVars._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'Gsend_email_otpVars', 'email');
  }

  @override
  Gsend_email_otpVars rebuild(
          void Function(Gsend_email_otpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_email_otpVarsBuilder toBuilder() =>
      new Gsend_email_otpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_email_otpVars && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_email_otpVars')
          ..add('email', email))
        .toString();
  }
}

class Gsend_email_otpVarsBuilder
    implements Builder<Gsend_email_otpVars, Gsend_email_otpVarsBuilder> {
  _$Gsend_email_otpVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  Gsend_email_otpVarsBuilder();

  Gsend_email_otpVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_email_otpVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_email_otpVars;
  }

  @override
  void update(void Function(Gsend_email_otpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_email_otpVars build() => _build();

  _$Gsend_email_otpVars _build() {
    final _$result = _$v ??
        new _$Gsend_email_otpVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'Gsend_email_otpVars', 'email'));
    replace(_$result);
    return _$result;
  }
}

class _$Gverify_email_otpVars extends Gverify_email_otpVars {
  @override
  final String email;
  @override
  final String otp;

  factory _$Gverify_email_otpVars(
          [void Function(Gverify_email_otpVarsBuilder)? updates]) =>
      (new Gverify_email_otpVarsBuilder()..update(updates))._build();

  _$Gverify_email_otpVars._({required this.email, required this.otp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'Gverify_email_otpVars', 'email');
    BuiltValueNullFieldError.checkNotNull(otp, r'Gverify_email_otpVars', 'otp');
  }

  @override
  Gverify_email_otpVars rebuild(
          void Function(Gverify_email_otpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_email_otpVarsBuilder toBuilder() =>
      new Gverify_email_otpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gverify_email_otpVars &&
        email == other.email &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gverify_email_otpVars')
          ..add('email', email)
          ..add('otp', otp))
        .toString();
  }
}

class Gverify_email_otpVarsBuilder
    implements Builder<Gverify_email_otpVars, Gverify_email_otpVarsBuilder> {
  _$Gverify_email_otpVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  Gverify_email_otpVarsBuilder();

  Gverify_email_otpVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gverify_email_otpVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_email_otpVars;
  }

  @override
  void update(void Function(Gverify_email_otpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_email_otpVars build() => _build();

  _$Gverify_email_otpVars _build() {
    final _$result = _$v ??
        new _$Gverify_email_otpVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'Gverify_email_otpVars', 'email'),
            otp: BuiltValueNullFieldError.checkNotNull(
                otp, r'Gverify_email_otpVars', 'otp'));
    replace(_$result);
    return _$result;
  }
}

class _$Grefresh_tokenVars extends Grefresh_tokenVars {
  @override
  final String refresh_token;

  factory _$Grefresh_tokenVars(
          [void Function(Grefresh_tokenVarsBuilder)? updates]) =>
      (new Grefresh_tokenVarsBuilder()..update(updates))._build();

  _$Grefresh_tokenVars._({required this.refresh_token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refresh_token, r'Grefresh_tokenVars', 'refresh_token');
  }

  @override
  Grefresh_tokenVars rebuild(
          void Function(Grefresh_tokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grefresh_tokenVarsBuilder toBuilder() =>
      new Grefresh_tokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grefresh_tokenVars && refresh_token == other.refresh_token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refresh_token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Grefresh_tokenVars')
          ..add('refresh_token', refresh_token))
        .toString();
  }
}

class Grefresh_tokenVarsBuilder
    implements Builder<Grefresh_tokenVars, Grefresh_tokenVarsBuilder> {
  _$Grefresh_tokenVars? _$v;

  String? _refresh_token;
  String? get refresh_token => _$this._refresh_token;
  set refresh_token(String? refresh_token) =>
      _$this._refresh_token = refresh_token;

  Grefresh_tokenVarsBuilder();

  Grefresh_tokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refresh_token = $v.refresh_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grefresh_tokenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grefresh_tokenVars;
  }

  @override
  void update(void Function(Grefresh_tokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grefresh_tokenVars build() => _build();

  _$Grefresh_tokenVars _build() {
    final _$result = _$v ??
        new _$Grefresh_tokenVars._(
            refresh_token: BuiltValueNullFieldError.checkNotNull(
                refresh_token, r'Grefresh_tokenVars', 'refresh_token'));
    replace(_$result);
    return _$result;
  }
}

class _$GsearchUserByEmailVars extends GsearchUserByEmailVars {
  @override
  final String email;

  factory _$GsearchUserByEmailVars(
          [void Function(GsearchUserByEmailVarsBuilder)? updates]) =>
      (new GsearchUserByEmailVarsBuilder()..update(updates))._build();

  _$GsearchUserByEmailVars._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'GsearchUserByEmailVars', 'email');
  }

  @override
  GsearchUserByEmailVars rebuild(
          void Function(GsearchUserByEmailVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsearchUserByEmailVarsBuilder toBuilder() =>
      new GsearchUserByEmailVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsearchUserByEmailVars && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsearchUserByEmailVars')
          ..add('email', email))
        .toString();
  }
}

class GsearchUserByEmailVarsBuilder
    implements Builder<GsearchUserByEmailVars, GsearchUserByEmailVarsBuilder> {
  _$GsearchUserByEmailVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GsearchUserByEmailVarsBuilder();

  GsearchUserByEmailVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsearchUserByEmailVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GsearchUserByEmailVars;
  }

  @override
  void update(void Function(GsearchUserByEmailVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsearchUserByEmailVars build() => _build();

  _$GsearchUserByEmailVars _build() {
    final _$result = _$v ??
        new _$GsearchUserByEmailVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GsearchUserByEmailVars', 'email'));
    replace(_$result);
    return _$result;
  }
}

class _$GcreateNonGroupExpenseVars extends GcreateNonGroupExpenseVars {
  @override
  final String title;
  @override
  final int amount;
  @override
  final BuiltList<_i2.GSplitInputNonGroup> splitsNonGroup;

  factory _$GcreateNonGroupExpenseVars(
          [void Function(GcreateNonGroupExpenseVarsBuilder)? updates]) =>
      (new GcreateNonGroupExpenseVarsBuilder()..update(updates))._build();

  _$GcreateNonGroupExpenseVars._(
      {required this.title, required this.amount, required this.splitsNonGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'GcreateNonGroupExpenseVars', 'title');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'GcreateNonGroupExpenseVars', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        splitsNonGroup, r'GcreateNonGroupExpenseVars', 'splitsNonGroup');
  }

  @override
  GcreateNonGroupExpenseVars rebuild(
          void Function(GcreateNonGroupExpenseVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GcreateNonGroupExpenseVarsBuilder toBuilder() =>
      new GcreateNonGroupExpenseVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GcreateNonGroupExpenseVars &&
        title == other.title &&
        amount == other.amount &&
        splitsNonGroup == other.splitsNonGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, splitsNonGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GcreateNonGroupExpenseVars')
          ..add('title', title)
          ..add('amount', amount)
          ..add('splitsNonGroup', splitsNonGroup))
        .toString();
  }
}

class GcreateNonGroupExpenseVarsBuilder
    implements
        Builder<GcreateNonGroupExpenseVars, GcreateNonGroupExpenseVarsBuilder> {
  _$GcreateNonGroupExpenseVars? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  ListBuilder<_i2.GSplitInputNonGroup>? _splitsNonGroup;
  ListBuilder<_i2.GSplitInputNonGroup> get splitsNonGroup =>
      _$this._splitsNonGroup ??= new ListBuilder<_i2.GSplitInputNonGroup>();
  set splitsNonGroup(ListBuilder<_i2.GSplitInputNonGroup>? splitsNonGroup) =>
      _$this._splitsNonGroup = splitsNonGroup;

  GcreateNonGroupExpenseVarsBuilder();

  GcreateNonGroupExpenseVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _amount = $v.amount;
      _splitsNonGroup = $v.splitsNonGroup.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GcreateNonGroupExpenseVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GcreateNonGroupExpenseVars;
  }

  @override
  void update(void Function(GcreateNonGroupExpenseVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GcreateNonGroupExpenseVars build() => _build();

  _$GcreateNonGroupExpenseVars _build() {
    _$GcreateNonGroupExpenseVars _$result;
    try {
      _$result = _$v ??
          new _$GcreateNonGroupExpenseVars._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GcreateNonGroupExpenseVars', 'title'),
              amount: BuiltValueNullFieldError.checkNotNull(
                  amount, r'GcreateNonGroupExpenseVars', 'amount'),
              splitsNonGroup: splitsNonGroup.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'splitsNonGroup';
        splitsNonGroup.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GcreateNonGroupExpenseVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserFieldsVars extends GUserFieldsVars {
  factory _$GUserFieldsVars([void Function(GUserFieldsVarsBuilder)? updates]) =>
      (new GUserFieldsVarsBuilder()..update(updates))._build();

  _$GUserFieldsVars._() : super._();

  @override
  GUserFieldsVars rebuild(void Function(GUserFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFieldsVarsBuilder toBuilder() =>
      new GUserFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFieldsVars;
  }

  @override
  int get hashCode {
    return 51217839;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserFieldsVars').toString();
  }
}

class GUserFieldsVarsBuilder
    implements Builder<GUserFieldsVars, GUserFieldsVarsBuilder> {
  _$GUserFieldsVars? _$v;

  GUserFieldsVarsBuilder();

  @override
  void replace(GUserFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFieldsVars;
  }

  @override
  void update(void Function(GUserFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFieldsVars build() => _build();

  _$GUserFieldsVars _build() {
    final _$result = _$v ?? new _$GUserFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GUserPaysFieldsVars extends GUserPaysFieldsVars {
  factory _$GUserPaysFieldsVars(
          [void Function(GUserPaysFieldsVarsBuilder)? updates]) =>
      (new GUserPaysFieldsVarsBuilder()..update(updates))._build();

  _$GUserPaysFieldsVars._() : super._();

  @override
  GUserPaysFieldsVars rebuild(
          void Function(GUserPaysFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserPaysFieldsVarsBuilder toBuilder() =>
      new GUserPaysFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserPaysFieldsVars;
  }

  @override
  int get hashCode {
    return 336325644;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserPaysFieldsVars').toString();
  }
}

class GUserPaysFieldsVarsBuilder
    implements Builder<GUserPaysFieldsVars, GUserPaysFieldsVarsBuilder> {
  _$GUserPaysFieldsVars? _$v;

  GUserPaysFieldsVarsBuilder();

  @override
  void replace(GUserPaysFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserPaysFieldsVars;
  }

  @override
  void update(void Function(GUserPaysFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserPaysFieldsVars build() => _build();

  _$GUserPaysFieldsVars _build() {
    final _$result = _$v ?? new _$GUserPaysFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GGroupFieldsVars extends GGroupFieldsVars {
  factory _$GGroupFieldsVars(
          [void Function(GGroupFieldsVarsBuilder)? updates]) =>
      (new GGroupFieldsVarsBuilder()..update(updates))._build();

  _$GGroupFieldsVars._() : super._();

  @override
  GGroupFieldsVars rebuild(void Function(GGroupFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupFieldsVarsBuilder toBuilder() =>
      new GGroupFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupFieldsVars;
  }

  @override
  int get hashCode {
    return 175045919;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGroupFieldsVars').toString();
  }
}

class GGroupFieldsVarsBuilder
    implements Builder<GGroupFieldsVars, GGroupFieldsVarsBuilder> {
  _$GGroupFieldsVars? _$v;

  GGroupFieldsVarsBuilder();

  @override
  void replace(GGroupFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupFieldsVars;
  }

  @override
  void update(void Function(GGroupFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupFieldsVars build() => _build();

  _$GGroupFieldsVars _build() {
    final _$result = _$v ?? new _$GGroupFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GExpenseFieldsVars extends GExpenseFieldsVars {
  factory _$GExpenseFieldsVars(
          [void Function(GExpenseFieldsVarsBuilder)? updates]) =>
      (new GExpenseFieldsVarsBuilder()..update(updates))._build();

  _$GExpenseFieldsVars._() : super._();

  @override
  GExpenseFieldsVars rebuild(
          void Function(GExpenseFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExpenseFieldsVarsBuilder toBuilder() =>
      new GExpenseFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExpenseFieldsVars;
  }

  @override
  int get hashCode {
    return 516071028;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GExpenseFieldsVars').toString();
  }
}

class GExpenseFieldsVarsBuilder
    implements Builder<GExpenseFieldsVars, GExpenseFieldsVarsBuilder> {
  _$GExpenseFieldsVars? _$v;

  GExpenseFieldsVarsBuilder();

  @override
  void replace(GExpenseFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExpenseFieldsVars;
  }

  @override
  void update(void Function(GExpenseFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExpenseFieldsVars build() => _build();

  _$GExpenseFieldsVars _build() {
    final _$result = _$v ?? new _$GExpenseFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GSplitFieldsVars extends GSplitFieldsVars {
  factory _$GSplitFieldsVars(
          [void Function(GSplitFieldsVarsBuilder)? updates]) =>
      (new GSplitFieldsVarsBuilder()..update(updates))._build();

  _$GSplitFieldsVars._() : super._();

  @override
  GSplitFieldsVars rebuild(void Function(GSplitFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSplitFieldsVarsBuilder toBuilder() =>
      new GSplitFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSplitFieldsVars;
  }

  @override
  int get hashCode {
    return 116219746;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GSplitFieldsVars').toString();
  }
}

class GSplitFieldsVarsBuilder
    implements Builder<GSplitFieldsVars, GSplitFieldsVarsBuilder> {
  _$GSplitFieldsVars? _$v;

  GSplitFieldsVarsBuilder();

  @override
  void replace(GSplitFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSplitFieldsVars;
  }

  @override
  void update(void Function(GSplitFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSplitFieldsVars build() => _build();

  _$GSplitFieldsVars _build() {
    final _$result = _$v ?? new _$GSplitFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GGroupWithExpensesVars extends GGroupWithExpensesVars {
  @override
  final int skip;
  @override
  final int limit;

  factory _$GGroupWithExpensesVars(
          [void Function(GGroupWithExpensesVarsBuilder)? updates]) =>
      (new GGroupWithExpensesVarsBuilder()..update(updates))._build();

  _$GGroupWithExpensesVars._({required this.skip, required this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        skip, r'GGroupWithExpensesVars', 'skip');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GGroupWithExpensesVars', 'limit');
  }

  @override
  GGroupWithExpensesVars rebuild(
          void Function(GGroupWithExpensesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupWithExpensesVarsBuilder toBuilder() =>
      new GGroupWithExpensesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupWithExpensesVars &&
        skip == other.skip &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skip.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGroupWithExpensesVars')
          ..add('skip', skip)
          ..add('limit', limit))
        .toString();
  }
}

class GGroupWithExpensesVarsBuilder
    implements Builder<GGroupWithExpensesVars, GGroupWithExpensesVarsBuilder> {
  _$GGroupWithExpensesVars? _$v;

  int? _skip;
  int? get skip => _$this._skip;
  set skip(int? skip) => _$this._skip = skip;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GGroupWithExpensesVarsBuilder();

  GGroupWithExpensesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skip = $v.skip;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupWithExpensesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupWithExpensesVars;
  }

  @override
  void update(void Function(GGroupWithExpensesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGroupWithExpensesVars build() => _build();

  _$GGroupWithExpensesVars _build() {
    final _$result = _$v ??
        new _$GGroupWithExpensesVars._(
            skip: BuiltValueNullFieldError.checkNotNull(
                skip, r'GGroupWithExpensesVars', 'skip'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'GGroupWithExpensesVars', 'limit'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
