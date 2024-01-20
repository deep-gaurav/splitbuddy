// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:billdivide/__generated__/schema.schema.gql.dart' as _i2;
import 'package:billdivide/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queries.var.gql.g.dart';

abstract class GuserVars implements Built<GuserVars, GuserVarsBuilder> {
  GuserVars._();

  factory GuserVars([Function(GuserVarsBuilder b) updates]) = _$GuserVars;

  static Serializer<GuserVars> get serializer => _$guserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserVars.serializer,
        json,
      );
}

abstract class GuserConfigVars
    implements Built<GuserConfigVars, GuserConfigVarsBuilder> {
  GuserConfigVars._();

  factory GuserConfigVars([Function(GuserConfigVarsBuilder b) updates]) =
      _$GuserConfigVars;

  static Serializer<GuserConfigVars> get serializer =>
      _$guserConfigVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserConfigVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserConfigVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserConfigVars.serializer,
        json,
      );
}

abstract class GgroupsVars implements Built<GgroupsVars, GgroupsVarsBuilder> {
  GgroupsVars._();

  factory GgroupsVars([Function(GgroupsVarsBuilder b) updates]) = _$GgroupsVars;

  static Serializer<GgroupsVars> get serializer => _$ggroupsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupsVars.serializer,
        json,
      );
}

abstract class Ginteracted_usersVars
    implements Built<Ginteracted_usersVars, Ginteracted_usersVarsBuilder> {
  Ginteracted_usersVars._();

  factory Ginteracted_usersVars(
          [Function(Ginteracted_usersVarsBuilder b) updates]) =
      _$Ginteracted_usersVars;

  static Serializer<Ginteracted_usersVars> get serializer =>
      _$ginteractedUsersVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Ginteracted_usersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Ginteracted_usersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Ginteracted_usersVars.serializer,
        json,
      );
}

abstract class GcurrenciesVars
    implements Built<GcurrenciesVars, GcurrenciesVarsBuilder> {
  GcurrenciesVars._();

  factory GcurrenciesVars([Function(GcurrenciesVarsBuilder b) updates]) =
      _$GcurrenciesVars;

  static Serializer<GcurrenciesVars> get serializer =>
      _$gcurrenciesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrenciesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrenciesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrenciesVars.serializer,
        json,
      );
}

abstract class GgroupVars implements Built<GgroupVars, GgroupVarsBuilder> {
  GgroupVars._();

  factory GgroupVars([Function(GgroupVarsBuilder b) updates]) = _$GgroupVars;

  String? get fromTime;
  int get limit;
  String get groupId;
  static Serializer<GgroupVars> get serializer => _$ggroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupVars.serializer,
        json,
      );
}

abstract class GsignupVars implements Built<GsignupVars, GsignupVarsBuilder> {
  GsignupVars._();

  factory GsignupVars([Function(GsignupVarsBuilder b) updates]) = _$GsignupVars;

  String get name;
  String? get upi_id;
  static Serializer<GsignupVars> get serializer => _$gsignupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsignupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsignupVars.serializer,
        json,
      );
}

abstract class Gcreate_groupVars
    implements Built<Gcreate_groupVars, Gcreate_groupVarsBuilder> {
  Gcreate_groupVars._();

  factory Gcreate_groupVars([Function(Gcreate_groupVarsBuilder b) updates]) =
      _$Gcreate_groupVars;

  String get name;
  static Serializer<Gcreate_groupVars> get serializer =>
      _$gcreateGroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_groupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_groupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_groupVars.serializer,
        json,
      );
}

abstract class Gadd_to_groupVars
    implements Built<Gadd_to_groupVars, Gadd_to_groupVarsBuilder> {
  Gadd_to_groupVars._();

  factory Gadd_to_groupVars([Function(Gadd_to_groupVarsBuilder b) updates]) =
      _$Gadd_to_groupVars;

  String get email;
  String get groupId;
  static Serializer<Gadd_to_groupVars> get serializer =>
      _$gaddToGroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_to_groupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_to_groupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_to_groupVars.serializer,
        json,
      );
}

