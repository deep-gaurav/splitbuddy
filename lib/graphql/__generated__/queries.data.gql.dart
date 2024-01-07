// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i2;
import 'package:splitbuddy/__generated__/schema.schema.gql.dart' as _i3;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  String? get phone;
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
  GgroupsData_groups_creator get creator;
  @override
  BuiltList<GgroupsData_groups_members> get members;
  @override
  int get owed;
  @override
  String get createdAt;
  @override
  String get id;
  @override
  String? get name;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
        GGroupFields_members {
  GgroupsData_groups_members._();

  factory GgroupsData_groups_members(
          [Function(GgroupsData_groups_membersBuilder b) updates]) =
      _$GgroupsData_groups_members;

  static void _initializeBuilder(GgroupsData_groups_membersBuilder b) =>
      b..G__typename = 'GroupMember';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get owedInGroup;
  @override
  GgroupsData_groups_members_member get member;
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

abstract class GgroupsData_groups_members_member
    implements
        Built<GgroupsData_groups_members_member,
            GgroupsData_groups_members_memberBuilder>,
        GGroupFields_members_member,
        GUserFields {
  GgroupsData_groups_members_member._();

  factory GgroupsData_groups_members_member(
          [Function(GgroupsData_groups_members_memberBuilder b) updates]) =
      _$GgroupsData_groups_members_member;

  static void _initializeBuilder(GgroupsData_groups_members_memberBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GgroupsData_groups_members_member> get serializer =>
      _$ggroupsDataGroupsMembersMemberSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupsData_groups_members_member.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupsData_groups_members_member? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupsData_groups_members_member.serializer,
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
  BuiltList<String> get upiIds;
  @override
  BuiltList<Ginteracted_usersData_interactedUsers_owes> get owes;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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

abstract class Ginteracted_usersData_interactedUsers_owes
    implements
        Built<Ginteracted_usersData_interactedUsers_owes,
            Ginteracted_usersData_interactedUsers_owesBuilder>,
        GUserPaysFields_owes {
  Ginteracted_usersData_interactedUsers_owes._();

  factory Ginteracted_usersData_interactedUsers_owes(
      [Function(Ginteracted_usersData_interactedUsers_owesBuilder b)
          updates]) = _$Ginteracted_usersData_interactedUsers_owes;

  static void _initializeBuilder(
          Ginteracted_usersData_interactedUsers_owesBuilder b) =>
      b..G__typename = 'OwedInGroup';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get groupId;
  @override
  int get amount;
  static Serializer<Ginteracted_usersData_interactedUsers_owes>
      get serializer => _$ginteractedUsersDataInteractedUsersOwesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Ginteracted_usersData_interactedUsers_owes.serializer,
        this,
      ) as Map<String, dynamic>);

  static Ginteracted_usersData_interactedUsers_owes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Ginteracted_usersData_interactedUsers_owes.serializer,
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
  GgroupData_group_creator get creator;
  @override
  BuiltList<GgroupData_group_members> get members;
  @override
  int get owed;
  @override
  String get createdAt;
  @override
  String get id;
  @override
  String? get name;
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
  GgroupData_group_expenses_creator get creator;
  @override
  BuiltList<GgroupData_group_expenses_splits> get splits;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  GgroupData_group_expenses_splits_fromUser get fromUser;
  @override
  GgroupData_group_expenses_splits_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
        GGroupWithExpenses_members {
  GgroupData_group_members._();

  factory GgroupData_group_members(
          [Function(GgroupData_group_membersBuilder b) updates]) =
      _$GgroupData_group_members;

  static void _initializeBuilder(GgroupData_group_membersBuilder b) =>
      b..G__typename = 'GroupMember';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get owedInGroup;
  @override
  GgroupData_group_members_member get member;
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

abstract class GgroupData_group_members_member
    implements
        Built<GgroupData_group_members_member,
            GgroupData_group_members_memberBuilder>,
        GGroupWithExpenses_members_member,
        GUserFields {
  GgroupData_group_members_member._();

  factory GgroupData_group_members_member(
          [Function(GgroupData_group_members_memberBuilder b) updates]) =
      _$GgroupData_group_members_member;

  static void _initializeBuilder(GgroupData_group_members_memberBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GgroupData_group_members_member> get serializer =>
      _$ggroupDataGroupMembersMemberSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_members_member.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_members_member? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_members_member.serializer,
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
      b..G__typename = 'SignupSuccess';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsignupData_signup_user get user;
  GsignupData_signup_tokens get tokens;
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

abstract class GsignupData_signup_user
    implements
        Built<GsignupData_signup_user, GsignupData_signup_userBuilder>,
        GUserFields {
  GsignupData_signup_user._();

  factory GsignupData_signup_user(
          [Function(GsignupData_signup_userBuilder b) updates]) =
      _$GsignupData_signup_user;

  static void _initializeBuilder(GsignupData_signup_userBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GsignupData_signup_user> get serializer =>
      _$gsignupDataSignupUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsignupData_signup_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignupData_signup_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsignupData_signup_user.serializer,
        json,
      );
}

abstract class GsignupData_signup_tokens
    implements
        Built<GsignupData_signup_tokens, GsignupData_signup_tokensBuilder> {
  GsignupData_signup_tokens._();

  factory GsignupData_signup_tokens(
          [Function(GsignupData_signup_tokensBuilder b) updates]) =
      _$GsignupData_signup_tokens;

  static void _initializeBuilder(GsignupData_signup_tokensBuilder b) =>
      b..G__typename = 'UserSignedUp';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get accessToken;
  String get refreshToken;
  static Serializer<GsignupData_signup_tokens> get serializer =>
      _$gsignupDataSignupTokensSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsignupData_signup_tokens.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignupData_signup_tokens? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsignupData_signup_tokens.serializer,
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
  Gcreate_groupData_createGroup_creator get creator;
  @override
  BuiltList<Gcreate_groupData_createGroup_members> get members;
  @override
  int get owed;
  @override
  String get createdAt;
  @override
  String get id;
  @override
  String? get name;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
        GGroupFields_members {
  Gcreate_groupData_createGroup_members._();

  factory Gcreate_groupData_createGroup_members(
          [Function(Gcreate_groupData_createGroup_membersBuilder b) updates]) =
      _$Gcreate_groupData_createGroup_members;

  static void _initializeBuilder(
          Gcreate_groupData_createGroup_membersBuilder b) =>
      b..G__typename = 'GroupMember';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get owedInGroup;
  @override
  Gcreate_groupData_createGroup_members_member get member;
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

abstract class Gcreate_groupData_createGroup_members_member
    implements
        Built<Gcreate_groupData_createGroup_members_member,
            Gcreate_groupData_createGroup_members_memberBuilder>,
        GGroupFields_members_member,
        GUserFields {
  Gcreate_groupData_createGroup_members_member._();

  factory Gcreate_groupData_createGroup_members_member(
      [Function(Gcreate_groupData_createGroup_members_memberBuilder b)
          updates]) = _$Gcreate_groupData_createGroup_members_member;

  static void _initializeBuilder(
          Gcreate_groupData_createGroup_members_memberBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<Gcreate_groupData_createGroup_members_member>
      get serializer => _$gcreateGroupDataCreateGroupMembersMemberSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_groupData_createGroup_members_member.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_groupData_createGroup_members_member? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_groupData_createGroup_members_member.serializer,
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
  String get addToGroupByEmail;
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
        GNewExpenseFields {
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
  BuiltList<Gadd_expenseData_addExpense_splits> get splits;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
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

abstract class Gadd_expenseData_addExpense_splits
    implements
        Built<Gadd_expenseData_addExpense_splits,
            Gadd_expenseData_addExpense_splitsBuilder>,
        GNewExpenseFields_splits,
        GSplitTransactionFields {
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
  Gadd_expenseData_addExpense_splits_expense? get expense;
  @override
  Gadd_expenseData_addExpense_splits_group get group;
  @override
  Gadd_expenseData_addExpense_splits_creator get creator;
  @override
  Gadd_expenseData_addExpense_splits_fromUser get fromUser;
  @override
  Gadd_expenseData_addExpense_splits_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
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

abstract class Gadd_expenseData_addExpense_splits_expense
    implements
        Built<Gadd_expenseData_addExpense_splits_expense,
            Gadd_expenseData_addExpense_splits_expenseBuilder>,
        GNewExpenseFields_splits_expense,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  Gadd_expenseData_addExpense_splits_expense._();

  factory Gadd_expenseData_addExpense_splits_expense(
      [Function(Gadd_expenseData_addExpense_splits_expenseBuilder b)
          updates]) = _$Gadd_expenseData_addExpense_splits_expense;

  static void _initializeBuilder(
          Gadd_expenseData_addExpense_splits_expenseBuilder b) =>
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
  int get amount;
  @override
  String get creatorId;
  static Serializer<Gadd_expenseData_addExpense_splits_expense>
      get serializer => _$gaddExpenseDataAddExpenseSplitsExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_splits_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_splits_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_splits_expense.serializer,
        json,
      );
}

abstract class Gadd_expenseData_addExpense_splits_group
    implements
        Built<Gadd_expenseData_addExpense_splits_group,
            Gadd_expenseData_addExpense_splits_groupBuilder>,
        GNewExpenseFields_splits_group,
        GSplitTransactionFields_group,
        GGroupBasic {
  Gadd_expenseData_addExpense_splits_group._();

  factory Gadd_expenseData_addExpense_splits_group(
      [Function(Gadd_expenseData_addExpense_splits_groupBuilder b)
          updates]) = _$Gadd_expenseData_addExpense_splits_group;

  static void _initializeBuilder(
          Gadd_expenseData_addExpense_splits_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<Gadd_expenseData_addExpense_splits_group> get serializer =>
      _$gaddExpenseDataAddExpenseSplitsGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_splits_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_splits_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_splits_group.serializer,
        json,
      );
}

abstract class Gadd_expenseData_addExpense_splits_creator
    implements
        Built<Gadd_expenseData_addExpense_splits_creator,
            Gadd_expenseData_addExpense_splits_creatorBuilder>,
        GNewExpenseFields_splits_creator,
        GSplitTransactionFields_creator,
        GUserFields {
  Gadd_expenseData_addExpense_splits_creator._();

  factory Gadd_expenseData_addExpense_splits_creator(
      [Function(Gadd_expenseData_addExpense_splits_creatorBuilder b)
          updates]) = _$Gadd_expenseData_addExpense_splits_creator;

  static void _initializeBuilder(
          Gadd_expenseData_addExpense_splits_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<Gadd_expenseData_addExpense_splits_creator>
      get serializer => _$gaddExpenseDataAddExpenseSplitsCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_splits_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_splits_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_splits_creator.serializer,
        json,
      );
}

abstract class Gadd_expenseData_addExpense_splits_fromUser
    implements
        Built<Gadd_expenseData_addExpense_splits_fromUser,
            Gadd_expenseData_addExpense_splits_fromUserBuilder>,
        GNewExpenseFields_splits_fromUser,
        GSplitTransactionFields_fromUser,
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
        GNewExpenseFields_splits_toUser,
        GSplitTransactionFields_toUser,
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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

abstract class Gsend_email_otpData
    implements Built<Gsend_email_otpData, Gsend_email_otpDataBuilder> {
  Gsend_email_otpData._();

  factory Gsend_email_otpData(
      [Function(Gsend_email_otpDataBuilder b) updates]) = _$Gsend_email_otpData;

  static void _initializeBuilder(Gsend_email_otpDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get sendEmailOtp;
  static Serializer<Gsend_email_otpData> get serializer =>
      _$gsendEmailOtpDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_email_otpData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_email_otpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_email_otpData.serializer,
        json,
      );
}

abstract class Gverify_email_otpData
    implements Built<Gverify_email_otpData, Gverify_email_otpDataBuilder> {
  Gverify_email_otpData._();

  factory Gverify_email_otpData(
          [Function(Gverify_email_otpDataBuilder b) updates]) =
      _$Gverify_email_otpData;

  static void _initializeBuilder(Gverify_email_otpDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gverify_email_otpData_verifyOtp get verifyOtp;
  static Serializer<Gverify_email_otpData> get serializer =>
      _$gverifyEmailOtpDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gverify_email_otpData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_email_otpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gverify_email_otpData.serializer,
        json,
      );
}

abstract class Gverify_email_otpData_verifyOtp {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<Gverify_email_otpData_verifyOtp> get serializer =>
      _i2.InlineFragmentSerializer<Gverify_email_otpData_verifyOtp>(
        'Gverify_email_otpData_verifyOtp',
        Gverify_email_otpData_verifyOtp__base,
        {
          'UserSignedUp': Gverify_email_otpData_verifyOtp__asUserSignedUp,
          'UserNotSignedUp': Gverify_email_otpData_verifyOtp__asUserNotSignedUp,
        },
      );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gverify_email_otpData_verifyOtp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_email_otpData_verifyOtp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gverify_email_otpData_verifyOtp.serializer,
        json,
      );
}

abstract class Gverify_email_otpData_verifyOtp__base
    implements
        Built<Gverify_email_otpData_verifyOtp__base,
            Gverify_email_otpData_verifyOtp__baseBuilder>,
        Gverify_email_otpData_verifyOtp {
  Gverify_email_otpData_verifyOtp__base._();

  factory Gverify_email_otpData_verifyOtp__base(
          [Function(Gverify_email_otpData_verifyOtp__baseBuilder b) updates]) =
      _$Gverify_email_otpData_verifyOtp__base;

  static void _initializeBuilder(
          Gverify_email_otpData_verifyOtp__baseBuilder b) =>
      b..G__typename = 'AuthResult';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<Gverify_email_otpData_verifyOtp__base> get serializer =>
      _$gverifyEmailOtpDataVerifyOtpBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gverify_email_otpData_verifyOtp__base.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_email_otpData_verifyOtp__base? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gverify_email_otpData_verifyOtp__base.serializer,
        json,
      );
}

abstract class Gverify_email_otpData_verifyOtp__asUserSignedUp
    implements
        Built<Gverify_email_otpData_verifyOtp__asUserSignedUp,
            Gverify_email_otpData_verifyOtp__asUserSignedUpBuilder>,
        Gverify_email_otpData_verifyOtp {
  Gverify_email_otpData_verifyOtp__asUserSignedUp._();

  factory Gverify_email_otpData_verifyOtp__asUserSignedUp(
      [Function(Gverify_email_otpData_verifyOtp__asUserSignedUpBuilder b)
          updates]) = _$Gverify_email_otpData_verifyOtp__asUserSignedUp;

  static void _initializeBuilder(
          Gverify_email_otpData_verifyOtp__asUserSignedUpBuilder b) =>
      b..G__typename = 'UserSignedUp';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get accessToken;
  String get refreshToken;
  static Serializer<Gverify_email_otpData_verifyOtp__asUserSignedUp>
      get serializer => _$gverifyEmailOtpDataVerifyOtpAsUserSignedUpSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gverify_email_otpData_verifyOtp__asUserSignedUp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_email_otpData_verifyOtp__asUserSignedUp? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gverify_email_otpData_verifyOtp__asUserSignedUp.serializer,
        json,
      );
}

abstract class Gverify_email_otpData_verifyOtp__asUserNotSignedUp
    implements
        Built<Gverify_email_otpData_verifyOtp__asUserNotSignedUp,
            Gverify_email_otpData_verifyOtp__asUserNotSignedUpBuilder>,
        Gverify_email_otpData_verifyOtp {
  Gverify_email_otpData_verifyOtp__asUserNotSignedUp._();

  factory Gverify_email_otpData_verifyOtp__asUserNotSignedUp(
      [Function(Gverify_email_otpData_verifyOtp__asUserNotSignedUpBuilder b)
          updates]) = _$Gverify_email_otpData_verifyOtp__asUserNotSignedUp;

  static void _initializeBuilder(
          Gverify_email_otpData_verifyOtp__asUserNotSignedUpBuilder b) =>
      b..G__typename = 'UserNotSignedUp';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get signupToken;
  static Serializer<Gverify_email_otpData_verifyOtp__asUserNotSignedUp>
      get serializer =>
          _$gverifyEmailOtpDataVerifyOtpAsUserNotSignedUpSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gverify_email_otpData_verifyOtp__asUserNotSignedUp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_email_otpData_verifyOtp__asUserNotSignedUp? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gverify_email_otpData_verifyOtp__asUserNotSignedUp.serializer,
        json,
      );
}

abstract class Grefresh_tokenData
    implements Built<Grefresh_tokenData, Grefresh_tokenDataBuilder> {
  Grefresh_tokenData._();

  factory Grefresh_tokenData([Function(Grefresh_tokenDataBuilder b) updates]) =
      _$Grefresh_tokenData;

  static void _initializeBuilder(Grefresh_tokenDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Grefresh_tokenData_refreshToken get refreshToken;
  static Serializer<Grefresh_tokenData> get serializer =>
      _$grefreshTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grefresh_tokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grefresh_tokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grefresh_tokenData.serializer,
        json,
      );
}

abstract class Grefresh_tokenData_refreshToken
    implements
        Built<Grefresh_tokenData_refreshToken,
            Grefresh_tokenData_refreshTokenBuilder> {
  Grefresh_tokenData_refreshToken._();

  factory Grefresh_tokenData_refreshToken(
          [Function(Grefresh_tokenData_refreshTokenBuilder b) updates]) =
      _$Grefresh_tokenData_refreshToken;

  static void _initializeBuilder(Grefresh_tokenData_refreshTokenBuilder b) =>
      b..G__typename = 'UserSignedUp';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get accessToken;
  String get refreshToken;
  static Serializer<Grefresh_tokenData_refreshToken> get serializer =>
      _$grefreshTokenDataRefreshTokenSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grefresh_tokenData_refreshToken.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grefresh_tokenData_refreshToken? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grefresh_tokenData_refreshToken.serializer,
        json,
      );
}

abstract class GsearchUserByEmailData
    implements Built<GsearchUserByEmailData, GsearchUserByEmailDataBuilder> {
  GsearchUserByEmailData._();

  factory GsearchUserByEmailData(
          [Function(GsearchUserByEmailDataBuilder b) updates]) =
      _$GsearchUserByEmailData;

  static void _initializeBuilder(GsearchUserByEmailDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsearchUserByEmailData_findUserByEmail get findUserByEmail;
  static Serializer<GsearchUserByEmailData> get serializer =>
      _$gsearchUserByEmailDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsearchUserByEmailData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsearchUserByEmailData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsearchUserByEmailData.serializer,
        json,
      );
}

abstract class GsearchUserByEmailData_findUserByEmail
    implements
        Built<GsearchUserByEmailData_findUserByEmail,
            GsearchUserByEmailData_findUserByEmailBuilder>,
        GUserFields {
  GsearchUserByEmailData_findUserByEmail._();

  factory GsearchUserByEmailData_findUserByEmail(
          [Function(GsearchUserByEmailData_findUserByEmailBuilder b) updates]) =
      _$GsearchUserByEmailData_findUserByEmail;

  static void _initializeBuilder(
          GsearchUserByEmailData_findUserByEmailBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GsearchUserByEmailData_findUserByEmail> get serializer =>
      _$gsearchUserByEmailDataFindUserByEmailSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsearchUserByEmailData_findUserByEmail.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsearchUserByEmailData_findUserByEmail? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsearchUserByEmailData_findUserByEmail.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseData
    implements
        Built<GcreateNonGroupExpenseData, GcreateNonGroupExpenseDataBuilder> {
  GcreateNonGroupExpenseData._();

  factory GcreateNonGroupExpenseData(
          [Function(GcreateNonGroupExpenseDataBuilder b) updates]) =
      _$GcreateNonGroupExpenseData;

  static void _initializeBuilder(GcreateNonGroupExpenseDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcreateNonGroupExpenseData_addNonGroupExpense get addNonGroupExpense;
  static Serializer<GcreateNonGroupExpenseData> get serializer =>
      _$gcreateNonGroupExpenseDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateNonGroupExpenseData.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense
    implements
        Built<GcreateNonGroupExpenseData_addNonGroupExpense,
            GcreateNonGroupExpenseData_addNonGroupExpenseBuilder> {
  GcreateNonGroupExpenseData_addNonGroupExpense._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense(
      [Function(GcreateNonGroupExpenseData_addNonGroupExpenseBuilder b)
          updates]) = _$GcreateNonGroupExpenseData_addNonGroupExpense;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpenseBuilder b) =>
      b..G__typename = 'NonGroupExpense';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GcreateNonGroupExpenseData_addNonGroupExpense_group get group;
  GcreateNonGroupExpenseData_addNonGroupExpense_expense get expense;
  static Serializer<GcreateNonGroupExpenseData_addNonGroupExpense>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_group
    implements
        Built<GcreateNonGroupExpenseData_addNonGroupExpense_group,
            GcreateNonGroupExpenseData_addNonGroupExpense_groupBuilder>,
        GGroupFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_group._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_group(
      [Function(GcreateNonGroupExpenseData_addNonGroupExpense_groupBuilder b)
          updates]) = _$GcreateNonGroupExpenseData_addNonGroupExpense_group;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GcreateNonGroupExpenseData_addNonGroupExpense_group_creator get creator;
  @override
  BuiltList<GcreateNonGroupExpenseData_addNonGroupExpense_group_members>
      get members;
  @override
  int get owed;
  @override
  String get createdAt;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GcreateNonGroupExpenseData_addNonGroupExpense_group>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_group.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_group_creator
    implements
        Built<GcreateNonGroupExpenseData_addNonGroupExpense_group_creator,
            GcreateNonGroupExpenseData_addNonGroupExpense_group_creatorBuilder>,
        GGroupFields_creator,
        GUserFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_group_creator._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_group_creator(
      [Function(
              GcreateNonGroupExpenseData_addNonGroupExpense_group_creatorBuilder
                  b)
          updates]) = _$GcreateNonGroupExpenseData_addNonGroupExpense_group_creator;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_group_creatorBuilder
              b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GcreateNonGroupExpenseData_addNonGroupExpense_group_creator>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseGroupCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_group_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_group_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_group_creator.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_group_members
    implements
        Built<GcreateNonGroupExpenseData_addNonGroupExpense_group_members,
            GcreateNonGroupExpenseData_addNonGroupExpense_group_membersBuilder>,
        GGroupFields_members {
  GcreateNonGroupExpenseData_addNonGroupExpense_group_members._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_group_members(
      [Function(
              GcreateNonGroupExpenseData_addNonGroupExpense_group_membersBuilder
                  b)
          updates]) = _$GcreateNonGroupExpenseData_addNonGroupExpense_group_members;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_group_membersBuilder
              b) =>
      b..G__typename = 'GroupMember';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get owedInGroup;
  @override
  GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member get member;
  static Serializer<GcreateNonGroupExpenseData_addNonGroupExpense_group_members>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseGroupMembersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_group_members.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_group_members? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_group_members.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member
    implements
        Built<
            GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member,
            GcreateNonGroupExpenseData_addNonGroupExpense_group_members_memberBuilder>,
        GGroupFields_members_member,
        GUserFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_group_members_memberBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_group_members_memberBuilder
              b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseGroupMembersMemberSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member
                .serializer,
            json,
          );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense
    implements
        Built<GcreateNonGroupExpenseData_addNonGroupExpense_expense,
            GcreateNonGroupExpenseData_addNonGroupExpense_expenseBuilder>,
        GNewExpenseFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense(
      [Function(GcreateNonGroupExpenseData_addNonGroupExpense_expenseBuilder b)
          updates]) = _$GcreateNonGroupExpenseData_addNonGroupExpense_expense;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expenseBuilder b) =>
      b..G__typename = 'Expense';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits>
      get splits;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
  static Serializer<GcreateNonGroupExpenseData_addNonGroupExpense_expense>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits
    implements
        Built<GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits,
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splitsBuilder>,
        GNewExpenseFields_splits,
        GSplitTransactionFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splitsBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splitsBuilder
              b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense?
      get expense;
  @override
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group get group;
  @override
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator
      get creator;
  @override
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser
      get fromUser;
  @override
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser
      get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseSplitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits.serializer,
        json,
      );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense
    implements
        Built<
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense,
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expenseBuilder>,
        GNewExpenseFields_splits_expense,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expenseBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expenseBuilder
              b) =>
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
  int get amount;
  @override
  String get creatorId;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseSplitsExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense
                .serializer,
            json,
          );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group
    implements
        Built<
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group,
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_groupBuilder>,
        GNewExpenseFields_splits_group,
        GSplitTransactionFields_group,
        GGroupBasic {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_groupBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_groupBuilder
              b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseSplitsGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group
                .serializer,
            json,
          );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator
    implements
        Built<
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator,
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creatorBuilder>,
        GNewExpenseFields_splits_creator,
        GSplitTransactionFields_creator,
        GUserFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creatorBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creatorBuilder
              b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseSplitsCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator
                .serializer,
            json,
          );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser
    implements
        Built<
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser,
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUserBuilder>,
        GNewExpenseFields_splits_fromUser,
        GSplitTransactionFields_fromUser,
        GUserFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUserBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUserBuilder
              b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseSplitsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser
                .serializer,
            json,
          );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser
    implements
        Built<
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser,
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUserBuilder>,
        GNewExpenseFields_splits_toUser,
        GSplitTransactionFields_toUser,
        GUserFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUserBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUserBuilder
              b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseSplitsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser
                .serializer,
            json,
          );
}

