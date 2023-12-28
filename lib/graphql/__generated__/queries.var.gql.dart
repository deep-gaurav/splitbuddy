// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:splitbuddy/__generated__/schema.schema.gql.dart' as _i2;
import 'package:splitbuddy/__generated__/serializers.gql.dart' as _i1;

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

abstract class GgroupVars implements Built<GgroupVars, GgroupVarsBuilder> {
  GgroupVars._();

  factory GgroupVars([Function(GgroupVarsBuilder b) updates]) = _$GgroupVars;

  int get skip;
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

  String get phone;
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

abstract class Gsettle_userVars
    implements Built<Gsettle_userVars, Gsettle_userVarsBuilder> {
  Gsettle_userVars._();

  factory Gsettle_userVars([Function(Gsettle_userVarsBuilder b) updates]) =
      _$Gsettle_userVars;

  int get amount;
  String get userId;
  static Serializer<Gsettle_userVars> get serializer =>
      _$gsettleUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsettle_userVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_userVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsettle_userVars.serializer,
        json,
      );
}

abstract class Gsettle_expenseVars
    implements Built<Gsettle_expenseVars, Gsettle_expenseVarsBuilder> {
  Gsettle_expenseVars._();

  factory Gsettle_expenseVars(
      [Function(Gsettle_expenseVarsBuilder b) updates]) = _$Gsettle_expenseVars;

  int get amount;
  String get expenseId;
  static Serializer<Gsettle_expenseVars> get serializer =>
      _$gsettleExpenseVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsettle_expenseVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_expenseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsettle_expenseVars.serializer,
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

abstract class GGroupWithExpensesVars
    implements Built<GGroupWithExpensesVars, GGroupWithExpensesVarsBuilder> {
  GGroupWithExpensesVars._();

  factory GGroupWithExpensesVars(
          [Function(GGroupWithExpensesVarsBuilder b) updates]) =
      _$GGroupWithExpensesVars;

  int get skip;
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