abstract class Gadd_expenseVars
    implements Built<Gadd_expenseVars, Gadd_expenseVarsBuilder> {
  Gadd_expenseVars._();

  factory Gadd_expenseVars([Function(Gadd_expenseVarsBuilder b) updates]) =
      _$Gadd_expenseVars;

  String get title;
  int get amount;
  BuiltList<_i2.GSplitInput> get splits;
  String get groupId;
  String get currencyId;
  static Serializer<Gadd_expenseVars> get serializer =>
      _$gaddExpenseVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseVars.serializer,
        json,
      );
}

abstract class Gsend_email_otpVars
    implements Built<Gsend_email_otpVars, Gsend_email_otpVarsBuilder> {
  Gsend_email_otpVars._();

  factory Gsend_email_otpVars(
      [Function(Gsend_email_otpVarsBuilder b) updates]) = _$Gsend_email_otpVars;

  String get email;
  static Serializer<Gsend_email_otpVars> get serializer =>
      _$gsendEmailOtpVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_email_otpVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_email_otpVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_email_otpVars.serializer,
        json,
      );
}

abstract class Gverify_email_otpVars
    implements Built<Gverify_email_otpVars, Gverify_email_otpVarsBuilder> {
  Gverify_email_otpVars._();

  factory Gverify_email_otpVars(
          [Function(Gverify_email_otpVarsBuilder b) updates]) =
      _$Gverify_email_otpVars;

  String get email;
  String get otp;
  static Serializer<Gverify_email_otpVars> get serializer =>
      _$gverifyEmailOtpVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gverify_email_otpVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_email_otpVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gverify_email_otpVars.serializer,
        json,
      );
}

abstract class Grefresh_tokenVars
    implements Built<Grefresh_tokenVars, Grefresh_tokenVarsBuilder> {
  Grefresh_tokenVars._();

  factory Grefresh_tokenVars([Function(Grefresh_tokenVarsBuilder b) updates]) =
      _$Grefresh_tokenVars;

  String get refresh_token;
  static Serializer<Grefresh_tokenVars> get serializer =>
      _$grefreshTokenVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grefresh_tokenVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grefresh_tokenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grefresh_tokenVars.serializer,
        json,
      );
}

abstract class GsearchUserByEmailVars
    implements Built<GsearchUserByEmailVars, GsearchUserByEmailVarsBuilder> {
  GsearchUserByEmailVars._();

  factory GsearchUserByEmailVars(
          [Function(GsearchUserByEmailVarsBuilder b) updates]) =
      _$GsearchUserByEmailVars;

  String get email;
  static Serializer<GsearchUserByEmailVars> get serializer =>
      _$gsearchUserByEmailVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsearchUserByEmailVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsearchUserByEmailVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsearchUserByEmailVars.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseVars
    implements
        Built<GcreateNonGroupExpenseVars, GcreateNonGroupExpenseVarsBuilder> {
  GcreateNonGroupExpenseVars._();

  factory GcreateNonGroupExpenseVars(
          [Function(GcreateNonGroupExpenseVarsBuilder b) updates]) =
      _$GcreateNonGroupExpenseVars;

  String get title;
  int get amount;
  BuiltList<_i2.GSplitInputNonGroup> get nonGroupSplit;
  String get currencyId;
  static Serializer<GcreateNonGroupExpenseVars> get serializer =>
      _$gcreateNonGroupExpenseVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateNonGroupExpenseVars.serializer,
        json,
      );
}

abstract class GsettleInGroupVars
    implements Built<GsettleInGroupVars, GsettleInGroupVarsBuilder> {
  GsettleInGroupVars._();

  factory GsettleInGroupVars([Function(GsettleInGroupVarsBuilder b) updates]) =
      _$GsettleInGroupVars;

  String get withUser;
  String get groupId;
  int get amount;
  String get currencyId;
  static Serializer<GsettleInGroupVars> get serializer =>
      _$gsettleInGroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupVars.serializer,
        json,
      );
}

