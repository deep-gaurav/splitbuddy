// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i2;
import 'package:splitbuddy/__generated__/serializers.gql.dart' as _i1;

part 'queries.data.gql.g.dart';

abstract class GuserData implements Built<GuserData, GuserDataBuilder> {
  GuserData._();

  factory GuserData([Function(GuserDataBuilder b) updates]) = _$GuserData;

  static void _initializeBuilder(GuserDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GuserData_user get user;
  static Serializer<GuserData> get serializer => _$guserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserData.serializer,
        json,
      );
}

abstract class GuserData_user {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GuserData_user> get serializer =>
      _i2.InlineFragmentSerializer<GuserData_user>(
        'GuserData_user',
        GuserData_user__base,
        {
          'Registered': GuserData_user__asRegistered,
          'Unregistered': GuserData_user__asUnregistered,
        },
      );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserData_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserData_user.serializer,
        json,
      );
}

abstract class GuserData_user__base
    implements
        Built<GuserData_user__base, GuserData_user__baseBuilder>,
        GuserData_user {
  GuserData_user__base._();

  factory GuserData_user__base(
          [Function(GuserData_user__baseBuilder b) updates]) =
      _$GuserData_user__base;

  static void _initializeBuilder(GuserData_user__baseBuilder b) =>
      b..G__typename = 'UserAuth';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GuserData_user__base> get serializer =>
      _$guserDataUserBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserData_user__base.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserData_user__base? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserData_user__base.serializer,
        json,
      );
}

abstract class GuserData_user__asRegistered
    implements
        Built<GuserData_user__asRegistered,
            GuserData_user__asRegisteredBuilder>,
        GuserData_user {
  GuserData_user__asRegistered._();

  factory GuserData_user__asRegistered(
          [Function(GuserData_user__asRegisteredBuilder b) updates]) =
      _$GuserData_user__asRegistered;

  static void _initializeBuilder(GuserData_user__asRegisteredBuilder b) =>
      b..G__typename = 'Registered';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GuserData_user__asRegistered_user get user;
  static Serializer<GuserData_user__asRegistered> get serializer =>
      _$guserDataUserAsRegisteredSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserData_user__asRegistered.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserData_user__asRegistered? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserData_user__asRegistered.serializer,
        json,
      );
}

abstract class GuserData_user__asRegistered_user
    implements
        Built<GuserData_user__asRegistered_user,
            GuserData_user__asRegistered_userBuilder>,
        GUserFields {
  GuserData_user__asRegistered_user._();

  factory GuserData_user__asRegistered_user(
          [Function(GuserData_user__asRegistered_userBuilder b) updates]) =
      _$GuserData_user__asRegistered_user;

  static void _initializeBuilder(GuserData_user__asRegistered_userBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GuserData_user__asRegistered_user> get serializer =>
      _$guserDataUserAsRegisteredUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserData_user__asRegistered_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserData_user__asRegistered_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserData_user__asRegistered_user.serializer,
        json,
      );
}

abstract class GuserData_user__asUnregistered
    implements
        Built<GuserData_user__asUnregistered,
            GuserData_user__asUnregisteredBuilder>,
        GuserData_user {
  GuserData_user__asUnregistered._();

  factory GuserData_user__asUnregistered(
          [Function(GuserData_user__asUnregisteredBuilder b) updates]) =
      _$GuserData_user__asUnregistered;

  static void _initializeBuilder(GuserData_user__asUnregisteredBuilder b) =>
      b..G__typename = 'Unregistered';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get phone;
  static Serializer<GuserData_user__asUnregistered> get serializer =>
      _$guserDataUserAsUnregisteredSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserData_user__asUnregistered.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserData_user__asUnregistered? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserData_user__asUnregistered.serializer,
        json,
      );
}

abstract class GgroupsData implements Built<GgroupsData, GgroupsDataBuilder> {
  GgroupsData._();

  factory GgroupsData([Function(GgroupsDataBuilder b) updates]) = _$GgroupsData;

  static void _initializeBuilder(GgroupsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgroupsData_groups> get groups;
  static Serializer<GgroupsData> get serializer => _$ggroupsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupsData.serializer,
        json,
      );
}

abstract class GgroupsData_groups
    implements
        Built<GgroupsData_groups, GgroupsData_groupsBuilder>,
        GGroupFields {
  GgroupsData_groups._();

  factory GgroupsData_groups([Function(GgroupsData_groupsBuilder b) updates]) =
      _$GgroupsData_groups;

  static void _initializeBuilder(GgroupsData_groupsBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  GgroupsData_groups_creator get creator;
  @override
  BuiltList<GgroupsData_groups_members> get members;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  String get createdAt;
  static Serializer<GgroupsData_groups> get serializer =>
      _$ggroupsDataGroupsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupsData_groups.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupsData_groups? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupsData_groups.serializer,
        json,
      );
}

abstract class GgroupsData_groups_creator
    implements
        Built<GgroupsData_groups_creator, GgroupsData_groups_creatorBuilder>,
        GGroupFields_creator,
        GUserFields {
  GgroupsData_groups_creator._();

  factory GgroupsData_groups_creator(
          [Function(GgroupsData_groups_creatorBuilder b) updates]) =
      _$GgroupsData_groups_creator;

  static void _initializeBuilder(GgroupsData_groups_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GgroupsData_groups_creator> get serializer =>
      _$ggroupsDataGroupsCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupsData_groups_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupsData_groups_creator? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupsData_groups_creator.serializer,
        json,
      );
}

abstract class GgroupsData_groups_members
    implements
        Built<GgroupsData_groups_members, GgroupsData_groups_membersBuilder>,
        GGroupFields_members,
        GUserFields {
  GgroupsData_groups_members._();

  factory GgroupsData_groups_members(
          [Function(GgroupsData_groups_membersBuilder b) updates]) =
      _$GgroupsData_groups_members;

  static void _initializeBuilder(GgroupsData_groups_membersBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GgroupsData_groups_members> get serializer =>
      _$ggroupsDataGroupsMembersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupsData_groups_members.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupsData_groups_members? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupsData_groups_members.serializer,
        json,
      );
}