abstract class GsettleInGroupData
    implements Built<GsettleInGroupData, GsettleInGroupDataBuilder> {
  GsettleInGroupData._();

  factory GsettleInGroupData([Function(GsettleInGroupDataBuilder b) updates]) =
      _$GsettleInGroupData;

  static void _initializeBuilder(GsettleInGroupDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsettleInGroupData_settleInGroup get settleInGroup;
  static Serializer<GsettleInGroupData> get serializer =>
      _$gsettleInGroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupData.serializer,
        json,
      );
}

abstract class GsettleInGroupData_settleInGroup
    implements
        Built<GsettleInGroupData_settleInGroup,
            GsettleInGroupData_settleInGroupBuilder>,
        GSplitFields {
  GsettleInGroupData_settleInGroup._();

  factory GsettleInGroupData_settleInGroup(
          [Function(GsettleInGroupData_settleInGroupBuilder b) updates]) =
      _$GsettleInGroupData_settleInGroup;

  static void _initializeBuilder(GsettleInGroupData_settleInGroupBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GsettleInGroupData_settleInGroup_fromUser get fromUser;
  @override
  GsettleInGroupData_settleInGroup_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  static Serializer<GsettleInGroupData_settleInGroup> get serializer =>
      _$gsettleInGroupDataSettleInGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupData_settleInGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupData_settleInGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupData_settleInGroup.serializer,
        json,
      );
}