abstract class GsimplifyUserVars
    implements Built<GsimplifyUserVars, GsimplifyUserVarsBuilder> {
  GsimplifyUserVars._();

  factory GsimplifyUserVars([Function(GsimplifyUserVarsBuilder b) updates]) =
      _$GsimplifyUserVars;

  String get withUser;
  static Serializer<GsimplifyUserVars> get serializer =>
      _$gsimplifyUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserVars.serializer,
        json,
      );
}

abstract class GautoSettleWithUserVars
    implements Built<GautoSettleWithUserVars, GautoSettleWithUserVarsBuilder> {
  GautoSettleWithUserVars._();

  factory GautoSettleWithUserVars(
          [Function(GautoSettleWithUserVarsBuilder b) updates]) =
      _$GautoSettleWithUserVars;

  String get withUser;
  int get amount;
  String get currencyId;
  static Serializer<GautoSettleWithUserVars> get serializer =>
      _$gautoSettleWithUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserVars.serializer,
        json,
      );
}

abstract class GtransactionWithUserVars
    implements
        Built<GtransactionWithUserVars, GtransactionWithUserVarsBuilder> {
  GtransactionWithUserVars._();

  factory GtransactionWithUserVars(
          [Function(GtransactionWithUserVarsBuilder b) updates]) =
      _$GtransactionWithUserVars;

  String get withUser;
  String? get fromTime;
  int get limit;
  static Serializer<GtransactionWithUserVars> get serializer =>
      _$gtransactionWithUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionWithUserVars.serializer,
        json,
      );
}

abstract class GtransactionMixExpenseVars
    implements
        Built<GtransactionMixExpenseVars, GtransactionMixExpenseVarsBuilder> {
  GtransactionMixExpenseVars._();

  factory GtransactionMixExpenseVars(
          [Function(GtransactionMixExpenseVarsBuilder b) updates]) =
      _$GtransactionMixExpenseVars;

  String get groupId;
  String? get fromTime;
  int get limit;
  static Serializer<GtransactionMixExpenseVars> get serializer =>
      _$gtransactionMixExpenseVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionMixExpenseVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionMixExpenseVars.serializer,
        json,
      );
}

abstract class GsetDefaultCurrencyVars
    implements Built<GsetDefaultCurrencyVars, GsetDefaultCurrencyVarsBuilder> {
  GsetDefaultCurrencyVars._();

  factory GsetDefaultCurrencyVars(
          [Function(GsetDefaultCurrencyVarsBuilder b) updates]) =
      _$GsetDefaultCurrencyVars;

  String get currencyId;
  static Serializer<GsetDefaultCurrencyVars> get serializer =>
      _$gsetDefaultCurrencyVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetDefaultCurrencyVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetDefaultCurrencyVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetDefaultCurrencyVars.serializer,
        json,
      );
}

abstract class GcurrencyConvertVars
    implements Built<GcurrencyConvertVars, GcurrencyConvertVarsBuilder> {
  GcurrencyConvertVars._();

  factory GcurrencyConvertVars(
          [Function(GcurrencyConvertVarsBuilder b) updates]) =
      _$GcurrencyConvertVars;

  String get withUser;
  String get groupId;
  String get fromCurrencyId;
  String get toCurrencyId;
  static Serializer<GcurrencyConvertVars> get serializer =>
      _$gcurrencyConvertVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertVars.serializer,
        json,
      );
}

abstract class GchangeNameVars
    implements Built<GchangeNameVars, GchangeNameVarsBuilder> {
  GchangeNameVars._();

  factory GchangeNameVars([Function(GchangeNameVarsBuilder b) updates]) =
      _$GchangeNameVars;

  String get name;
  static Serializer<GchangeNameVars> get serializer =>
      _$gchangeNameVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GchangeNameVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchangeNameVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GchangeNameVars.serializer,
        json,
      );
}

abstract class GgetTransactionsVars
    implements Built<GgetTransactionsVars, GgetTransactionsVarsBuilder> {
  GgetTransactionsVars._();

  factory GgetTransactionsVars(
          [Function(GgetTransactionsVarsBuilder b) updates]) =
      _$GgetTransactionsVars;

  String? get fromTime;
  int get limit;
  static Serializer<GgetTransactionsVars> get serializer =>
      _$ggetTransactionsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionsVars.serializer,
        json,
      );
}