abstract class Ginteracted_usersData
    implements Built<Ginteracted_usersData, Ginteracted_usersDataBuilder> {
  Ginteracted_usersData._();

  factory Ginteracted_usersData(
          [Function(Ginteracted_usersDataBuilder b) updates]) =
      _$Ginteracted_usersData;

  static void _initializeBuilder(Ginteracted_usersDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Ginteracted_usersData_interactedUsers> get interactedUsers;
  static Serializer<Ginteracted_usersData> get serializer =>
      _$ginteractedUsersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Ginteracted_usersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Ginteracted_usersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Ginteracted_usersData.serializer,
        json,
      );
}

abstract class Ginteracted_usersData_interactedUsers
    implements
        Built<Ginteracted_usersData_interactedUsers,
            Ginteracted_usersData_interactedUsersBuilder>,
        GUserFields,
        GUserPaysFields {
  Ginteracted_usersData_interactedUsers._();

  factory Ginteracted_usersData_interactedUsers(
          [Function(Ginteracted_usersData_interactedUsersBuilder b) updates]) =
      _$Ginteracted_usersData_interactedUsers;

  static void _initializeBuilder(
          Ginteracted_usersData_interactedUsersBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  BuiltList<String> get upiIds;
  @override
  int get toPay;
  @override
  int get toReceive;
  static Serializer<Ginteracted_usersData_interactedUsers> get serializer =>
      _$ginteractedUsersDataInteractedUsersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Ginteracted_usersData_interactedUsers.serializer,
        this,
      ) as Map<String, dynamic>);

  static Ginteracted_usersData_interactedUsers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Ginteracted_usersData_interactedUsers.serializer,
        json,
      );
}

abstract class GgroupData implements Built<GgroupData, GgroupDataBuilder> {
  GgroupData._();

  factory GgroupData([Function(GgroupDataBuilder b) updates]) = _$GgroupData;

  static void _initializeBuilder(GgroupDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgroupData_group get group;
  static Serializer<GgroupData> get serializer => _$ggroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData.serializer,
        json,
      );
}

abstract class GgroupData_group
    implements
        Built<GgroupData_group, GgroupData_groupBuilder>,
        GGroupWithExpenses {
  GgroupData_group._();

  factory GgroupData_group([Function(GgroupData_groupBuilder b) updates]) =
      _$GgroupData_group;

  static void _initializeBuilder(GgroupData_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GgroupData_group_expenses> get expenses;
  @override
  String get id;
  @override
  String get name;
  @override
  GgroupData_group_creator get creator;
  @override
  BuiltList<GgroupData_group_members> get members;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  String get createdAt;
  static Serializer<GgroupData_group> get serializer =>
      _$ggroupDataGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group.serializer,
        json,
      );
}

abstract class GgroupData_group_expenses
    implements
        Built<GgroupData_group_expenses, GgroupData_group_expensesBuilder>,
        GGroupWithExpenses_expenses,
        GExpenseFields {
  GgroupData_group_expenses._();

  factory GgroupData_group_expenses(
          [Function(GgroupData_group_expensesBuilder b) updates]) =
      _$GgroupData_group_expenses;

  static void _initializeBuilder(GgroupData_group_expensesBuilder b) =>
      b..G__typename = 'Expense';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  GgroupData_group_expenses_creator get creator;
  @override
  int get amount;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  BuiltList<GgroupData_group_expenses_splits> get splits;
  static Serializer<GgroupData_group_expenses> get serializer =>
      _$ggroupDataGroupExpensesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_expenses.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_expenses? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_expenses.serializer,
        json,
      );
}

abstract class GgroupData_group_expenses_creator
    implements
        Built<GgroupData_group_expenses_creator,
            GgroupData_group_expenses_creatorBuilder>,
        GGroupWithExpenses_expenses_creator,
        GExpenseFields_creator,
        GUserFields {
  GgroupData_group_expenses_creator._();

  factory GgroupData_group_expenses_creator(
          [Function(GgroupData_group_expenses_creatorBuilder b) updates]) =
      _$GgroupData_group_expenses_creator;

  static void _initializeBuilder(GgroupData_group_expenses_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GgroupData_group_expenses_creator> get serializer =>
      _$ggroupDataGroupExpensesCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_expenses_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_expenses_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_expenses_creator.serializer,
        json,
      );
}

abstract class GgroupData_group_expenses_splits
    implements
        Built<GgroupData_group_expenses_splits,
            GgroupData_group_expenses_splitsBuilder>,
        GGroupWithExpenses_expenses_splits,
        GExpenseFields_splits,
        GSplitFields {
  GgroupData_group_expenses_splits._();

  factory GgroupData_group_expenses_splits(
          [Function(GgroupData_group_expenses_splitsBuilder b) updates]) =
      _$GgroupData_group_expenses_splits;

  static void _initializeBuilder(GgroupData_group_expenses_splitsBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  int get amountSettled;
  @override
  GgroupData_group_expenses_splits_fromUser get fromUser;
  @override
  GgroupData_group_expenses_splits_toUser get toUser;
  @override
  bool get isSettled;
  static Serializer<GgroupData_group_expenses_splits> get serializer =>
      _$ggroupDataGroupExpensesSplitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_expenses_splits.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_expenses_splits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_expenses_splits.serializer,
        json,
      );
}

abstract class GgroupData_group_expenses_splits_fromUser
    implements
        Built<GgroupData_group_expenses_splits_fromUser,
            GgroupData_group_expenses_splits_fromUserBuilder>,
        GGroupWithExpenses_expenses_splits_fromUser,
        GExpenseFields_splits_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  GgroupData_group_expenses_splits_fromUser._();

  factory GgroupData_group_expenses_splits_fromUser(
      [Function(GgroupData_group_expenses_splits_fromUserBuilder b)
          updates]) = _$GgroupData_group_expenses_splits_fromUser;

  static void _initializeBuilder(
          GgroupData_group_expenses_splits_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GgroupData_group_expenses_splits_fromUser> get serializer =>
      _$ggroupDataGroupExpensesSplitsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_expenses_splits_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_expenses_splits_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_expenses_splits_fromUser.serializer,
        json,
      );
}