abstract class GsettleInGroupData_settleInGroup_fromUser
    implements
        Built<GsettleInGroupData_settleInGroup_fromUser,
            GsettleInGroupData_settleInGroup_fromUserBuilder>,
        GSplitFields_fromUser,
        GUserFields {
  GsettleInGroupData_settleInGroup_fromUser._();

  factory GsettleInGroupData_settleInGroup_fromUser(
      [Function(GsettleInGroupData_settleInGroup_fromUserBuilder b)
          updates]) = _$GsettleInGroupData_settleInGroup_fromUser;

  static void _initializeBuilder(
          GsettleInGroupData_settleInGroup_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GsettleInGroupData_settleInGroup_fromUser> get serializer =>
      _$gsettleInGroupDataSettleInGroupFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupData_settleInGroup_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupData_settleInGroup_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupData_settleInGroup_fromUser.serializer,
        json,
      );
}

abstract class GsettleInGroupData_settleInGroup_toUser
    implements
        Built<GsettleInGroupData_settleInGroup_toUser,
            GsettleInGroupData_settleInGroup_toUserBuilder>,
        GSplitFields_toUser,
        GUserFields {
  GsettleInGroupData_settleInGroup_toUser._();

  factory GsettleInGroupData_settleInGroup_toUser(
      [Function(GsettleInGroupData_settleInGroup_toUserBuilder b)
          updates]) = _$GsettleInGroupData_settleInGroup_toUser;

  static void _initializeBuilder(
          GsettleInGroupData_settleInGroup_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GsettleInGroupData_settleInGroup_toUser> get serializer =>
      _$gsettleInGroupDataSettleInGroupToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupData_settleInGroup_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupData_settleInGroup_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupData_settleInGroup_toUser.serializer,
        json,
      );
}