abstract class GsetNotificationTokenVars
    implements
        Built<GsetNotificationTokenVars, GsetNotificationTokenVarsBuilder> {
  GsetNotificationTokenVars._();

  factory GsetNotificationTokenVars(
          [Function(GsetNotificationTokenVarsBuilder b) updates]) =
      _$GsetNotificationTokenVars;

  String get token;
  static Serializer<GsetNotificationTokenVars> get serializer =>
      _$gsetNotificationTokenVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetNotificationTokenVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetNotificationTokenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetNotificationTokenVars.serializer,
        json,
      );
}

abstract class GUserFieldsVars
    implements Built<GUserFieldsVars, GUserFieldsVarsBuilder> {
  GUserFieldsVars._();

  factory GUserFieldsVars([Function(GUserFieldsVarsBuilder b) updates]) =
      _$GUserFieldsVars;

  static Serializer<GUserFieldsVars> get serializer =>
      _$gUserFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFieldsVars.serializer,
        json,
      );
}

abstract class GAmountFieldsVars
    implements Built<GAmountFieldsVars, GAmountFieldsVarsBuilder> {
  GAmountFieldsVars._();

  factory GAmountFieldsVars([Function(GAmountFieldsVarsBuilder b) updates]) =
      _$GAmountFieldsVars;

  static Serializer<GAmountFieldsVars> get serializer =>
      _$gAmountFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAmountFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAmountFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAmountFieldsVars.serializer,
        json,
      );
}

abstract class GCurrencyFieldsVars
    implements Built<GCurrencyFieldsVars, GCurrencyFieldsVarsBuilder> {
  GCurrencyFieldsVars._();

  factory GCurrencyFieldsVars(
      [Function(GCurrencyFieldsVarsBuilder b) updates]) = _$GCurrencyFieldsVars;

  static Serializer<GCurrencyFieldsVars> get serializer =>
      _$gCurrencyFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCurrencyFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCurrencyFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCurrencyFieldsVars.serializer,
        json,
      );
}

abstract class GUserPaysFieldsVars
    implements Built<GUserPaysFieldsVars, GUserPaysFieldsVarsBuilder> {
  GUserPaysFieldsVars._();

  factory GUserPaysFieldsVars(
      [Function(GUserPaysFieldsVarsBuilder b) updates]) = _$GUserPaysFieldsVars;

  static Serializer<GUserPaysFieldsVars> get serializer =>
      _$gUserPaysFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserPaysFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserPaysFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserPaysFieldsVars.serializer,
        json,
      );
}

abstract class GGroupBasicVars
    implements Built<GGroupBasicVars, GGroupBasicVarsBuilder> {
  GGroupBasicVars._();

  factory GGroupBasicVars([Function(GGroupBasicVarsBuilder b) updates]) =
      _$GGroupBasicVars;

  static Serializer<GGroupBasicVars> get serializer =>
      _$gGroupBasicVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupBasicVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupBasicVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupBasicVars.serializer,
        json,
      );
}

abstract class GGroupFieldsVars
    implements Built<GGroupFieldsVars, GGroupFieldsVarsBuilder> {
  GGroupFieldsVars._();

  factory GGroupFieldsVars([Function(GGroupFieldsVarsBuilder b) updates]) =
      _$GGroupFieldsVars;

  static Serializer<GGroupFieldsVars> get serializer =>
      _$gGroupFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupFieldsVars.serializer,
        json,
      );
}

abstract class GExpenseBasicVars
    implements Built<GExpenseBasicVars, GExpenseBasicVarsBuilder> {
  GExpenseBasicVars._();

  factory GExpenseBasicVars([Function(GExpenseBasicVarsBuilder b) updates]) =
      _$GExpenseBasicVars;

  static Serializer<GExpenseBasicVars> get serializer =>
      _$gExpenseBasicVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseBasicVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseBasicVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseBasicVars.serializer,
        json,
      );
}