abstract class GgroupData_group_expenses_splits_toUser
    implements
        Built<GgroupData_group_expenses_splits_toUser,
            GgroupData_group_expenses_splits_toUserBuilder>,
        GGroupWithExpenses_expenses_splits_toUser,
        GExpenseFields_splits_toUser,
        GSplitFields_toUser,
        GUserFields {
  GgroupData_group_expenses_splits_toUser._();

  factory GgroupData_group_expenses_splits_toUser(
      [Function(GgroupData_group_expenses_splits_toUserBuilder b)
          updates]) = _$GgroupData_group_expenses_splits_toUser;

  static void _initializeBuilder(
          GgroupData_group_expenses_splits_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GgroupData_group_expenses_splits_toUser> get serializer =>
      _$ggroupDataGroupExpensesSplitsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_expenses_splits_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_expenses_splits_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_expenses_splits_toUser.serializer,
        json,
      );
}

abstract class GgroupData_group_creator
    implements
        Built<GgroupData_group_creator, GgroupData_group_creatorBuilder>,
        GGroupWithExpenses_creator,
        GUserFields {
  GgroupData_group_creator._();

  factory GgroupData_group_creator(
          [Function(GgroupData_group_creatorBuilder b) updates]) =
      _$GgroupData_group_creator;

  static void _initializeBuilder(GgroupData_group_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GgroupData_group_creator> get serializer =>
      _$ggroupDataGroupCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_creator? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_creator.serializer,
        json,
      );
}

abstract class GgroupData_group_members
    implements
        Built<GgroupData_group_members, GgroupData_group_membersBuilder>,
        GGroupWithExpenses_members,
        GUserFields {
  GgroupData_group_members._();

  factory GgroupData_group_members(
          [Function(GgroupData_group_membersBuilder b) updates]) =
      _$GgroupData_group_members;

  static void _initializeBuilder(GgroupData_group_membersBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GgroupData_group_members> get serializer =>
      _$ggroupDataGroupMembersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_members.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_members? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_members.serializer,
        json,
      );
}

abstract class GsignupData implements Built<GsignupData, GsignupDataBuilder> {
  GsignupData._();

  factory GsignupData([Function(GsignupDataBuilder b) updates]) = _$GsignupData;

  static void _initializeBuilder(GsignupDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsignupData_signup get signup;
  static Serializer<GsignupData> get serializer => _$gsignupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsignupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsignupData.serializer,
        json,
      );
}

abstract class GsignupData_signup
    implements Built<GsignupData_signup, GsignupData_signupBuilder> {
  GsignupData_signup._();

  factory GsignupData_signup([Function(GsignupData_signupBuilder b) updates]) =
      _$GsignupData_signup;

  static void _initializeBuilder(GsignupData_signupBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GsignupData_signup> get serializer =>
      _$gsignupDataSignupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsignupData_signup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignupData_signup? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsignupData_signup.serializer,
        json,
      );
}

abstract class Gcreate_groupData
    implements Built<Gcreate_groupData, Gcreate_groupDataBuilder> {
  Gcreate_groupData._();

  factory Gcreate_groupData([Function(Gcreate_groupDataBuilder b) updates]) =
      _$Gcreate_groupData;

  static void _initializeBuilder(Gcreate_groupDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_groupData_createGroup get createGroup;
  static Serializer<Gcreate_groupData> get serializer =>
      _$gcreateGroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_groupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_groupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_groupData.serializer,
        json,
      );
}

abstract class Gcreate_groupData_createGroup
    implements
        Built<Gcreate_groupData_createGroup,
            Gcreate_groupData_createGroupBuilder>,
        GGroupFields {
  Gcreate_groupData_createGroup._();

  factory Gcreate_groupData_createGroup(
          [Function(Gcreate_groupData_createGroupBuilder b) updates]) =
      _$Gcreate_groupData_createGroup;

  static void _initializeBuilder(Gcreate_groupData_createGroupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Gcreate_groupData_createGroup_creator get creator;
  @override
  BuiltList<Gcreate_groupData_createGroup_members> get members;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  String get createdAt;
  static Serializer<Gcreate_groupData_createGroup> get serializer =>
      _$gcreateGroupDataCreateGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_groupData_createGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_groupData_createGroup? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_groupData_createGroup.serializer,
        json,
      );
}

abstract class Gcreate_groupData_createGroup_creator
    implements
        Built<Gcreate_groupData_createGroup_creator,
            Gcreate_groupData_createGroup_creatorBuilder>,
        GGroupFields_creator,
        GUserFields {
  Gcreate_groupData_createGroup_creator._();

  factory Gcreate_groupData_createGroup_creator(
          [Function(Gcreate_groupData_createGroup_creatorBuilder b) updates]) =
      _$Gcreate_groupData_createGroup_creator;

  static void _initializeBuilder(
          Gcreate_groupData_createGroup_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<Gcreate_groupData_createGroup_creator> get serializer =>
      _$gcreateGroupDataCreateGroupCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_groupData_createGroup_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_groupData_createGroup_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_groupData_createGroup_creator.serializer,
        json,
      );
}

abstract class Gcreate_groupData_createGroup_members
    implements
        Built<Gcreate_groupData_createGroup_members,
            Gcreate_groupData_createGroup_membersBuilder>,
        GGroupFields_members,
        GUserFields {
  Gcreate_groupData_createGroup_members._();

  factory Gcreate_groupData_createGroup_members(
          [Function(Gcreate_groupData_createGroup_membersBuilder b) updates]) =
      _$Gcreate_groupData_createGroup_members;

  static void _initializeBuilder(
          Gcreate_groupData_createGroup_membersBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<Gcreate_groupData_createGroup_members> get serializer =>
      _$gcreateGroupDataCreateGroupMembersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_groupData_createGroup_members.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_groupData_createGroup_members? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_groupData_createGroup_members.serializer,
        json,
      );
}