abstract class GsimplifyUserData
    implements Built<GsimplifyUserData, GsimplifyUserDataBuilder> {
  GsimplifyUserData._();

  factory GsimplifyUserData([Function(GsimplifyUserDataBuilder b) updates]) =
      _$GsimplifyUserData;

  static void _initializeBuilder(GsimplifyUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GsimplifyUserData_simplifyCrossGroup> get simplifyCrossGroup;
  static Serializer<GsimplifyUserData> get serializer =>
      _$gsimplifyUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserData.serializer,
        json,
      );
}

abstract class GsimplifyUserData_simplifyCrossGroup
    implements
        Built<GsimplifyUserData_simplifyCrossGroup,
            GsimplifyUserData_simplifyCrossGroupBuilder>,
        GSplitTransactionFields {
  GsimplifyUserData_simplifyCrossGroup._();

  factory GsimplifyUserData_simplifyCrossGroup(
          [Function(GsimplifyUserData_simplifyCrossGroupBuilder b) updates]) =
      _$GsimplifyUserData_simplifyCrossGroup;

  static void _initializeBuilder(
          GsimplifyUserData_simplifyCrossGroupBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GsimplifyUserData_simplifyCrossGroup_expense? get expense;
  @override
  GsimplifyUserData_simplifyCrossGroup_group get group;
  @override
  GsimplifyUserData_simplifyCrossGroup_creator get creator;
  @override
  GsimplifyUserData_simplifyCrossGroup_fromUser get fromUser;
  @override
  GsimplifyUserData_simplifyCrossGroup_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  static Serializer<GsimplifyUserData_simplifyCrossGroup> get serializer =>
      _$gsimplifyUserDataSimplifyCrossGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserData_simplifyCrossGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserData_simplifyCrossGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserData_simplifyCrossGroup.serializer,
        json,
      );
}

abstract class GsimplifyUserData_simplifyCrossGroup_expense
    implements
        Built<GsimplifyUserData_simplifyCrossGroup_expense,
            GsimplifyUserData_simplifyCrossGroup_expenseBuilder>,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GsimplifyUserData_simplifyCrossGroup_expense._();

  factory GsimplifyUserData_simplifyCrossGroup_expense(
      [Function(GsimplifyUserData_simplifyCrossGroup_expenseBuilder b)
          updates]) = _$GsimplifyUserData_simplifyCrossGroup_expense;

  static void _initializeBuilder(
          GsimplifyUserData_simplifyCrossGroup_expenseBuilder b) =>
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
  int get amount;
  @override
  String get creatorId;
  static Serializer<GsimplifyUserData_simplifyCrossGroup_expense>
      get serializer => _$gsimplifyUserDataSimplifyCrossGroupExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserData_simplifyCrossGroup_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserData_simplifyCrossGroup_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserData_simplifyCrossGroup_expense.serializer,
        json,
      );
}

abstract class GsimplifyUserData_simplifyCrossGroup_group
    implements
        Built<GsimplifyUserData_simplifyCrossGroup_group,
            GsimplifyUserData_simplifyCrossGroup_groupBuilder>,
        GSplitTransactionFields_group,
        GGroupBasic {
  GsimplifyUserData_simplifyCrossGroup_group._();

  factory GsimplifyUserData_simplifyCrossGroup_group(
      [Function(GsimplifyUserData_simplifyCrossGroup_groupBuilder b)
          updates]) = _$GsimplifyUserData_simplifyCrossGroup_group;

  static void _initializeBuilder(
          GsimplifyUserData_simplifyCrossGroup_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GsimplifyUserData_simplifyCrossGroup_group>
      get serializer => _$gsimplifyUserDataSimplifyCrossGroupGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserData_simplifyCrossGroup_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserData_simplifyCrossGroup_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserData_simplifyCrossGroup_group.serializer,
        json,
      );
}

abstract class GsimplifyUserData_simplifyCrossGroup_creator
    implements
        Built<GsimplifyUserData_simplifyCrossGroup_creator,
            GsimplifyUserData_simplifyCrossGroup_creatorBuilder>,
        GSplitTransactionFields_creator,
        GUserFields {
  GsimplifyUserData_simplifyCrossGroup_creator._();

  factory GsimplifyUserData_simplifyCrossGroup_creator(
      [Function(GsimplifyUserData_simplifyCrossGroup_creatorBuilder b)
          updates]) = _$GsimplifyUserData_simplifyCrossGroup_creator;

  static void _initializeBuilder(
          GsimplifyUserData_simplifyCrossGroup_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GsimplifyUserData_simplifyCrossGroup_creator>
      get serializer => _$gsimplifyUserDataSimplifyCrossGroupCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserData_simplifyCrossGroup_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserData_simplifyCrossGroup_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserData_simplifyCrossGroup_creator.serializer,
        json,
      );
}

abstract class GsimplifyUserData_simplifyCrossGroup_fromUser
    implements
        Built<GsimplifyUserData_simplifyCrossGroup_fromUser,
            GsimplifyUserData_simplifyCrossGroup_fromUserBuilder>,
        GSplitTransactionFields_fromUser,
        GUserFields {
  GsimplifyUserData_simplifyCrossGroup_fromUser._();

  factory GsimplifyUserData_simplifyCrossGroup_fromUser(
      [Function(GsimplifyUserData_simplifyCrossGroup_fromUserBuilder b)
          updates]) = _$GsimplifyUserData_simplifyCrossGroup_fromUser;

  static void _initializeBuilder(
          GsimplifyUserData_simplifyCrossGroup_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GsimplifyUserData_simplifyCrossGroup_fromUser>
      get serializer => _$gsimplifyUserDataSimplifyCrossGroupFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserData_simplifyCrossGroup_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserData_simplifyCrossGroup_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserData_simplifyCrossGroup_fromUser.serializer,
        json,
      );
}

abstract class GsimplifyUserData_simplifyCrossGroup_toUser
    implements
        Built<GsimplifyUserData_simplifyCrossGroup_toUser,
            GsimplifyUserData_simplifyCrossGroup_toUserBuilder>,
        GSplitTransactionFields_toUser,
        GUserFields {
  GsimplifyUserData_simplifyCrossGroup_toUser._();

  factory GsimplifyUserData_simplifyCrossGroup_toUser(
      [Function(GsimplifyUserData_simplifyCrossGroup_toUserBuilder b)
          updates]) = _$GsimplifyUserData_simplifyCrossGroup_toUser;

  static void _initializeBuilder(
          GsimplifyUserData_simplifyCrossGroup_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GsimplifyUserData_simplifyCrossGroup_toUser>
      get serializer => _$gsimplifyUserDataSimplifyCrossGroupToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserData_simplifyCrossGroup_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserData_simplifyCrossGroup_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserData_simplifyCrossGroup_toUser.serializer,
        json,
      );
}

abstract class GautoSettleWithUserData
    implements Built<GautoSettleWithUserData, GautoSettleWithUserDataBuilder> {
  GautoSettleWithUserData._();

  factory GautoSettleWithUserData(
          [Function(GautoSettleWithUserDataBuilder b) updates]) =
      _$GautoSettleWithUserData;

  static void _initializeBuilder(GautoSettleWithUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GautoSettleWithUserData_autoSettleWithUser> get autoSettleWithUser;
  static Serializer<GautoSettleWithUserData> get serializer =>
      _$gautoSettleWithUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserData.serializer,
        json,
      );
}

abstract class GautoSettleWithUserData_autoSettleWithUser
    implements
        Built<GautoSettleWithUserData_autoSettleWithUser,
            GautoSettleWithUserData_autoSettleWithUserBuilder>,
        GSplitFields {
  GautoSettleWithUserData_autoSettleWithUser._();

  factory GautoSettleWithUserData_autoSettleWithUser(
      [Function(GautoSettleWithUserData_autoSettleWithUserBuilder b)
          updates]) = _$GautoSettleWithUserData_autoSettleWithUser;

  static void _initializeBuilder(
          GautoSettleWithUserData_autoSettleWithUserBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GautoSettleWithUserData_autoSettleWithUser_fromUser get fromUser;
  @override
  GautoSettleWithUserData_autoSettleWithUser_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  static Serializer<GautoSettleWithUserData_autoSettleWithUser>
      get serializer => _$gautoSettleWithUserDataAutoSettleWithUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserData_autoSettleWithUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserData_autoSettleWithUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserData_autoSettleWithUser.serializer,
        json,
      );
}

abstract class GautoSettleWithUserData_autoSettleWithUser_fromUser
    implements
        Built<GautoSettleWithUserData_autoSettleWithUser_fromUser,
            GautoSettleWithUserData_autoSettleWithUser_fromUserBuilder>,
        GSplitFields_fromUser,
        GUserFields {
  GautoSettleWithUserData_autoSettleWithUser_fromUser._();

  factory GautoSettleWithUserData_autoSettleWithUser_fromUser(
      [Function(GautoSettleWithUserData_autoSettleWithUser_fromUserBuilder b)
          updates]) = _$GautoSettleWithUserData_autoSettleWithUser_fromUser;

  static void _initializeBuilder(
          GautoSettleWithUserData_autoSettleWithUser_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GautoSettleWithUserData_autoSettleWithUser_fromUser>
      get serializer =>
          _$gautoSettleWithUserDataAutoSettleWithUserFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserData_autoSettleWithUser_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserData_autoSettleWithUser_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserData_autoSettleWithUser_fromUser.serializer,
        json,
      );
}