abstract class GExpenseFieldsVars
    implements Built<GExpenseFieldsVars, GExpenseFieldsVarsBuilder> {
  GExpenseFieldsVars._();

  factory GExpenseFieldsVars([Function(GExpenseFieldsVarsBuilder b) updates]) =
      _$GExpenseFieldsVars;

  static Serializer<GExpenseFieldsVars> get serializer =>
      _$gExpenseFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseFieldsVars.serializer,
        json,
      );
}

abstract class GNewExpenseFieldsVars
    implements Built<GNewExpenseFieldsVars, GNewExpenseFieldsVarsBuilder> {
  GNewExpenseFieldsVars._();

  factory GNewExpenseFieldsVars(
          [Function(GNewExpenseFieldsVarsBuilder b) updates]) =
      _$GNewExpenseFieldsVars;

  static Serializer<GNewExpenseFieldsVars> get serializer =>
      _$gNewExpenseFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsVars.serializer,
        json,
      );
}

abstract class GConfigFieldsVars
    implements Built<GConfigFieldsVars, GConfigFieldsVarsBuilder> {
  GConfigFieldsVars._();

  factory GConfigFieldsVars([Function(GConfigFieldsVarsBuilder b) updates]) =
      _$GConfigFieldsVars;

  static Serializer<GConfigFieldsVars> get serializer =>
      _$gConfigFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GConfigFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GConfigFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GConfigFieldsVars.serializer,
        json,
      );
}

abstract class GSplitFieldsBasicsVars
    implements Built<GSplitFieldsBasicsVars, GSplitFieldsBasicsVarsBuilder> {
  GSplitFieldsBasicsVars._();

  factory GSplitFieldsBasicsVars(
          [Function(GSplitFieldsBasicsVarsBuilder b) updates]) =
      _$GSplitFieldsBasicsVars;

  static Serializer<GSplitFieldsBasicsVars> get serializer =>
      _$gSplitFieldsBasicsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitFieldsBasicsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsBasicsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitFieldsBasicsVars.serializer,
        json,
      );
}

abstract class GSplitFieldsVars
    implements Built<GSplitFieldsVars, GSplitFieldsVarsBuilder> {
  GSplitFieldsVars._();

  factory GSplitFieldsVars([Function(GSplitFieldsVarsBuilder b) updates]) =
      _$GSplitFieldsVars;

  static Serializer<GSplitFieldsVars> get serializer =>
      _$gSplitFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitFieldsVars.serializer,
        json,
      );
}

abstract class GSplitTransactionFieldsVars
    implements
        Built<GSplitTransactionFieldsVars, GSplitTransactionFieldsVarsBuilder> {
  GSplitTransactionFieldsVars._();

  factory GSplitTransactionFieldsVars(
          [Function(GSplitTransactionFieldsVarsBuilder b) updates]) =
      _$GSplitTransactionFieldsVars;

  static Serializer<GSplitTransactionFieldsVars> get serializer =>
      _$gSplitTransactionFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitTransactionFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitTransactionFieldsVars.serializer,
        json,
      );
}

abstract class GGroupWithExpensesVars
    implements Built<GGroupWithExpensesVars, GGroupWithExpensesVarsBuilder> {
  GGroupWithExpensesVars._();

  factory GGroupWithExpensesVars(
          [Function(GGroupWithExpensesVarsBuilder b) updates]) =
      _$GGroupWithExpensesVars;

  String? get fromTime;
  int get limit;
  static Serializer<GGroupWithExpensesVars> get serializer =>
      _$gGroupWithExpensesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesVars.serializer,
        json,
      );
}

abstract class GExpenseMixSplitFieldsVars
    implements
        Built<GExpenseMixSplitFieldsVars, GExpenseMixSplitFieldsVarsBuilder> {
  GExpenseMixSplitFieldsVars._();

  factory GExpenseMixSplitFieldsVars(
          [Function(GExpenseMixSplitFieldsVarsBuilder b) updates]) =
      _$GExpenseMixSplitFieldsVars;

  static Serializer<GExpenseMixSplitFieldsVars> get serializer =>
      _$gExpenseMixSplitFieldsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseMixSplitFieldsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseMixSplitFieldsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseMixSplitFieldsVars.serializer,
        json,
      );
}