abstract class Gadd_to_groupData
    implements Built<Gadd_to_groupData, Gadd_to_groupDataBuilder> {
  Gadd_to_groupData._();

  factory Gadd_to_groupData([Function(Gadd_to_groupDataBuilder b) updates]) =
      _$Gadd_to_groupData;

  static void _initializeBuilder(Gadd_to_groupDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get addToGroup;
  static Serializer<Gadd_to_groupData> get serializer =>
      _$gaddToGroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_to_groupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_to_groupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_to_groupData.serializer,
        json,
      );
}

abstract class Gadd_expenseData
    implements Built<Gadd_expenseData, Gadd_expenseDataBuilder> {
  Gadd_expenseData._();

  factory Gadd_expenseData([Function(Gadd_expenseDataBuilder b) updates]) =
      _$Gadd_expenseData;

  static void _initializeBuilder(Gadd_expenseDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_expenseData_addExpense get addExpense;
  static Serializer<Gadd_expenseData> get serializer =>
      _$gaddExpenseDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData.serializer,
        json,
      );
}

abstract class Gadd_expenseData_addExpense
    implements
        Built<Gadd_expenseData_addExpense, Gadd_expenseData_addExpenseBuilder>,
        GExpenseFields {
  Gadd_expenseData_addExpense._();

  factory Gadd_expenseData_addExpense(
          [Function(Gadd_expenseData_addExpenseBuilder b) updates]) =
      _$Gadd_expenseData_addExpense;

  static void _initializeBuilder(Gadd_expenseData_addExpenseBuilder b) =>
      b..G__typename = 'Expense';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  Gadd_expenseData_addExpense_creator get creator;
  @override
  int get amount;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  BuiltList<Gadd_expenseData_addExpense_splits> get splits;
  static Serializer<Gadd_expenseData_addExpense> get serializer =>
      _$gaddExpenseDataAddExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense.serializer,
        json,
      );
}

abstract class Gadd_expenseData_addExpense_creator
    implements
        Built<Gadd_expenseData_addExpense_creator,
            Gadd_expenseData_addExpense_creatorBuilder>,
        GExpenseFields_creator,
        GUserFields {
  Gadd_expenseData_addExpense_creator._();

  factory Gadd_expenseData_addExpense_creator(
          [Function(Gadd_expenseData_addExpense_creatorBuilder b) updates]) =
      _$Gadd_expenseData_addExpense_creator;

  static void _initializeBuilder(
          Gadd_expenseData_addExpense_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<Gadd_expenseData_addExpense_creator> get serializer =>
      _$gaddExpenseDataAddExpenseCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_creator.serializer,
        json,
      );
}

abstract class Gadd_expenseData_addExpense_splits
    implements
        Built<Gadd_expenseData_addExpense_splits,
            Gadd_expenseData_addExpense_splitsBuilder>,
        GExpenseFields_splits,
        GSplitFields {
  Gadd_expenseData_addExpense_splits._();

  factory Gadd_expenseData_addExpense_splits(
          [Function(Gadd_expenseData_addExpense_splitsBuilder b) updates]) =
      _$Gadd_expenseData_addExpense_splits;

  static void _initializeBuilder(Gadd_expenseData_addExpense_splitsBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  int get amountSettled;
  @override
  Gadd_expenseData_addExpense_splits_fromUser get fromUser;
  @override
  Gadd_expenseData_addExpense_splits_toUser get toUser;
  @override
  bool get isSettled;
  static Serializer<Gadd_expenseData_addExpense_splits> get serializer =>
      _$gaddExpenseDataAddExpenseSplitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_splits.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_splits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_splits.serializer,
        json,
      );
}

abstract class Gadd_expenseData_addExpense_splits_fromUser
    implements
        Built<Gadd_expenseData_addExpense_splits_fromUser,
            Gadd_expenseData_addExpense_splits_fromUserBuilder>,
        GExpenseFields_splits_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  Gadd_expenseData_addExpense_splits_fromUser._();

  factory Gadd_expenseData_addExpense_splits_fromUser(
      [Function(Gadd_expenseData_addExpense_splits_fromUserBuilder b)
          updates]) = _$Gadd_expenseData_addExpense_splits_fromUser;

  static void _initializeBuilder(
          Gadd_expenseData_addExpense_splits_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<Gadd_expenseData_addExpense_splits_fromUser>
      get serializer => _$gaddExpenseDataAddExpenseSplitsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_splits_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_splits_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_splits_fromUser.serializer,
        json,
      );
}

abstract class Gadd_expenseData_addExpense_splits_toUser
    implements
        Built<Gadd_expenseData_addExpense_splits_toUser,
            Gadd_expenseData_addExpense_splits_toUserBuilder>,
        GExpenseFields_splits_toUser,
        GSplitFields_toUser,
        GUserFields {
  Gadd_expenseData_addExpense_splits_toUser._();

  factory Gadd_expenseData_addExpense_splits_toUser(
      [Function(Gadd_expenseData_addExpense_splits_toUserBuilder b)
          updates]) = _$Gadd_expenseData_addExpense_splits_toUser;

  static void _initializeBuilder(
          Gadd_expenseData_addExpense_splits_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<Gadd_expenseData_addExpense_splits_toUser> get serializer =>
      _$gaddExpenseDataAddExpenseSplitsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_splits_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_splits_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_splits_toUser.serializer,
        json,
      );
}

abstract class Gsettle_userData
    implements Built<Gsettle_userData, Gsettle_userDataBuilder> {
  Gsettle_userData._();

  factory Gsettle_userData([Function(Gsettle_userDataBuilder b) updates]) =
      _$Gsettle_userData;

  static void _initializeBuilder(Gsettle_userDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get settleUser;
  static Serializer<Gsettle_userData> get serializer =>
      _$gsettleUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsettle_userData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_userData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsettle_userData.serializer,
        json,
      );
}