abstract class GautoSettleWithUserData_autoSettleWithUser_toUser
    implements
        Built<GautoSettleWithUserData_autoSettleWithUser_toUser,
            GautoSettleWithUserData_autoSettleWithUser_toUserBuilder>,
        GSplitFields_toUser,
        GUserFields {
  GautoSettleWithUserData_autoSettleWithUser_toUser._();

  factory GautoSettleWithUserData_autoSettleWithUser_toUser(
      [Function(GautoSettleWithUserData_autoSettleWithUser_toUserBuilder b)
          updates]) = _$GautoSettleWithUserData_autoSettleWithUser_toUser;

  static void _initializeBuilder(
          GautoSettleWithUserData_autoSettleWithUser_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GautoSettleWithUserData_autoSettleWithUser_toUser>
      get serializer =>
          _$gautoSettleWithUserDataAutoSettleWithUserToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserData_autoSettleWithUser_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserData_autoSettleWithUser_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserData_autoSettleWithUser_toUser.serializer,
        json,
      );
}

abstract class GtransactionWithUserData
    implements
        Built<GtransactionWithUserData, GtransactionWithUserDataBuilder> {
  GtransactionWithUserData._();

  factory GtransactionWithUserData(
          [Function(GtransactionWithUserDataBuilder b) updates]) =
      _$GtransactionWithUserData;

  static void _initializeBuilder(GtransactionWithUserDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GtransactionWithUserData_getTransactionsWithUser>
      get getTransactionsWithUser;
  static Serializer<GtransactionWithUserData> get serializer =>
      _$gtransactionWithUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionWithUserData.serializer,
        json,
      );
}

abstract class GtransactionWithUserData_getTransactionsWithUser
    implements
        Built<GtransactionWithUserData_getTransactionsWithUser,
            GtransactionWithUserData_getTransactionsWithUserBuilder>,
        GSplitTransactionFields {
  GtransactionWithUserData_getTransactionsWithUser._();

  factory GtransactionWithUserData_getTransactionsWithUser(
      [Function(GtransactionWithUserData_getTransactionsWithUserBuilder b)
          updates]) = _$GtransactionWithUserData_getTransactionsWithUser;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsWithUserBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GtransactionWithUserData_getTransactionsWithUser_expense? get expense;
  @override
  GtransactionWithUserData_getTransactionsWithUser_group get group;
  @override
  GtransactionWithUserData_getTransactionsWithUser_creator get creator;
  @override
  GtransactionWithUserData_getTransactionsWithUser_fromUser get fromUser;
  @override
  GtransactionWithUserData_getTransactionsWithUser_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  static Serializer<GtransactionWithUserData_getTransactionsWithUser>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsWithUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsWithUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsWithUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionWithUserData_getTransactionsWithUser.serializer,
        json,
      );
}

abstract class GtransactionWithUserData_getTransactionsWithUser_expense
    implements
        Built<GtransactionWithUserData_getTransactionsWithUser_expense,
            GtransactionWithUserData_getTransactionsWithUser_expenseBuilder>,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GtransactionWithUserData_getTransactionsWithUser_expense._();

  factory GtransactionWithUserData_getTransactionsWithUser_expense(
      [Function(
              GtransactionWithUserData_getTransactionsWithUser_expenseBuilder b)
          updates]) = _$GtransactionWithUserData_getTransactionsWithUser_expense;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsWithUser_expenseBuilder b) =>
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
  int get amount;
  @override
  String get creatorId;
  static Serializer<GtransactionWithUserData_getTransactionsWithUser_expense>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsWithUserExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsWithUser_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsWithUser_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionWithUserData_getTransactionsWithUser_expense.serializer,
        json,
      );
}

abstract class GtransactionWithUserData_getTransactionsWithUser_group
    implements
        Built<GtransactionWithUserData_getTransactionsWithUser_group,
            GtransactionWithUserData_getTransactionsWithUser_groupBuilder>,
        GSplitTransactionFields_group,
        GGroupBasic {
  GtransactionWithUserData_getTransactionsWithUser_group._();

  factory GtransactionWithUserData_getTransactionsWithUser_group(
      [Function(GtransactionWithUserData_getTransactionsWithUser_groupBuilder b)
          updates]) = _$GtransactionWithUserData_getTransactionsWithUser_group;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsWithUser_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GtransactionWithUserData_getTransactionsWithUser_group>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsWithUserGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsWithUser_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsWithUser_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionWithUserData_getTransactionsWithUser_group.serializer,
        json,
      );
}

abstract class GtransactionWithUserData_getTransactionsWithUser_creator
    implements
        Built<GtransactionWithUserData_getTransactionsWithUser_creator,
            GtransactionWithUserData_getTransactionsWithUser_creatorBuilder>,
        GSplitTransactionFields_creator,
        GUserFields {
  GtransactionWithUserData_getTransactionsWithUser_creator._();

  factory GtransactionWithUserData_getTransactionsWithUser_creator(
      [Function(
              GtransactionWithUserData_getTransactionsWithUser_creatorBuilder b)
          updates]) = _$GtransactionWithUserData_getTransactionsWithUser_creator;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsWithUser_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GtransactionWithUserData_getTransactionsWithUser_creator>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsWithUserCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsWithUser_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsWithUser_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionWithUserData_getTransactionsWithUser_creator.serializer,
        json,
      );
}

abstract class GtransactionWithUserData_getTransactionsWithUser_fromUser
    implements
        Built<GtransactionWithUserData_getTransactionsWithUser_fromUser,
            GtransactionWithUserData_getTransactionsWithUser_fromUserBuilder>,
        GSplitTransactionFields_fromUser,
        GUserFields {
  GtransactionWithUserData_getTransactionsWithUser_fromUser._();

  factory GtransactionWithUserData_getTransactionsWithUser_fromUser(
      [Function(
              GtransactionWithUserData_getTransactionsWithUser_fromUserBuilder
                  b)
          updates]) = _$GtransactionWithUserData_getTransactionsWithUser_fromUser;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsWithUser_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GtransactionWithUserData_getTransactionsWithUser_fromUser>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsWithUserFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsWithUser_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsWithUser_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionWithUserData_getTransactionsWithUser_fromUser.serializer,
        json,
      );
}

abstract class GtransactionWithUserData_getTransactionsWithUser_toUser
    implements
        Built<GtransactionWithUserData_getTransactionsWithUser_toUser,
            GtransactionWithUserData_getTransactionsWithUser_toUserBuilder>,
        GSplitTransactionFields_toUser,
        GUserFields {
  GtransactionWithUserData_getTransactionsWithUser_toUser._();

  factory GtransactionWithUserData_getTransactionsWithUser_toUser(
      [Function(
              GtransactionWithUserData_getTransactionsWithUser_toUserBuilder b)
          updates]) = _$GtransactionWithUserData_getTransactionsWithUser_toUser;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsWithUser_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GtransactionWithUserData_getTransactionsWithUser_toUser>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsWithUserToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsWithUser_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsWithUser_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionWithUserData_getTransactionsWithUser_toUser.serializer,
        json,
      );
}

abstract class GtransactionMixExpenseData
    implements
        Built<GtransactionMixExpenseData, GtransactionMixExpenseDataBuilder> {
  GtransactionMixExpenseData._();

  factory GtransactionMixExpenseData(
          [Function(GtransactionMixExpenseDataBuilder b) updates]) =
      _$GtransactionMixExpenseData;

  static void _initializeBuilder(GtransactionMixExpenseDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup>
      get getTransactionsMixExpenseWithGroup;
  static Serializer<GtransactionMixExpenseData> get serializer =>
      _$gtransactionMixExpenseDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionMixExpenseData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionMixExpenseData.serializer,
        json,
      );
}

abstract class GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup
    implements
        Built<GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup,
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroupBuilder>,
        GExpenseMixSplitFields {
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup._();

  factory GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup(
          [Function(
                  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroupBuilder
                      b)
              updates]) =
      _$GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup;

  static void _initializeBuilder(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroupBuilder
              b) =>
      b..G__typename = 'ExpenseMixSplit';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense?
      get expense;
  @override
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split?
      get split;
  static Serializer<
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup>
      get serializer =>
          _$gtransactionMixExpenseDataGetTransactionsMixExpenseWithGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup
                .serializer,
            json,
          );
}

abstract class GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense
    implements
        Built<
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense,
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expenseBuilder>,
        GExpenseMixSplitFields_expense,
        GExpenseBasic {
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense._();

  factory GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense(
          [Function(
                  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expenseBuilder
                      b)
              updates]) =
      _$GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense;

  static void _initializeBuilder(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expenseBuilder
              b) =>
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
  int get amount;
  @override
  String get creatorId;
  static Serializer<
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense>
      get serializer =>
          _$gtransactionMixExpenseDataGetTransactionsMixExpenseWithGroupExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense
                .serializer,
            json,
          );
}

abstract class GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split
    implements
        Built<
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split,
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_splitBuilder>,
        GExpenseMixSplitFields_split,
        GSplitFields {
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split._();

  factory GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split(
          [Function(
                  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_splitBuilder
                      b)
              updates]) =
      _$GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split;

  static void _initializeBuilder(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_splitBuilder
              b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser
      get fromUser;
  @override
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser
      get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  static Serializer<
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split>
      get serializer =>
          _$gtransactionMixExpenseDataGetTransactionsMixExpenseWithGroupSplitSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split
                .serializer,
            json,
          );
}

abstract class GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser
    implements
        Built<
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser,
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUserBuilder>,
        GExpenseMixSplitFields_split_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser._();

  factory GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser(
          [Function(
                  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUserBuilder
                      b)
              updates]) =
      _$GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser;

  static void _initializeBuilder(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUserBuilder
              b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser>
      get serializer =>
          _$gtransactionMixExpenseDataGetTransactionsMixExpenseWithGroupSplitFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser
                .serializer,
            json,
          );
}