abstract class Gsettle_expenseData
    implements Built<Gsettle_expenseData, Gsettle_expenseDataBuilder> {
  Gsettle_expenseData._();

  factory Gsettle_expenseData(
      [Function(Gsettle_expenseDataBuilder b) updates]) = _$Gsettle_expenseData;

  static void _initializeBuilder(Gsettle_expenseDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gsettle_expenseData_settleExpense get settleExpense;
  static Serializer<Gsettle_expenseData> get serializer =>
      _$gsettleExpenseDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsettle_expenseData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_expenseData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsettle_expenseData.serializer,
        json,
      );
}

abstract class Gsettle_expenseData_settleExpense
    implements
        Built<Gsettle_expenseData_settleExpense,
            Gsettle_expenseData_settleExpenseBuilder>,
        GExpenseFields {
  Gsettle_expenseData_settleExpense._();

  factory Gsettle_expenseData_settleExpense(
          [Function(Gsettle_expenseData_settleExpenseBuilder b) updates]) =
      _$Gsettle_expenseData_settleExpense;

  static void _initializeBuilder(Gsettle_expenseData_settleExpenseBuilder b) =>
      b..G__typename = 'Expense';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  Gsettle_expenseData_settleExpense_creator get creator;
  @override
  int get amount;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  BuiltList<Gsettle_expenseData_settleExpense_splits> get splits;
  static Serializer<Gsettle_expenseData_settleExpense> get serializer =>
      _$gsettleExpenseDataSettleExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsettle_expenseData_settleExpense.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_expenseData_settleExpense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsettle_expenseData_settleExpense.serializer,
        json,
      );
}

abstract class Gsettle_expenseData_settleExpense_creator
    implements
        Built<Gsettle_expenseData_settleExpense_creator,
            Gsettle_expenseData_settleExpense_creatorBuilder>,
        GExpenseFields_creator,
        GUserFields {
  Gsettle_expenseData_settleExpense_creator._();

  factory Gsettle_expenseData_settleExpense_creator(
      [Function(Gsettle_expenseData_settleExpense_creatorBuilder b)
          updates]) = _$Gsettle_expenseData_settleExpense_creator;

  static void _initializeBuilder(
          Gsettle_expenseData_settleExpense_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<Gsettle_expenseData_settleExpense_creator> get serializer =>
      _$gsettleExpenseDataSettleExpenseCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsettle_expenseData_settleExpense_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_expenseData_settleExpense_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsettle_expenseData_settleExpense_creator.serializer,
        json,
      );
}

abstract class Gsettle_expenseData_settleExpense_splits
    implements
        Built<Gsettle_expenseData_settleExpense_splits,
            Gsettle_expenseData_settleExpense_splitsBuilder>,
        GExpenseFields_splits,
        GSplitFields {
  Gsettle_expenseData_settleExpense_splits._();

  factory Gsettle_expenseData_settleExpense_splits(
      [Function(Gsettle_expenseData_settleExpense_splitsBuilder b)
          updates]) = _$Gsettle_expenseData_settleExpense_splits;

  static void _initializeBuilder(
          Gsettle_expenseData_settleExpense_splitsBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  int get amountSettled;
  @override
  Gsettle_expenseData_settleExpense_splits_fromUser get fromUser;
  @override
  Gsettle_expenseData_settleExpense_splits_toUser get toUser;
  @override
  bool get isSettled;
  static Serializer<Gsettle_expenseData_settleExpense_splits> get serializer =>
      _$gsettleExpenseDataSettleExpenseSplitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsettle_expenseData_settleExpense_splits.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_expenseData_settleExpense_splits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsettle_expenseData_settleExpense_splits.serializer,
        json,
      );
}

abstract class Gsettle_expenseData_settleExpense_splits_fromUser
    implements
        Built<Gsettle_expenseData_settleExpense_splits_fromUser,
            Gsettle_expenseData_settleExpense_splits_fromUserBuilder>,
        GExpenseFields_splits_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  Gsettle_expenseData_settleExpense_splits_fromUser._();

  factory Gsettle_expenseData_settleExpense_splits_fromUser(
      [Function(Gsettle_expenseData_settleExpense_splits_fromUserBuilder b)
          updates]) = _$Gsettle_expenseData_settleExpense_splits_fromUser;

  static void _initializeBuilder(
          Gsettle_expenseData_settleExpense_splits_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<Gsettle_expenseData_settleExpense_splits_fromUser>
      get serializer =>
          _$gsettleExpenseDataSettleExpenseSplitsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsettle_expenseData_settleExpense_splits_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_expenseData_settleExpense_splits_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsettle_expenseData_settleExpense_splits_fromUser.serializer,
        json,
      );
}

abstract class Gsettle_expenseData_settleExpense_splits_toUser
    implements
        Built<Gsettle_expenseData_settleExpense_splits_toUser,
            Gsettle_expenseData_settleExpense_splits_toUserBuilder>,
        GExpenseFields_splits_toUser,
        GSplitFields_toUser,
        GUserFields {
  Gsettle_expenseData_settleExpense_splits_toUser._();

  factory Gsettle_expenseData_settleExpense_splits_toUser(
      [Function(Gsettle_expenseData_settleExpense_splits_toUserBuilder b)
          updates]) = _$Gsettle_expenseData_settleExpense_splits_toUser;

  static void _initializeBuilder(
          Gsettle_expenseData_settleExpense_splits_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<Gsettle_expenseData_settleExpense_splits_toUser>
      get serializer => _$gsettleExpenseDataSettleExpenseSplitsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsettle_expenseData_settleExpense_splits_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsettle_expenseData_settleExpense_splits_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsettle_expenseData_settleExpense_splits_toUser.serializer,
        json,
      );
}

abstract class GUserFields {
  String get G__typename;
  String get id;
  String get name;
  String get phone;
  Map<String, dynamic> toJson();
}

abstract class GUserFieldsData
    implements Built<GUserFieldsData, GUserFieldsDataBuilder>, GUserFields {
  GUserFieldsData._();

  factory GUserFieldsData([Function(GUserFieldsDataBuilder b) updates]) =
      _$GUserFieldsData;

  static void _initializeBuilder(GUserFieldsDataBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GUserFieldsData> get serializer =>
      _$gUserFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFieldsData.serializer,
        json,
      );
}

abstract class GUserPaysFields {
  String get G__typename;
  BuiltList<String> get upiIds;
  int get toPay;
  int get toReceive;
  Map<String, dynamic> toJson();
}

abstract class GUserPaysFieldsData
    implements
        Built<GUserPaysFieldsData, GUserPaysFieldsDataBuilder>,
        GUserPaysFields {
  GUserPaysFieldsData._();

  factory GUserPaysFieldsData(
      [Function(GUserPaysFieldsDataBuilder b) updates]) = _$GUserPaysFieldsData;

  static void _initializeBuilder(GUserPaysFieldsDataBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String> get upiIds;
  @override
  int get toPay;
  @override
  int get toReceive;
  static Serializer<GUserPaysFieldsData> get serializer =>
      _$gUserPaysFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserPaysFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserPaysFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserPaysFieldsData.serializer,
        json,
      );
}

abstract class GGroupFields {
  String get G__typename;
  String get id;
  String get name;
  GGroupFields_creator get creator;
  BuiltList<GGroupFields_members> get members;
  int get toPay;
  int get toReceive;
  String get createdAt;
  Map<String, dynamic> toJson();
}

abstract class GGroupFields_creator implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupFields_members implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupFieldsData
    implements Built<GGroupFieldsData, GGroupFieldsDataBuilder>, GGroupFields {
  GGroupFieldsData._();

  factory GGroupFieldsData([Function(GGroupFieldsDataBuilder b) updates]) =
      _$GGroupFieldsData;

  static void _initializeBuilder(GGroupFieldsDataBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  GGroupFieldsData_creator get creator;
  @override
  BuiltList<GGroupFieldsData_members> get members;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  String get createdAt;
  static Serializer<GGroupFieldsData> get serializer =>
      _$gGroupFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupFieldsData.serializer,
        json,
      );
}

abstract class GGroupFieldsData_creator
    implements
        Built<GGroupFieldsData_creator, GGroupFieldsData_creatorBuilder>,
        GGroupFields_creator,
        GUserFields {
  GGroupFieldsData_creator._();

  factory GGroupFieldsData_creator(
          [Function(GGroupFieldsData_creatorBuilder b) updates]) =
      _$GGroupFieldsData_creator;

  static void _initializeBuilder(GGroupFieldsData_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GGroupFieldsData_creator> get serializer =>
      _$gGroupFieldsDataCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupFieldsData_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupFieldsData_creator? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupFieldsData_creator.serializer,
        json,
      );
}

abstract class GGroupFieldsData_members
    implements
        Built<GGroupFieldsData_members, GGroupFieldsData_membersBuilder>,
        GGroupFields_members,
        GUserFields {
  GGroupFieldsData_members._();

  factory GGroupFieldsData_members(
          [Function(GGroupFieldsData_membersBuilder b) updates]) =
      _$GGroupFieldsData_members;

  static void _initializeBuilder(GGroupFieldsData_membersBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GGroupFieldsData_members> get serializer =>
      _$gGroupFieldsDataMembersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupFieldsData_members.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupFieldsData_members? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupFieldsData_members.serializer,
        json,
      );
}

abstract class GExpenseFields {
  String get G__typename;
  String get id;
  String get title;
  String get createdAt;
  GExpenseFields_creator get creator;
  int get amount;
  int get toPay;
  int get toReceive;
  BuiltList<GExpenseFields_splits> get splits;
  Map<String, dynamic> toJson();
}

abstract class GExpenseFields_creator implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseFields_splits implements GSplitFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  int get amountSettled;
  @override
  GExpenseFields_splits_fromUser get fromUser;
  @override
  GExpenseFields_splits_toUser get toUser;
  @override
  bool get isSettled;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseFields_splits_fromUser
    implements GSplitFields_fromUser, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseFields_splits_toUser
    implements GSplitFields_toUser, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseFieldsData
    implements
        Built<GExpenseFieldsData, GExpenseFieldsDataBuilder>,
        GExpenseFields {
  GExpenseFieldsData._();

  factory GExpenseFieldsData([Function(GExpenseFieldsDataBuilder b) updates]) =
      _$GExpenseFieldsData;

  static void _initializeBuilder(GExpenseFieldsDataBuilder b) =>
      b..G__typename = 'Expense';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  GExpenseFieldsData_creator get creator;
  @override
  int get amount;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  BuiltList<GExpenseFieldsData_splits> get splits;
  static Serializer<GExpenseFieldsData> get serializer =>
      _$gExpenseFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseFieldsData.serializer,
        json,
      );
}

abstract class GExpenseFieldsData_creator
    implements
        Built<GExpenseFieldsData_creator, GExpenseFieldsData_creatorBuilder>,
        GExpenseFields_creator,
        GUserFields {
  GExpenseFieldsData_creator._();

  factory GExpenseFieldsData_creator(
          [Function(GExpenseFieldsData_creatorBuilder b) updates]) =
      _$GExpenseFieldsData_creator;

  static void _initializeBuilder(GExpenseFieldsData_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GExpenseFieldsData_creator> get serializer =>
      _$gExpenseFieldsDataCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseFieldsData_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseFieldsData_creator? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseFieldsData_creator.serializer,
        json,
      );
}

abstract class GExpenseFieldsData_splits
    implements
        Built<GExpenseFieldsData_splits, GExpenseFieldsData_splitsBuilder>,
        GExpenseFields_splits,
        GSplitFields {
  GExpenseFieldsData_splits._();

  factory GExpenseFieldsData_splits(
          [Function(GExpenseFieldsData_splitsBuilder b) updates]) =
      _$GExpenseFieldsData_splits;

  static void _initializeBuilder(GExpenseFieldsData_splitsBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  int get amountSettled;
  @override
  GExpenseFieldsData_splits_fromUser get fromUser;
  @override
  GExpenseFieldsData_splits_toUser get toUser;
  @override
  bool get isSettled;
  static Serializer<GExpenseFieldsData_splits> get serializer =>
      _$gExpenseFieldsDataSplitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseFieldsData_splits.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseFieldsData_splits? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseFieldsData_splits.serializer,
        json,
      );
}