abstract class GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser
    implements
        Built<
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser,
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUserBuilder>,
        GExpenseMixSplitFields_split_toUser,
        GSplitFields_toUser,
        GUserFields {
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser._();

  factory GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser(
          [Function(
                  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUserBuilder
                      b)
              updates]) =
      _$GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser;

  static void _initializeBuilder(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUserBuilder
              b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser>
      get serializer =>
          _$gtransactionMixExpenseDataGetTransactionsMixExpenseWithGroupSplitToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser
                .serializer,
            json,
          );
}

abstract class GUserFields {
  String get G__typename;
  String get id;
  String? get name;
  String? get phone;
  String? get email;
  bool get isSignedUp;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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

abstract class GUserPaysFields implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  BuiltList<String> get upiIds;
  BuiltList<GUserPaysFields_owes> get owes;
  @override
  Map<String, dynamic> toJson();
}

abstract class GUserPaysFields_owes {
  String get G__typename;
  String get groupId;
  int get amount;
  Map<String, dynamic> toJson();
}

abstract class GUserPaysFieldsData
    implements
        Built<GUserPaysFieldsData, GUserPaysFieldsDataBuilder>,
        GUserPaysFields,
        GUserFields {
  GUserPaysFieldsData._();

  factory GUserPaysFieldsData(
      [Function(GUserPaysFieldsDataBuilder b) updates]) = _$GUserPaysFieldsData;

  static void _initializeBuilder(GUserPaysFieldsDataBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  BuiltList<String> get upiIds;
  @override
  BuiltList<GUserPaysFieldsData_owes> get owes;
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

abstract class GUserPaysFieldsData_owes
    implements
        Built<GUserPaysFieldsData_owes, GUserPaysFieldsData_owesBuilder>,
        GUserPaysFields_owes {
  GUserPaysFieldsData_owes._();

  factory GUserPaysFieldsData_owes(
          [Function(GUserPaysFieldsData_owesBuilder b) updates]) =
      _$GUserPaysFieldsData_owes;

  static void _initializeBuilder(GUserPaysFieldsData_owesBuilder b) =>
      b..G__typename = 'OwedInGroup';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get groupId;
  @override
  int get amount;
  static Serializer<GUserPaysFieldsData_owes> get serializer =>
      _$gUserPaysFieldsDataOwesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserPaysFieldsData_owes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserPaysFieldsData_owes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserPaysFieldsData_owes.serializer,
        json,
      );
}

abstract class GGroupBasic {
  String get G__typename;
  String get id;
  String? get name;
  Map<String, dynamic> toJson();
}

abstract class GGroupBasicData
    implements Built<GGroupBasicData, GGroupBasicDataBuilder>, GGroupBasic {
  GGroupBasicData._();

  factory GGroupBasicData([Function(GGroupBasicDataBuilder b) updates]) =
      _$GGroupBasicData;

  static void _initializeBuilder(GGroupBasicDataBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GGroupBasicData> get serializer =>
      _$gGroupBasicDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupBasicData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupBasicData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupBasicData.serializer,
        json,
      );
}

abstract class GGroupFields implements GGroupBasic {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  GGroupFields_creator get creator;
  BuiltList<GGroupFields_members> get members;
  int get owed;
  String get createdAt;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupFields_creator implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupFields_members {
  String get G__typename;
  int get owedInGroup;
  GGroupFields_members_member get member;
  Map<String, dynamic> toJson();
}

abstract class GGroupFields_members_member implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupFieldsData
    implements
        Built<GGroupFieldsData, GGroupFieldsDataBuilder>,
        GGroupFields,
        GGroupBasic {
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
  String? get name;
  @override
  GGroupFieldsData_creator get creator;
  @override
  BuiltList<GGroupFieldsData_members> get members;
  @override
  int get owed;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
        GGroupFields_members {
  GGroupFieldsData_members._();

  factory GGroupFieldsData_members(
          [Function(GGroupFieldsData_membersBuilder b) updates]) =
      _$GGroupFieldsData_members;

  static void _initializeBuilder(GGroupFieldsData_membersBuilder b) =>
      b..G__typename = 'GroupMember';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get owedInGroup;
  @override
  GGroupFieldsData_members_member get member;
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

abstract class GGroupFieldsData_members_member
    implements
        Built<GGroupFieldsData_members_member,
            GGroupFieldsData_members_memberBuilder>,
        GGroupFields_members_member,
        GUserFields {
  GGroupFieldsData_members_member._();

  factory GGroupFieldsData_members_member(
          [Function(GGroupFieldsData_members_memberBuilder b) updates]) =
      _$GGroupFieldsData_members_member;

  static void _initializeBuilder(GGroupFieldsData_members_memberBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GGroupFieldsData_members_member> get serializer =>
      _$gGroupFieldsDataMembersMemberSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupFieldsData_members_member.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupFieldsData_members_member? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupFieldsData_members_member.serializer,
        json,
      );
}

abstract class GExpenseBasic {
  String get G__typename;
  String get id;
  String get title;
  String get createdAt;
  int get amount;
  String get creatorId;
  Map<String, dynamic> toJson();
}

abstract class GExpenseBasicData
    implements
        Built<GExpenseBasicData, GExpenseBasicDataBuilder>,
        GExpenseBasic {
  GExpenseBasicData._();

  factory GExpenseBasicData([Function(GExpenseBasicDataBuilder b) updates]) =
      _$GExpenseBasicData;

  static void _initializeBuilder(GExpenseBasicDataBuilder b) =>
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
  int get amount;
  @override
  String get creatorId;
  static Serializer<GExpenseBasicData> get serializer =>
      _$gExpenseBasicDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseBasicData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseBasicData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseBasicData.serializer,
        json,
      );
}

abstract class GExpenseFields implements GExpenseBasic {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
  GExpenseFields_creator get creator;
  BuiltList<GExpenseFields_splits> get splits;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseFields_creator implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseFields_splits implements GSplitFields {
  @override
  String get G__typename;
  @override
  GExpenseFields_splits_fromUser get fromUser;
  @override
  GExpenseFields_splits_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseFieldsData
    implements
        Built<GExpenseFieldsData, GExpenseFieldsDataBuilder>,
        GExpenseFields,
        GExpenseBasic {
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
  int get amount;
  @override
  String get creatorId;
  @override
  GExpenseFieldsData_creator get creator;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  GExpenseFieldsData_splits_fromUser get fromUser;
  @override
  GExpenseFieldsData_splits_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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

abstract class GNewExpenseFields implements GExpenseBasic {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
  BuiltList<GNewExpenseFields_splits> get splits;
  @override
  Map<String, dynamic> toJson();
}

abstract class GNewExpenseFields_splits implements GSplitTransactionFields {
  @override
  String get G__typename;
  @override
  GNewExpenseFields_splits_expense? get expense;
  @override
  GNewExpenseFields_splits_group get group;
  @override
  GNewExpenseFields_splits_creator get creator;
  @override
  GNewExpenseFields_splits_fromUser get fromUser;
  @override
  GNewExpenseFields_splits_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GNewExpenseFields_splits_expense
    implements GSplitTransactionFields_expense, GExpenseBasic {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GNewExpenseFields_splits_group
    implements GSplitTransactionFields_group, GGroupBasic {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GNewExpenseFields_splits_creator
    implements GSplitTransactionFields_creator, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GNewExpenseFields_splits_fromUser
    implements GSplitTransactionFields_fromUser, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GNewExpenseFields_splits_toUser
    implements GSplitTransactionFields_toUser, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GNewExpenseFieldsData
    implements
        Built<GNewExpenseFieldsData, GNewExpenseFieldsDataBuilder>,
        GNewExpenseFields,
        GExpenseBasic {
  GNewExpenseFieldsData._();

  factory GNewExpenseFieldsData(
          [Function(GNewExpenseFieldsDataBuilder b) updates]) =
      _$GNewExpenseFieldsData;

  static void _initializeBuilder(GNewExpenseFieldsDataBuilder b) =>
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
  int get amount;
  @override
  String get creatorId;
  @override
  BuiltList<GNewExpenseFieldsData_splits> get splits;
  static Serializer<GNewExpenseFieldsData> get serializer =>
      _$gNewExpenseFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData.serializer,
        json,
      );
}

abstract class GNewExpenseFieldsData_splits
    implements
        Built<GNewExpenseFieldsData_splits,
            GNewExpenseFieldsData_splitsBuilder>,
        GNewExpenseFields_splits,
        GSplitTransactionFields {
  GNewExpenseFieldsData_splits._();

  factory GNewExpenseFieldsData_splits(
          [Function(GNewExpenseFieldsData_splitsBuilder b) updates]) =
      _$GNewExpenseFieldsData_splits;

  static void _initializeBuilder(GNewExpenseFieldsData_splitsBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GNewExpenseFieldsData_splits_expense? get expense;
  @override
  GNewExpenseFieldsData_splits_group get group;
  @override
  GNewExpenseFieldsData_splits_creator get creator;
  @override
  GNewExpenseFieldsData_splits_fromUser get fromUser;
  @override
  GNewExpenseFieldsData_splits_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  static Serializer<GNewExpenseFieldsData_splits> get serializer =>
      _$gNewExpenseFieldsDataSplitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData_splits.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData_splits? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData_splits.serializer,
        json,
      );
}

abstract class GNewExpenseFieldsData_splits_expense
    implements
        Built<GNewExpenseFieldsData_splits_expense,
            GNewExpenseFieldsData_splits_expenseBuilder>,
        GNewExpenseFields_splits_expense,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GNewExpenseFieldsData_splits_expense._();

  factory GNewExpenseFieldsData_splits_expense(
          [Function(GNewExpenseFieldsData_splits_expenseBuilder b) updates]) =
      _$GNewExpenseFieldsData_splits_expense;

  static void _initializeBuilder(
          GNewExpenseFieldsData_splits_expenseBuilder b) =>
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
  int get amount;
  @override
  String get creatorId;
  static Serializer<GNewExpenseFieldsData_splits_expense> get serializer =>
      _$gNewExpenseFieldsDataSplitsExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData_splits_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData_splits_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData_splits_expense.serializer,
        json,
      );
}

abstract class GNewExpenseFieldsData_splits_group
    implements
        Built<GNewExpenseFieldsData_splits_group,
            GNewExpenseFieldsData_splits_groupBuilder>,
        GNewExpenseFields_splits_group,
        GSplitTransactionFields_group,
        GGroupBasic {
  GNewExpenseFieldsData_splits_group._();

  factory GNewExpenseFieldsData_splits_group(
          [Function(GNewExpenseFieldsData_splits_groupBuilder b) updates]) =
      _$GNewExpenseFieldsData_splits_group;

  static void _initializeBuilder(GNewExpenseFieldsData_splits_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GNewExpenseFieldsData_splits_group> get serializer =>
      _$gNewExpenseFieldsDataSplitsGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData_splits_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData_splits_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData_splits_group.serializer,
        json,
      );
}

abstract class GNewExpenseFieldsData_splits_creator
    implements
        Built<GNewExpenseFieldsData_splits_creator,
            GNewExpenseFieldsData_splits_creatorBuilder>,
        GNewExpenseFields_splits_creator,
        GSplitTransactionFields_creator,
        GUserFields {
  GNewExpenseFieldsData_splits_creator._();

  factory GNewExpenseFieldsData_splits_creator(
          [Function(GNewExpenseFieldsData_splits_creatorBuilder b) updates]) =
      _$GNewExpenseFieldsData_splits_creator;

  static void _initializeBuilder(
          GNewExpenseFieldsData_splits_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GNewExpenseFieldsData_splits_creator> get serializer =>
      _$gNewExpenseFieldsDataSplitsCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData_splits_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData_splits_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData_splits_creator.serializer,
        json,
      );
}

abstract class GNewExpenseFieldsData_splits_fromUser
    implements
        Built<GNewExpenseFieldsData_splits_fromUser,
            GNewExpenseFieldsData_splits_fromUserBuilder>,
        GNewExpenseFields_splits_fromUser,
        GSplitTransactionFields_fromUser,
        GUserFields {
  GNewExpenseFieldsData_splits_fromUser._();

  factory GNewExpenseFieldsData_splits_fromUser(
          [Function(GNewExpenseFieldsData_splits_fromUserBuilder b) updates]) =
      _$GNewExpenseFieldsData_splits_fromUser;

  static void _initializeBuilder(
          GNewExpenseFieldsData_splits_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GNewExpenseFieldsData_splits_fromUser> get serializer =>
      _$gNewExpenseFieldsDataSplitsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData_splits_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData_splits_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData_splits_fromUser.serializer,
        json,
      );
}

abstract class GNewExpenseFieldsData_splits_toUser
    implements
        Built<GNewExpenseFieldsData_splits_toUser,
            GNewExpenseFieldsData_splits_toUserBuilder>,
        GNewExpenseFields_splits_toUser,
        GSplitTransactionFields_toUser,
        GUserFields {
  GNewExpenseFieldsData_splits_toUser._();

  factory GNewExpenseFieldsData_splits_toUser(
          [Function(GNewExpenseFieldsData_splits_toUserBuilder b) updates]) =
      _$GNewExpenseFieldsData_splits_toUser;

  static void _initializeBuilder(
          GNewExpenseFieldsData_splits_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GNewExpenseFieldsData_splits_toUser> get serializer =>
      _$gNewExpenseFieldsDataSplitsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData_splits_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData_splits_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData_splits_toUser.serializer,
        json,
      );
}

abstract class GSplitFieldsBasics {
  String get G__typename;
  String get id;
  int get amount;
  _i3.GTransactionType get transactionType;
  String get createdAt;
  String? get transactionPartGroupId;
  String get fromUserId;
  String get toUserId;
  String get creatorId;
  String? get withGroupId;
  String get groupId;
  Map<String, dynamic> toJson();
}

abstract class GSplitFieldsBasicsData
    implements
        Built<GSplitFieldsBasicsData, GSplitFieldsBasicsDataBuilder>,
        GSplitFieldsBasics {
  GSplitFieldsBasicsData._();

  factory GSplitFieldsBasicsData(
          [Function(GSplitFieldsBasicsDataBuilder b) updates]) =
      _$GSplitFieldsBasicsData;

  static void _initializeBuilder(GSplitFieldsBasicsDataBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  static Serializer<GSplitFieldsBasicsData> get serializer =>
      _$gSplitFieldsBasicsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitFieldsBasicsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsBasicsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitFieldsBasicsData.serializer,
        json,
      );
}

abstract class GSplitFields implements GSplitFieldsBasics {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  GSplitFields_fromUser get fromUser;
  GSplitFields_toUser get toUser;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitFields_fromUser implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitFields_toUser implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitFieldsData
    implements
        Built<GSplitFieldsData, GSplitFieldsDataBuilder>,
        GSplitFields,
        GSplitFieldsBasics {
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
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  @override
  GSplitFieldsData_fromUser get fromUser;
  @override
  GSplitFieldsData_toUser get toUser;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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

abstract class GSplitTransactionFields implements GSplitFields {
  @override
  String get G__typename;
  @override
  GSplitTransactionFields_fromUser get fromUser;
  @override
  GSplitTransactionFields_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  GSplitTransactionFields_expense? get expense;
  GSplitTransactionFields_group get group;
  GSplitTransactionFields_creator get creator;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitTransactionFields_fromUser
    implements GSplitFields_fromUser, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitTransactionFields_toUser
    implements GSplitFields_toUser, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitTransactionFields_expense implements GExpenseBasic {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitTransactionFields_group implements GGroupBasic {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitTransactionFields_creator implements GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitTransactionFieldsData
    implements
        Built<GSplitTransactionFieldsData, GSplitTransactionFieldsDataBuilder>,
        GSplitTransactionFields,
        GSplitFields {
  GSplitTransactionFieldsData._();

  factory GSplitTransactionFieldsData(
          [Function(GSplitTransactionFieldsDataBuilder b) updates]) =
      _$GSplitTransactionFieldsData;

  static void _initializeBuilder(GSplitTransactionFieldsDataBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GSplitTransactionFieldsData_fromUser get fromUser;
  @override
  GSplitTransactionFieldsData_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  @override
  GSplitTransactionFieldsData_expense? get expense;
  @override
  GSplitTransactionFieldsData_group get group;
  @override
  GSplitTransactionFieldsData_creator get creator;
  static Serializer<GSplitTransactionFieldsData> get serializer =>
      _$gSplitTransactionFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitTransactionFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitTransactionFieldsData.serializer,
        json,
      );
}

abstract class GSplitTransactionFieldsData_fromUser
    implements
        Built<GSplitTransactionFieldsData_fromUser,
            GSplitTransactionFieldsData_fromUserBuilder>,
        GSplitTransactionFields_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  GSplitTransactionFieldsData_fromUser._();

  factory GSplitTransactionFieldsData_fromUser(
          [Function(GSplitTransactionFieldsData_fromUserBuilder b) updates]) =
      _$GSplitTransactionFieldsData_fromUser;

  static void _initializeBuilder(
          GSplitTransactionFieldsData_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GSplitTransactionFieldsData_fromUser> get serializer =>
      _$gSplitTransactionFieldsDataFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitTransactionFieldsData_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsData_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitTransactionFieldsData_fromUser.serializer,
        json,
      );
}

abstract class GSplitTransactionFieldsData_toUser
    implements
        Built<GSplitTransactionFieldsData_toUser,
            GSplitTransactionFieldsData_toUserBuilder>,
        GSplitTransactionFields_toUser,
        GSplitFields_toUser,
        GUserFields {
  GSplitTransactionFieldsData_toUser._();

  factory GSplitTransactionFieldsData_toUser(
          [Function(GSplitTransactionFieldsData_toUserBuilder b) updates]) =
      _$GSplitTransactionFieldsData_toUser;

  static void _initializeBuilder(GSplitTransactionFieldsData_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GSplitTransactionFieldsData_toUser> get serializer =>
      _$gSplitTransactionFieldsDataToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitTransactionFieldsData_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsData_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitTransactionFieldsData_toUser.serializer,
        json,
      );
}

abstract class GSplitTransactionFieldsData_expense
    implements
        Built<GSplitTransactionFieldsData_expense,
            GSplitTransactionFieldsData_expenseBuilder>,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GSplitTransactionFieldsData_expense._();

  factory GSplitTransactionFieldsData_expense(
          [Function(GSplitTransactionFieldsData_expenseBuilder b) updates]) =
      _$GSplitTransactionFieldsData_expense;

  static void _initializeBuilder(
          GSplitTransactionFieldsData_expenseBuilder b) =>
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
  int get amount;
  @override
  String get creatorId;
  static Serializer<GSplitTransactionFieldsData_expense> get serializer =>
      _$gSplitTransactionFieldsDataExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitTransactionFieldsData_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsData_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitTransactionFieldsData_expense.serializer,
        json,
      );
}

abstract class GSplitTransactionFieldsData_group
    implements
        Built<GSplitTransactionFieldsData_group,
            GSplitTransactionFieldsData_groupBuilder>,
        GSplitTransactionFields_group,
        GGroupBasic {
  GSplitTransactionFieldsData_group._();

  factory GSplitTransactionFieldsData_group(
          [Function(GSplitTransactionFieldsData_groupBuilder b) updates]) =
      _$GSplitTransactionFieldsData_group;

  static void _initializeBuilder(GSplitTransactionFieldsData_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GSplitTransactionFieldsData_group> get serializer =>
      _$gSplitTransactionFieldsDataGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitTransactionFieldsData_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsData_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitTransactionFieldsData_group.serializer,
        json,
      );
}

abstract class GSplitTransactionFieldsData_creator
    implements
        Built<GSplitTransactionFieldsData_creator,
            GSplitTransactionFieldsData_creatorBuilder>,
        GSplitTransactionFields_creator,
        GUserFields {
  GSplitTransactionFieldsData_creator._();

  factory GSplitTransactionFieldsData_creator(
          [Function(GSplitTransactionFieldsData_creatorBuilder b) updates]) =
      _$GSplitTransactionFieldsData_creator;

  static void _initializeBuilder(
          GSplitTransactionFieldsData_creatorBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GSplitTransactionFieldsData_creator> get serializer =>
      _$gSplitTransactionFieldsDataCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitTransactionFieldsData_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsData_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitTransactionFieldsData_creator.serializer,
        json,
      );
}

abstract class GGroupWithExpenses implements GGroupFields {
  @override
  String get G__typename;
  @override
  GGroupWithExpenses_creator get creator;
  @override
  BuiltList<GGroupWithExpenses_members> get members;
  @override
  int get owed;
  @override
  String get createdAt;
  @override
  String get id;
  @override
  String? get name;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_members implements GGroupFields_members {
  @override
  String get G__typename;
  @override
  int get owedInGroup;
  @override
  GGroupWithExpenses_members_member get member;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_members_member
    implements GGroupFields_members_member, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_expenses implements GExpenseFields {
  @override
  String get G__typename;
  @override
  GGroupWithExpenses_expenses_creator get creator;
  @override
  BuiltList<GGroupWithExpenses_expenses_splits> get splits;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_expenses_splits
    implements GExpenseFields_splits, GSplitFields {
  @override
  String get G__typename;
  @override
  GGroupWithExpenses_expenses_splits_fromUser get fromUser;
  @override
  GGroupWithExpenses_expenses_splits_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  GGroupWithExpensesData_creator get creator;
  @override
  BuiltList<GGroupWithExpensesData_members> get members;
  @override
  int get owed;
  @override
  String get createdAt;
  @override
  String get id;
  @override
  String? get name;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
        GGroupFields_members {
  GGroupWithExpensesData_members._();

  factory GGroupWithExpensesData_members(
          [Function(GGroupWithExpensesData_membersBuilder b) updates]) =
      _$GGroupWithExpensesData_members;

  static void _initializeBuilder(GGroupWithExpensesData_membersBuilder b) =>
      b..G__typename = 'GroupMember';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get owedInGroup;
  @override
  GGroupWithExpensesData_members_member get member;
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

abstract class GGroupWithExpensesData_members_member
    implements
        Built<GGroupWithExpensesData_members_member,
            GGroupWithExpensesData_members_memberBuilder>,
        GGroupWithExpenses_members_member,
        GGroupFields_members_member,
        GUserFields {
  GGroupWithExpensesData_members_member._();

  factory GGroupWithExpensesData_members_member(
          [Function(GGroupWithExpensesData_members_memberBuilder b) updates]) =
      _$GGroupWithExpensesData_members_member;

  static void _initializeBuilder(
          GGroupWithExpensesData_members_memberBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GGroupWithExpensesData_members_member> get serializer =>
      _$gGroupWithExpensesDataMembersMemberSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_members_member.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_members_member? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_members_member.serializer,
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
  GGroupWithExpensesData_expenses_creator get creator;
  @override
  BuiltList<GGroupWithExpensesData_expenses_splits> get splits;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  GGroupWithExpensesData_expenses_splits_fromUser get fromUser;
  @override
  GGroupWithExpensesData_expenses_splits_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
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

abstract class GExpenseMixSplitFields {
  String get G__typename;
  GExpenseMixSplitFields_expense? get expense;
  GExpenseMixSplitFields_split? get split;
  Map<String, dynamic> toJson();
}

abstract class GExpenseMixSplitFields_expense implements GExpenseBasic {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  int get amount;
  @override
  String get creatorId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseMixSplitFields_split implements GSplitFields {
  @override
  String get G__typename;
  @override
  GExpenseMixSplitFields_split_fromUser get fromUser;
  @override
  GExpenseMixSplitFields_split_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseMixSplitFields_split_fromUser
    implements GSplitFields_fromUser, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseMixSplitFields_split_toUser
    implements GSplitFields_toUser, GUserFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseMixSplitFieldsData
    implements
        Built<GExpenseMixSplitFieldsData, GExpenseMixSplitFieldsDataBuilder>,
        GExpenseMixSplitFields {
  GExpenseMixSplitFieldsData._();

  factory GExpenseMixSplitFieldsData(
          [Function(GExpenseMixSplitFieldsDataBuilder b) updates]) =
      _$GExpenseMixSplitFieldsData;

  static void _initializeBuilder(GExpenseMixSplitFieldsDataBuilder b) =>
      b..G__typename = 'ExpenseMixSplit';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GExpenseMixSplitFieldsData_expense? get expense;
  @override
  GExpenseMixSplitFieldsData_split? get split;
  static Serializer<GExpenseMixSplitFieldsData> get serializer =>
      _$gExpenseMixSplitFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseMixSplitFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseMixSplitFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseMixSplitFieldsData.serializer,
        json,
      );
}

abstract class GExpenseMixSplitFieldsData_expense
    implements
        Built<GExpenseMixSplitFieldsData_expense,
            GExpenseMixSplitFieldsData_expenseBuilder>,
        GExpenseMixSplitFields_expense,
        GExpenseBasic {
  GExpenseMixSplitFieldsData_expense._();

  factory GExpenseMixSplitFieldsData_expense(
          [Function(GExpenseMixSplitFieldsData_expenseBuilder b) updates]) =
      _$GExpenseMixSplitFieldsData_expense;

  static void _initializeBuilder(GExpenseMixSplitFieldsData_expenseBuilder b) =>
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
  int get amount;
  @override
  String get creatorId;
  static Serializer<GExpenseMixSplitFieldsData_expense> get serializer =>
      _$gExpenseMixSplitFieldsDataExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseMixSplitFieldsData_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseMixSplitFieldsData_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseMixSplitFieldsData_expense.serializer,
        json,
      );
}

abstract class GExpenseMixSplitFieldsData_split
    implements
        Built<GExpenseMixSplitFieldsData_split,
            GExpenseMixSplitFieldsData_splitBuilder>,
        GExpenseMixSplitFields_split,
        GSplitFields {
  GExpenseMixSplitFieldsData_split._();

  factory GExpenseMixSplitFieldsData_split(
          [Function(GExpenseMixSplitFieldsData_splitBuilder b) updates]) =
      _$GExpenseMixSplitFieldsData_split;

  static void _initializeBuilder(GExpenseMixSplitFieldsData_splitBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GExpenseMixSplitFieldsData_split_fromUser get fromUser;
  @override
  GExpenseMixSplitFieldsData_split_toUser get toUser;
  @override
  String get id;
  @override
  int get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String? get transactionPartGroupId;
  @override
  String get fromUserId;
  @override
  String get toUserId;
  @override
  String get creatorId;
  @override
  String? get withGroupId;
  @override
  String get groupId;
  static Serializer<GExpenseMixSplitFieldsData_split> get serializer =>
      _$gExpenseMixSplitFieldsDataSplitSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseMixSplitFieldsData_split.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseMixSplitFieldsData_split? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseMixSplitFieldsData_split.serializer,
        json,
      );
}

abstract class GExpenseMixSplitFieldsData_split_fromUser
    implements
        Built<GExpenseMixSplitFieldsData_split_fromUser,
            GExpenseMixSplitFieldsData_split_fromUserBuilder>,
        GExpenseMixSplitFields_split_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  GExpenseMixSplitFieldsData_split_fromUser._();

  factory GExpenseMixSplitFieldsData_split_fromUser(
      [Function(GExpenseMixSplitFieldsData_split_fromUserBuilder b)
          updates]) = _$GExpenseMixSplitFieldsData_split_fromUser;

  static void _initializeBuilder(
          GExpenseMixSplitFieldsData_split_fromUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GExpenseMixSplitFieldsData_split_fromUser> get serializer =>
      _$gExpenseMixSplitFieldsDataSplitFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseMixSplitFieldsData_split_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseMixSplitFieldsData_split_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseMixSplitFieldsData_split_fromUser.serializer,
        json,
      );
}

abstract class GExpenseMixSplitFieldsData_split_toUser
    implements
        Built<GExpenseMixSplitFieldsData_split_toUser,
            GExpenseMixSplitFieldsData_split_toUserBuilder>,
        GExpenseMixSplitFields_split_toUser,
        GSplitFields_toUser,
        GUserFields {
  GExpenseMixSplitFieldsData_split_toUser._();

  factory GExpenseMixSplitFieldsData_split_toUser(
      [Function(GExpenseMixSplitFieldsData_split_toUserBuilder b)
          updates]) = _$GExpenseMixSplitFieldsData_split_toUser;

  static void _initializeBuilder(
          GExpenseMixSplitFieldsData_split_toUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  bool get isSignedUp;
  static Serializer<GExpenseMixSplitFieldsData_split_toUser> get serializer =>
      _$gExpenseMixSplitFieldsDataSplitToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseMixSplitFieldsData_split_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseMixSplitFieldsData_split_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseMixSplitFieldsData_split_toUser.serializer,
        json,
      );
}