abstract class GExpenseFieldsData_splits_fromUser
    implements
        Built<GExpenseFieldsData_splits_fromUser,
            GExpenseFieldsData_splits_fromUserBuilder>,
        GExpenseFields_splits_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  GExpenseFieldsData_splits_fromUser._();

  factory GExpenseFieldsData_splits_fromUser(
          [Function(GExpenseFieldsData_splits_fromUserBuilder b) updates]) =
      _$GExpenseFieldsData_splits_fromUser;

  static void _initializeBuilder(GExpenseFieldsData_splits_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GExpenseFieldsData_splits_fromUser> get serializer =>
      _$gExpenseFieldsDataSplitsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseFieldsData_splits_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseFieldsData_splits_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseFieldsData_splits_fromUser.serializer,
        json,
      );
}

abstract class GExpenseFieldsData_splits_toUser
    implements
        Built<GExpenseFieldsData_splits_toUser,
            GExpenseFieldsData_splits_toUserBuilder>,
        GExpenseFields_splits_toUser,
        GSplitFields_toUser,
        GUserFields {
  GExpenseFieldsData_splits_toUser._();

  factory GExpenseFieldsData_splits_toUser(
          [Function(GExpenseFieldsData_splits_toUserBuilder b) updates]) =
      _$GExpenseFieldsData_splits_toUser;

  static void _initializeBuilder(GExpenseFieldsData_splits_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GExpenseFieldsData_splits_toUser> get serializer =>
      _$gExpenseFieldsDataSplitsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseFieldsData_splits_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseFieldsData_splits_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseFieldsData_splits_toUser.serializer,
        json,
      );
}

abstract class GSplitFields {
  String get G__typename;
  String get id;
  int get amount;
  int get amountSettled;
  GSplitFields_fromUser get fromUser;
  GSplitFields_toUser get toUser;
  bool get isSettled;
  Map<String, dynamic> toJson();
}

abstract class GSplitFields_fromUser implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitFields_toUser implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitFieldsData
    implements Built<GSplitFieldsData, GSplitFieldsDataBuilder>, GSplitFields {
  GSplitFieldsData._();

  factory GSplitFieldsData([Function(GSplitFieldsDataBuilder b) updates]) =
      _$GSplitFieldsData;

  static void _initializeBuilder(GSplitFieldsDataBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  int get amountSettled;
  @override
  GSplitFieldsData_fromUser get fromUser;
  @override
  GSplitFieldsData_toUser get toUser;
  @override
  bool get isSettled;
  static Serializer<GSplitFieldsData> get serializer =>
      _$gSplitFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitFieldsData.serializer,
        json,
      );
}

abstract class GSplitFieldsData_fromUser
    implements
        Built<GSplitFieldsData_fromUser, GSplitFieldsData_fromUserBuilder>,
        GSplitFields_fromUser,
        GUserFields {
  GSplitFieldsData_fromUser._();

  factory GSplitFieldsData_fromUser(
          [Function(GSplitFieldsData_fromUserBuilder b) updates]) =
      _$GSplitFieldsData_fromUser;

  static void _initializeBuilder(GSplitFieldsData_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GSplitFieldsData_fromUser> get serializer =>
      _$gSplitFieldsDataFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitFieldsData_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsData_fromUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitFieldsData_fromUser.serializer,
        json,
      );
}

abstract class GSplitFieldsData_toUser
    implements
        Built<GSplitFieldsData_toUser, GSplitFieldsData_toUserBuilder>,
        GSplitFields_toUser,
        GUserFields {
  GSplitFieldsData_toUser._();

  factory GSplitFieldsData_toUser(
          [Function(GSplitFieldsData_toUserBuilder b) updates]) =
      _$GSplitFieldsData_toUser;

  static void _initializeBuilder(GSplitFieldsData_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GSplitFieldsData_toUser> get serializer =>
      _$gSplitFieldsDataToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitFieldsData_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsData_toUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitFieldsData_toUser.serializer,
        json,
      );
}

abstract class GGroupWithExpenses implements GGroupFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  GGroupWithExpenses_creator get creator;
  @override
  BuiltList<GGroupWithExpenses_members> get members;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  String get createdAt;
  BuiltList<GGroupWithExpenses_expenses> get expenses;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_creator
    implements GGroupFields_creator, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_members
    implements GGroupFields_members, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_expenses implements GExpenseFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  GGroupWithExpenses_expenses_creator get creator;
  @override
  int get amount;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  BuiltList<GGroupWithExpenses_expenses_splits> get splits;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_expenses_creator
    implements GExpenseFields_creator, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_expenses_splits
    implements GExpenseFields_splits, GSplitFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  int get amountSettled;
  @override
  GGroupWithExpenses_expenses_splits_fromUser get fromUser;
  @override
  GGroupWithExpenses_expenses_splits_toUser get toUser;
  @override
  bool get isSettled;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_expenses_splits_fromUser
    implements
        GExpenseFields_splits_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_expenses_splits_toUser
    implements GExpenseFields_splits_toUser, GSplitFields_toUser, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpensesData
    implements
        Built<GGroupWithExpensesData, GGroupWithExpensesDataBuilder>,
        GGroupWithExpenses,
        GGroupFields {
  GGroupWithExpensesData._();

  factory GGroupWithExpensesData(
          [Function(GGroupWithExpensesDataBuilder b) updates]) =
      _$GGroupWithExpensesData;

  static void _initializeBuilder(GGroupWithExpensesDataBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  GGroupWithExpensesData_creator get creator;
  @override
  BuiltList<GGroupWithExpensesData_members> get members;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  String get createdAt;
  @override
  BuiltList<GGroupWithExpensesData_expenses> get expenses;
  static Serializer<GGroupWithExpensesData> get serializer =>
      _$gGroupWithExpensesDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData.serializer,
        json,
      );
}

abstract class GGroupWithExpensesData_creator
    implements
        Built<GGroupWithExpensesData_creator,
            GGroupWithExpensesData_creatorBuilder>,
        GGroupWithExpenses_creator,
        GGroupFields_creator,
        GUserFields {
  GGroupWithExpensesData_creator._();

  factory GGroupWithExpensesData_creator(
          [Function(GGroupWithExpensesData_creatorBuilder b) updates]) =
      _$GGroupWithExpensesData_creator;

  static void _initializeBuilder(GGroupWithExpensesData_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GGroupWithExpensesData_creator> get serializer =>
      _$gGroupWithExpensesDataCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_creator? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_creator.serializer,
        json,
      );
}

abstract class GGroupWithExpensesData_members
    implements
        Built<GGroupWithExpensesData_members,
            GGroupWithExpensesData_membersBuilder>,
        GGroupWithExpenses_members,
        GGroupFields_members,
        GUserFields {
  GGroupWithExpensesData_members._();

  factory GGroupWithExpensesData_members(
          [Function(GGroupWithExpensesData_membersBuilder b) updates]) =
      _$GGroupWithExpensesData_members;

  static void _initializeBuilder(GGroupWithExpensesData_membersBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GGroupWithExpensesData_members> get serializer =>
      _$gGroupWithExpensesDataMembersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_members.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_members? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_members.serializer,
        json,
      );
}

abstract class GGroupWithExpensesData_expenses
    implements
        Built<GGroupWithExpensesData_expenses,
            GGroupWithExpensesData_expensesBuilder>,
        GGroupWithExpenses_expenses,
        GExpenseFields {
  GGroupWithExpensesData_expenses._();

  factory GGroupWithExpensesData_expenses(
          [Function(GGroupWithExpensesData_expensesBuilder b) updates]) =
      _$GGroupWithExpensesData_expenses;

  static void _initializeBuilder(GGroupWithExpensesData_expensesBuilder b) =>
      b..G__typename = 'Expense';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  GGroupWithExpensesData_expenses_creator get creator;
  @override
  int get amount;
  @override
  int get toPay;
  @override
  int get toReceive;
  @override
  BuiltList<GGroupWithExpensesData_expenses_splits> get splits;
  static Serializer<GGroupWithExpensesData_expenses> get serializer =>
      _$gGroupWithExpensesDataExpensesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_expenses.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_expenses? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_expenses.serializer,
        json,
      );
}

abstract class GGroupWithExpensesData_expenses_creator
    implements
        Built<GGroupWithExpensesData_expenses_creator,
            GGroupWithExpensesData_expenses_creatorBuilder>,
        GGroupWithExpenses_expenses_creator,
        GExpenseFields_creator,
        GUserFields {
  GGroupWithExpensesData_expenses_creator._();

  factory GGroupWithExpensesData_expenses_creator(
      [Function(GGroupWithExpensesData_expenses_creatorBuilder b)
          updates]) = _$GGroupWithExpensesData_expenses_creator;

  static void _initializeBuilder(
          GGroupWithExpensesData_expenses_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GGroupWithExpensesData_expenses_creator> get serializer =>
      _$gGroupWithExpensesDataExpensesCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_expenses_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_expenses_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_expenses_creator.serializer,
        json,
      );
}

abstract class GGroupWithExpensesData_expenses_splits
    implements
        Built<GGroupWithExpensesData_expenses_splits,
            GGroupWithExpensesData_expenses_splitsBuilder>,
        GGroupWithExpenses_expenses_splits,
        GExpenseFields_splits,
        GSplitFields {
  GGroupWithExpensesData_expenses_splits._();

  factory GGroupWithExpensesData_expenses_splits(
          [Function(GGroupWithExpensesData_expenses_splitsBuilder b) updates]) =
      _$GGroupWithExpensesData_expenses_splits;

  static void _initializeBuilder(
          GGroupWithExpensesData_expenses_splitsBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  int get amountSettled;
  @override
  GGroupWithExpensesData_expenses_splits_fromUser get fromUser;
  @override
  GGroupWithExpensesData_expenses_splits_toUser get toUser;
  @override
  bool get isSettled;
  static Serializer<GGroupWithExpensesData_expenses_splits> get serializer =>
      _$gGroupWithExpensesDataExpensesSplitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_expenses_splits.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_expenses_splits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_expenses_splits.serializer,
        json,
      );
}

abstract class GGroupWithExpensesData_expenses_splits_fromUser
    implements
        Built<GGroupWithExpensesData_expenses_splits_fromUser,
            GGroupWithExpensesData_expenses_splits_fromUserBuilder>,
        GGroupWithExpenses_expenses_splits_fromUser,
        GExpenseFields_splits_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  GGroupWithExpensesData_expenses_splits_fromUser._();

  factory GGroupWithExpensesData_expenses_splits_fromUser(
      [Function(GGroupWithExpensesData_expenses_splits_fromUserBuilder b)
          updates]) = _$GGroupWithExpensesData_expenses_splits_fromUser;

  static void _initializeBuilder(
          GGroupWithExpensesData_expenses_splits_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GGroupWithExpensesData_expenses_splits_fromUser>
      get serializer =>
          _$gGroupWithExpensesDataExpensesSplitsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_expenses_splits_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_expenses_splits_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_expenses_splits_fromUser.serializer,
        json,
      );
}

abstract class GGroupWithExpensesData_expenses_splits_toUser
    implements
        Built<GGroupWithExpensesData_expenses_splits_toUser,
            GGroupWithExpensesData_expenses_splits_toUserBuilder>,
        GGroupWithExpenses_expenses_splits_toUser,
        GExpenseFields_splits_toUser,
        GSplitFields_toUser,
        GUserFields {
  GGroupWithExpensesData_expenses_splits_toUser._();

  factory GGroupWithExpensesData_expenses_splits_toUser(
      [Function(GGroupWithExpensesData_expenses_splits_toUserBuilder b)
          updates]) = _$GGroupWithExpensesData_expenses_splits_toUser;

  static void _initializeBuilder(
          GGroupWithExpensesData_expenses_splits_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  static Serializer<GGroupWithExpensesData_expenses_splits_toUser>
      get serializer => _$gGroupWithExpensesDataExpensesSplitsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_expenses_splits_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_expenses_splits_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_expenses_splits_toUser.serializer,
        json,
      );
}
