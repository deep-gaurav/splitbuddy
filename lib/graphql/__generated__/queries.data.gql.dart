// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:billdivide/__generated__/schema.schema.gql.dart' as _i3;
import 'package:billdivide/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i2;

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

abstract class GuserConfigData
    implements Built<GuserConfigData, GuserConfigDataBuilder> {
  GuserConfigData._();

  factory GuserConfigData([Function(GuserConfigDataBuilder b) updates]) =
      _$GuserConfigData;

  static void _initializeBuilder(GuserConfigDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GuserConfigData_config get config;
  static Serializer<GuserConfigData> get serializer =>
      _$guserConfigDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserConfigData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserConfigData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserConfigData.serializer,
        json,
      );
}

abstract class GuserConfigData_config
    implements
        Built<GuserConfigData_config, GuserConfigData_configBuilder>,
        GConfigFields {
  GuserConfigData_config._();

  factory GuserConfigData_config(
          [Function(GuserConfigData_configBuilder b) updates]) =
      _$GuserConfigData_config;

  static void _initializeBuilder(GuserConfigData_configBuilder b) =>
      b..G__typename = 'UserConfig';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get defaultCurrencyId;
  static Serializer<GuserConfigData_config> get serializer =>
      _$guserConfigDataConfigSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GuserConfigData_config.serializer,
        this,
      ) as Map<String, dynamic>);

  static GuserConfigData_config? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GuserConfigData_config.serializer,
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
  BuiltList<GgroupsData_groups_members_owedInGroup> get owedInGroup;
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

abstract class GgroupsData_groups_members_owedInGroup
    implements
        Built<GgroupsData_groups_members_owedInGroup,
            GgroupsData_groups_members_owedInGroupBuilder>,
        GGroupFields_members_owedInGroup,
        GAmountFields {
  GgroupsData_groups_members_owedInGroup._();

  factory GgroupsData_groups_members_owedInGroup(
          [Function(GgroupsData_groups_members_owedInGroupBuilder b) updates]) =
      _$GgroupsData_groups_members_owedInGroup;

  static void _initializeBuilder(
          GgroupsData_groups_members_owedInGroupBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GgroupsData_groups_members_owedInGroup> get serializer =>
      _$ggroupsDataGroupsMembersOwedInGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupsData_groups_members_owedInGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupsData_groups_members_owedInGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupsData_groups_members_owedInGroup.serializer,
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
  Ginteracted_usersData_interactedUsers_owes_amount get amount;
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

abstract class Ginteracted_usersData_interactedUsers_owes_amount
    implements
        Built<Ginteracted_usersData_interactedUsers_owes_amount,
            Ginteracted_usersData_interactedUsers_owes_amountBuilder>,
        GUserPaysFields_owes_amount,
        GAmountFields {
  Ginteracted_usersData_interactedUsers_owes_amount._();

  factory Ginteracted_usersData_interactedUsers_owes_amount(
      [Function(Ginteracted_usersData_interactedUsers_owes_amountBuilder b)
          updates]) = _$Ginteracted_usersData_interactedUsers_owes_amount;

  static void _initializeBuilder(
          Ginteracted_usersData_interactedUsers_owes_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<Ginteracted_usersData_interactedUsers_owes_amount>
      get serializer =>
          _$ginteractedUsersDataInteractedUsersOwesAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Ginteracted_usersData_interactedUsers_owes_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static Ginteracted_usersData_interactedUsers_owes_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Ginteracted_usersData_interactedUsers_owes_amount.serializer,
        json,
      );
}

abstract class GrefreshData
    implements Built<GrefreshData, GrefreshDataBuilder> {
  GrefreshData._();

  factory GrefreshData([Function(GrefreshDataBuilder b) updates]) =
      _$GrefreshData;

  static void _initializeBuilder(GrefreshDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GrefreshData_user get user;
  GrefreshData_config get config;
  BuiltList<GrefreshData_groups> get groups;
  BuiltList<GrefreshData_interactedUsers> get interactedUsers;
  BuiltList<GrefreshData_currencies> get currencies;
  static Serializer<GrefreshData> get serializer => _$grefreshDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData.serializer,
        json,
      );
}

abstract class GrefreshData_user {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GrefreshData_user> get serializer =>
      _i2.InlineFragmentSerializer<GrefreshData_user>(
        'GrefreshData_user',
        GrefreshData_user__base,
        {
          'Registered': GrefreshData_user__asRegistered,
          'Unregistered': GrefreshData_user__asUnregistered,
        },
      );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_user.serializer,
        json,
      );
}

abstract class GrefreshData_user__base
    implements
        Built<GrefreshData_user__base, GrefreshData_user__baseBuilder>,
        GrefreshData_user {
  GrefreshData_user__base._();

  factory GrefreshData_user__base(
          [Function(GrefreshData_user__baseBuilder b) updates]) =
      _$GrefreshData_user__base;

  static void _initializeBuilder(GrefreshData_user__baseBuilder b) =>
      b..G__typename = 'UserAuth';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GrefreshData_user__base> get serializer =>
      _$grefreshDataUserBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_user__base.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_user__base? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_user__base.serializer,
        json,
      );
}

abstract class GrefreshData_user__asRegistered
    implements
        Built<GrefreshData_user__asRegistered,
            GrefreshData_user__asRegisteredBuilder>,
        GrefreshData_user {
  GrefreshData_user__asRegistered._();

  factory GrefreshData_user__asRegistered(
          [Function(GrefreshData_user__asRegisteredBuilder b) updates]) =
      _$GrefreshData_user__asRegistered;

  static void _initializeBuilder(GrefreshData_user__asRegisteredBuilder b) =>
      b..G__typename = 'Registered';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GrefreshData_user__asRegistered_user get user;
  static Serializer<GrefreshData_user__asRegistered> get serializer =>
      _$grefreshDataUserAsRegisteredSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_user__asRegistered.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_user__asRegistered? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_user__asRegistered.serializer,
        json,
      );
}

abstract class GrefreshData_user__asRegistered_user
    implements
        Built<GrefreshData_user__asRegistered_user,
            GrefreshData_user__asRegistered_userBuilder>,
        GUserFields {
  GrefreshData_user__asRegistered_user._();

  factory GrefreshData_user__asRegistered_user(
          [Function(GrefreshData_user__asRegistered_userBuilder b) updates]) =
      _$GrefreshData_user__asRegistered_user;

  static void _initializeBuilder(
          GrefreshData_user__asRegistered_userBuilder b) =>
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
  static Serializer<GrefreshData_user__asRegistered_user> get serializer =>
      _$grefreshDataUserAsRegisteredUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_user__asRegistered_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_user__asRegistered_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_user__asRegistered_user.serializer,
        json,
      );
}

abstract class GrefreshData_user__asUnregistered
    implements
        Built<GrefreshData_user__asUnregistered,
            GrefreshData_user__asUnregisteredBuilder>,
        GrefreshData_user {
  GrefreshData_user__asUnregistered._();

  factory GrefreshData_user__asUnregistered(
          [Function(GrefreshData_user__asUnregisteredBuilder b) updates]) =
      _$GrefreshData_user__asUnregistered;

  static void _initializeBuilder(GrefreshData_user__asUnregisteredBuilder b) =>
      b..G__typename = 'Unregistered';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get phone;
  static Serializer<GrefreshData_user__asUnregistered> get serializer =>
      _$grefreshDataUserAsUnregisteredSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_user__asUnregistered.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_user__asUnregistered? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_user__asUnregistered.serializer,
        json,
      );
}

abstract class GrefreshData_config
    implements
        Built<GrefreshData_config, GrefreshData_configBuilder>,
        GConfigFields {
  GrefreshData_config._();

  factory GrefreshData_config(
      [Function(GrefreshData_configBuilder b) updates]) = _$GrefreshData_config;

  static void _initializeBuilder(GrefreshData_configBuilder b) =>
      b..G__typename = 'UserConfig';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get defaultCurrencyId;
  static Serializer<GrefreshData_config> get serializer =>
      _$grefreshDataConfigSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_config.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_config? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_config.serializer,
        json,
      );
}

abstract class GrefreshData_groups
    implements
        Built<GrefreshData_groups, GrefreshData_groupsBuilder>,
        GGroupFields {
  GrefreshData_groups._();

  factory GrefreshData_groups(
      [Function(GrefreshData_groupsBuilder b) updates]) = _$GrefreshData_groups;

  static void _initializeBuilder(GrefreshData_groupsBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GrefreshData_groups_creator get creator;
  @override
  BuiltList<GrefreshData_groups_members> get members;
  @override
  String get createdAt;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GrefreshData_groups> get serializer =>
      _$grefreshDataGroupsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_groups.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_groups? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_groups.serializer,
        json,
      );
}

abstract class GrefreshData_groups_creator
    implements
        Built<GrefreshData_groups_creator, GrefreshData_groups_creatorBuilder>,
        GGroupFields_creator,
        GUserFields {
  GrefreshData_groups_creator._();

  factory GrefreshData_groups_creator(
          [Function(GrefreshData_groups_creatorBuilder b) updates]) =
      _$GrefreshData_groups_creator;

  static void _initializeBuilder(GrefreshData_groups_creatorBuilder b) =>
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
  static Serializer<GrefreshData_groups_creator> get serializer =>
      _$grefreshDataGroupsCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_groups_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_groups_creator? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_groups_creator.serializer,
        json,
      );
}

abstract class GrefreshData_groups_members
    implements
        Built<GrefreshData_groups_members, GrefreshData_groups_membersBuilder>,
        GGroupFields_members {
  GrefreshData_groups_members._();

  factory GrefreshData_groups_members(
          [Function(GrefreshData_groups_membersBuilder b) updates]) =
      _$GrefreshData_groups_members;

  static void _initializeBuilder(GrefreshData_groups_membersBuilder b) =>
      b..G__typename = 'GroupMember';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GrefreshData_groups_members_owedInGroup> get owedInGroup;
  @override
  GrefreshData_groups_members_member get member;
  static Serializer<GrefreshData_groups_members> get serializer =>
      _$grefreshDataGroupsMembersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_groups_members.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_groups_members? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_groups_members.serializer,
        json,
      );
}

abstract class GrefreshData_groups_members_owedInGroup
    implements
        Built<GrefreshData_groups_members_owedInGroup,
            GrefreshData_groups_members_owedInGroupBuilder>,
        GGroupFields_members_owedInGroup,
        GAmountFields {
  GrefreshData_groups_members_owedInGroup._();

  factory GrefreshData_groups_members_owedInGroup(
      [Function(GrefreshData_groups_members_owedInGroupBuilder b)
          updates]) = _$GrefreshData_groups_members_owedInGroup;

  static void _initializeBuilder(
          GrefreshData_groups_members_owedInGroupBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GrefreshData_groups_members_owedInGroup> get serializer =>
      _$grefreshDataGroupsMembersOwedInGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_groups_members_owedInGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_groups_members_owedInGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_groups_members_owedInGroup.serializer,
        json,
      );
}

abstract class GrefreshData_groups_members_member
    implements
        Built<GrefreshData_groups_members_member,
            GrefreshData_groups_members_memberBuilder>,
        GGroupFields_members_member,
        GUserFields {
  GrefreshData_groups_members_member._();

  factory GrefreshData_groups_members_member(
          [Function(GrefreshData_groups_members_memberBuilder b) updates]) =
      _$GrefreshData_groups_members_member;

  static void _initializeBuilder(GrefreshData_groups_members_memberBuilder b) =>
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
  static Serializer<GrefreshData_groups_members_member> get serializer =>
      _$grefreshDataGroupsMembersMemberSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_groups_members_member.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_groups_members_member? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_groups_members_member.serializer,
        json,
      );
}

abstract class GrefreshData_interactedUsers
    implements
        Built<GrefreshData_interactedUsers,
            GrefreshData_interactedUsersBuilder>,
        GUserPaysFields {
  GrefreshData_interactedUsers._();

  factory GrefreshData_interactedUsers(
          [Function(GrefreshData_interactedUsersBuilder b) updates]) =
      _$GrefreshData_interactedUsers;

  static void _initializeBuilder(GrefreshData_interactedUsersBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String> get upiIds;
  @override
  BuiltList<GrefreshData_interactedUsers_owes> get owes;
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
  static Serializer<GrefreshData_interactedUsers> get serializer =>
      _$grefreshDataInteractedUsersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_interactedUsers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_interactedUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_interactedUsers.serializer,
        json,
      );
}

abstract class GrefreshData_interactedUsers_owes
    implements
        Built<GrefreshData_interactedUsers_owes,
            GrefreshData_interactedUsers_owesBuilder>,
        GUserPaysFields_owes {
  GrefreshData_interactedUsers_owes._();

  factory GrefreshData_interactedUsers_owes(
          [Function(GrefreshData_interactedUsers_owesBuilder b) updates]) =
      _$GrefreshData_interactedUsers_owes;

  static void _initializeBuilder(GrefreshData_interactedUsers_owesBuilder b) =>
      b..G__typename = 'OwedInGroup';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get groupId;
  @override
  GrefreshData_interactedUsers_owes_amount get amount;
  static Serializer<GrefreshData_interactedUsers_owes> get serializer =>
      _$grefreshDataInteractedUsersOwesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_interactedUsers_owes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_interactedUsers_owes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_interactedUsers_owes.serializer,
        json,
      );
}

abstract class GrefreshData_interactedUsers_owes_amount
    implements
        Built<GrefreshData_interactedUsers_owes_amount,
            GrefreshData_interactedUsers_owes_amountBuilder>,
        GUserPaysFields_owes_amount,
        GAmountFields {
  GrefreshData_interactedUsers_owes_amount._();

  factory GrefreshData_interactedUsers_owes_amount(
      [Function(GrefreshData_interactedUsers_owes_amountBuilder b)
          updates]) = _$GrefreshData_interactedUsers_owes_amount;

  static void _initializeBuilder(
          GrefreshData_interactedUsers_owes_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GrefreshData_interactedUsers_owes_amount> get serializer =>
      _$grefreshDataInteractedUsersOwesAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_interactedUsers_owes_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_interactedUsers_owes_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_interactedUsers_owes_amount.serializer,
        json,
      );
}

abstract class GrefreshData_currencies
    implements
        Built<GrefreshData_currencies, GrefreshData_currenciesBuilder>,
        GCurrencyFields {
  GrefreshData_currencies._();

  factory GrefreshData_currencies(
          [Function(GrefreshData_currenciesBuilder b) updates]) =
      _$GrefreshData_currencies;

  static void _initializeBuilder(GrefreshData_currenciesBuilder b) =>
      b..G__typename = 'Currency';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  double get rate;
  @override
  String get symbol;
  @override
  String get displayName;
  @override
  int get decimals;
  static Serializer<GrefreshData_currencies> get serializer =>
      _$grefreshDataCurrenciesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrefreshData_currencies.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrefreshData_currencies? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrefreshData_currencies.serializer,
        json,
      );
}

abstract class GcurrenciesData
    implements Built<GcurrenciesData, GcurrenciesDataBuilder> {
  GcurrenciesData._();

  factory GcurrenciesData([Function(GcurrenciesDataBuilder b) updates]) =
      _$GcurrenciesData;

  static void _initializeBuilder(GcurrenciesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GcurrenciesData_currencies> get currencies;
  static Serializer<GcurrenciesData> get serializer =>
      _$gcurrenciesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrenciesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrenciesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrenciesData.serializer,
        json,
      );
}

abstract class GcurrenciesData_currencies
    implements
        Built<GcurrenciesData_currencies, GcurrenciesData_currenciesBuilder>,
        GCurrencyFields {
  GcurrenciesData_currencies._();

  factory GcurrenciesData_currencies(
          [Function(GcurrenciesData_currenciesBuilder b) updates]) =
      _$GcurrenciesData_currencies;

  static void _initializeBuilder(GcurrenciesData_currenciesBuilder b) =>
      b..G__typename = 'Currency';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  double get rate;
  @override
  String get symbol;
  @override
  String get displayName;
  @override
  int get decimals;
  static Serializer<GcurrenciesData_currencies> get serializer =>
      _$gcurrenciesDataCurrenciesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrenciesData_currencies.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrenciesData_currencies? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrenciesData_currencies.serializer,
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GgroupData_group_expenses_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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
  GgroupData_group_expenses_splits_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GgroupData_group_expenses_splits_amount
    implements
        Built<GgroupData_group_expenses_splits_amount,
            GgroupData_group_expenses_splits_amountBuilder>,
        GGroupWithExpenses_expenses_splits_amount,
        GExpenseFields_splits_amount,
        GSplitFields_amount,
        GAmountFields {
  GgroupData_group_expenses_splits_amount._();

  factory GgroupData_group_expenses_splits_amount(
      [Function(GgroupData_group_expenses_splits_amountBuilder b)
          updates]) = _$GgroupData_group_expenses_splits_amount;

  static void _initializeBuilder(
          GgroupData_group_expenses_splits_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GgroupData_group_expenses_splits_amount> get serializer =>
      _$ggroupDataGroupExpensesSplitsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_expenses_splits_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_expenses_splits_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_expenses_splits_amount.serializer,
        json,
      );
}

abstract class GgroupData_group_expenses_amount
    implements
        Built<GgroupData_group_expenses_amount,
            GgroupData_group_expenses_amountBuilder>,
        GGroupWithExpenses_expenses_amount,
        GExpenseFields_amount,
        GAmountFields {
  GgroupData_group_expenses_amount._();

  factory GgroupData_group_expenses_amount(
          [Function(GgroupData_group_expenses_amountBuilder b) updates]) =
      _$GgroupData_group_expenses_amount;

  static void _initializeBuilder(GgroupData_group_expenses_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GgroupData_group_expenses_amount> get serializer =>
      _$ggroupDataGroupExpensesAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_expenses_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_expenses_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_expenses_amount.serializer,
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
  BuiltList<GgroupData_group_members_owedInGroup> get owedInGroup;
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

abstract class GgroupData_group_members_owedInGroup
    implements
        Built<GgroupData_group_members_owedInGroup,
            GgroupData_group_members_owedInGroupBuilder>,
        GGroupWithExpenses_members_owedInGroup,
        GAmountFields {
  GgroupData_group_members_owedInGroup._();

  factory GgroupData_group_members_owedInGroup(
          [Function(GgroupData_group_members_owedInGroupBuilder b) updates]) =
      _$GgroupData_group_members_owedInGroup;

  static void _initializeBuilder(
          GgroupData_group_members_owedInGroupBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GgroupData_group_members_owedInGroup> get serializer =>
      _$ggroupDataGroupMembersOwedInGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgroupData_group_members_owedInGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgroupData_group_members_owedInGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgroupData_group_members_owedInGroup.serializer,
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
  BuiltList<Gcreate_groupData_createGroup_members_owedInGroup> get owedInGroup;
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

abstract class Gcreate_groupData_createGroup_members_owedInGroup
    implements
        Built<Gcreate_groupData_createGroup_members_owedInGroup,
            Gcreate_groupData_createGroup_members_owedInGroupBuilder>,
        GGroupFields_members_owedInGroup,
        GAmountFields {
  Gcreate_groupData_createGroup_members_owedInGroup._();

  factory Gcreate_groupData_createGroup_members_owedInGroup(
      [Function(Gcreate_groupData_createGroup_members_owedInGroupBuilder b)
          updates]) = _$Gcreate_groupData_createGroup_members_owedInGroup;

  static void _initializeBuilder(
          Gcreate_groupData_createGroup_members_owedInGroupBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<Gcreate_groupData_createGroup_members_owedInGroup>
      get serializer =>
          _$gcreateGroupDataCreateGroupMembersOwedInGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_groupData_createGroup_members_owedInGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_groupData_createGroup_members_owedInGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_groupData_createGroup_members_owedInGroup.serializer,
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  Gadd_expenseData_addExpense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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
  Gadd_expenseData_addExpense_splits_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  Gadd_expenseData_addExpense_splits_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class Gadd_expenseData_addExpense_splits_expense_amount
    implements
        Built<Gadd_expenseData_addExpense_splits_expense_amount,
            Gadd_expenseData_addExpense_splits_expense_amountBuilder>,
        GNewExpenseFields_splits_expense_amount,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  Gadd_expenseData_addExpense_splits_expense_amount._();

  factory Gadd_expenseData_addExpense_splits_expense_amount(
      [Function(Gadd_expenseData_addExpense_splits_expense_amountBuilder b)
          updates]) = _$Gadd_expenseData_addExpense_splits_expense_amount;

  static void _initializeBuilder(
          Gadd_expenseData_addExpense_splits_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<Gadd_expenseData_addExpense_splits_expense_amount>
      get serializer =>
          _$gaddExpenseDataAddExpenseSplitsExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_splits_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_splits_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_splits_expense_amount.serializer,
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

abstract class Gadd_expenseData_addExpense_splits_amount
    implements
        Built<Gadd_expenseData_addExpense_splits_amount,
            Gadd_expenseData_addExpense_splits_amountBuilder>,
        GNewExpenseFields_splits_amount,
        GSplitTransactionFields_amount,
        GAmountFields {
  Gadd_expenseData_addExpense_splits_amount._();

  factory Gadd_expenseData_addExpense_splits_amount(
      [Function(Gadd_expenseData_addExpense_splits_amountBuilder b)
          updates]) = _$Gadd_expenseData_addExpense_splits_amount;

  static void _initializeBuilder(
          Gadd_expenseData_addExpense_splits_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<Gadd_expenseData_addExpense_splits_amount> get serializer =>
      _$gaddExpenseDataAddExpenseSplitsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_splits_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_splits_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_splits_amount.serializer,
        json,
      );
}

abstract class Gadd_expenseData_addExpense_amount
    implements
        Built<Gadd_expenseData_addExpense_amount,
            Gadd_expenseData_addExpense_amountBuilder>,
        GNewExpenseFields_amount,
        GAmountFields {
  Gadd_expenseData_addExpense_amount._();

  factory Gadd_expenseData_addExpense_amount(
          [Function(Gadd_expenseData_addExpense_amountBuilder b) updates]) =
      _$Gadd_expenseData_addExpense_amount;

  static void _initializeBuilder(Gadd_expenseData_addExpense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<Gadd_expenseData_addExpense_amount> get serializer =>
      _$gaddExpenseDataAddExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_expenseData_addExpense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_expenseData_addExpense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_expenseData_addExpense_amount.serializer,
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
  BuiltList<
          GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup>
      get owedInGroup;
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

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup
    implements
        Built<
            GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup,
            GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroupBuilder>,
        GGroupFields_members_owedInGroup,
        GAmountFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroupBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroupBuilder
              b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseGroupMembersOwedInGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup
                .serializer,
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount
      get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount
      get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount
    implements
        Built<
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount,
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amountBuilder>,
        GNewExpenseFields_splits_expense_amount,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amountBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amountBuilder
              b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseSplitsExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount
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

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount
    implements
        Built<
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount,
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amountBuilder>,
        GNewExpenseFields_splits_amount,
        GSplitTransactionFields_amount,
        GAmountFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amountBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amountBuilder
              b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseSplitsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount
                .serializer,
            json,
          );
}

abstract class GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount
    implements
        Built<GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount,
            GcreateNonGroupExpenseData_addNonGroupExpense_expense_amountBuilder>,
        GNewExpenseFields_amount,
        GAmountFields {
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount._();

  factory GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount(
          [Function(
                  GcreateNonGroupExpenseData_addNonGroupExpense_expense_amountBuilder
                      b)
              updates]) =
      _$GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount;

  static void _initializeBuilder(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_amountBuilder
              b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount>
      get serializer =>
          _$gcreateNonGroupExpenseDataAddNonGroupExpenseExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount.serializer,
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
        GSplitTransactionFields {
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
  GsettleInGroupData_settleInGroup_expense? get expense;
  @override
  GsettleInGroupData_settleInGroup_group get group;
  @override
  GsettleInGroupData_settleInGroup_creator get creator;
  @override
  GsettleInGroupData_settleInGroup_fromUser get fromUser;
  @override
  GsettleInGroupData_settleInGroup_toUser get toUser;
  @override
  String get id;
  @override
  GsettleInGroupData_settleInGroup_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GsettleInGroupData_settleInGroup_expense
    implements
        Built<GsettleInGroupData_settleInGroup_expense,
            GsettleInGroupData_settleInGroup_expenseBuilder>,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GsettleInGroupData_settleInGroup_expense._();

  factory GsettleInGroupData_settleInGroup_expense(
      [Function(GsettleInGroupData_settleInGroup_expenseBuilder b)
          updates]) = _$GsettleInGroupData_settleInGroup_expense;

  static void _initializeBuilder(
          GsettleInGroupData_settleInGroup_expenseBuilder b) =>
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GsettleInGroupData_settleInGroup_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<GsettleInGroupData_settleInGroup_expense> get serializer =>
      _$gsettleInGroupDataSettleInGroupExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupData_settleInGroup_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupData_settleInGroup_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupData_settleInGroup_expense.serializer,
        json,
      );
}

abstract class GsettleInGroupData_settleInGroup_expense_amount
    implements
        Built<GsettleInGroupData_settleInGroup_expense_amount,
            GsettleInGroupData_settleInGroup_expense_amountBuilder>,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GsettleInGroupData_settleInGroup_expense_amount._();

  factory GsettleInGroupData_settleInGroup_expense_amount(
      [Function(GsettleInGroupData_settleInGroup_expense_amountBuilder b)
          updates]) = _$GsettleInGroupData_settleInGroup_expense_amount;

  static void _initializeBuilder(
          GsettleInGroupData_settleInGroup_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GsettleInGroupData_settleInGroup_expense_amount>
      get serializer =>
          _$gsettleInGroupDataSettleInGroupExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupData_settleInGroup_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupData_settleInGroup_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupData_settleInGroup_expense_amount.serializer,
        json,
      );
}

abstract class GsettleInGroupData_settleInGroup_group
    implements
        Built<GsettleInGroupData_settleInGroup_group,
            GsettleInGroupData_settleInGroup_groupBuilder>,
        GSplitTransactionFields_group,
        GGroupBasic {
  GsettleInGroupData_settleInGroup_group._();

  factory GsettleInGroupData_settleInGroup_group(
          [Function(GsettleInGroupData_settleInGroup_groupBuilder b) updates]) =
      _$GsettleInGroupData_settleInGroup_group;

  static void _initializeBuilder(
          GsettleInGroupData_settleInGroup_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GsettleInGroupData_settleInGroup_group> get serializer =>
      _$gsettleInGroupDataSettleInGroupGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupData_settleInGroup_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupData_settleInGroup_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupData_settleInGroup_group.serializer,
        json,
      );
}

abstract class GsettleInGroupData_settleInGroup_creator
    implements
        Built<GsettleInGroupData_settleInGroup_creator,
            GsettleInGroupData_settleInGroup_creatorBuilder>,
        GSplitTransactionFields_creator,
        GUserFields {
  GsettleInGroupData_settleInGroup_creator._();

  factory GsettleInGroupData_settleInGroup_creator(
      [Function(GsettleInGroupData_settleInGroup_creatorBuilder b)
          updates]) = _$GsettleInGroupData_settleInGroup_creator;

  static void _initializeBuilder(
          GsettleInGroupData_settleInGroup_creatorBuilder b) =>
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
  static Serializer<GsettleInGroupData_settleInGroup_creator> get serializer =>
      _$gsettleInGroupDataSettleInGroupCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupData_settleInGroup_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupData_settleInGroup_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupData_settleInGroup_creator.serializer,
        json,
      );
}

abstract class GsettleInGroupData_settleInGroup_fromUser
    implements
        Built<GsettleInGroupData_settleInGroup_fromUser,
            GsettleInGroupData_settleInGroup_fromUserBuilder>,
        GSplitTransactionFields_fromUser,
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
        GSplitTransactionFields_toUser,
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

abstract class GsettleInGroupData_settleInGroup_amount
    implements
        Built<GsettleInGroupData_settleInGroup_amount,
            GsettleInGroupData_settleInGroup_amountBuilder>,
        GSplitTransactionFields_amount,
        GAmountFields {
  GsettleInGroupData_settleInGroup_amount._();

  factory GsettleInGroupData_settleInGroup_amount(
      [Function(GsettleInGroupData_settleInGroup_amountBuilder b)
          updates]) = _$GsettleInGroupData_settleInGroup_amount;

  static void _initializeBuilder(
          GsettleInGroupData_settleInGroup_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GsettleInGroupData_settleInGroup_amount> get serializer =>
      _$gsettleInGroupDataSettleInGroupAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsettleInGroupData_settleInGroup_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsettleInGroupData_settleInGroup_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsettleInGroupData_settleInGroup_amount.serializer,
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
  GsimplifyUserData_simplifyCrossGroup_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GsimplifyUserData_simplifyCrossGroup_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class GsimplifyUserData_simplifyCrossGroup_expense_amount
    implements
        Built<GsimplifyUserData_simplifyCrossGroup_expense_amount,
            GsimplifyUserData_simplifyCrossGroup_expense_amountBuilder>,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GsimplifyUserData_simplifyCrossGroup_expense_amount._();

  factory GsimplifyUserData_simplifyCrossGroup_expense_amount(
      [Function(GsimplifyUserData_simplifyCrossGroup_expense_amountBuilder b)
          updates]) = _$GsimplifyUserData_simplifyCrossGroup_expense_amount;

  static void _initializeBuilder(
          GsimplifyUserData_simplifyCrossGroup_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GsimplifyUserData_simplifyCrossGroup_expense_amount>
      get serializer =>
          _$gsimplifyUserDataSimplifyCrossGroupExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserData_simplifyCrossGroup_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserData_simplifyCrossGroup_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserData_simplifyCrossGroup_expense_amount.serializer,
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

abstract class GsimplifyUserData_simplifyCrossGroup_amount
    implements
        Built<GsimplifyUserData_simplifyCrossGroup_amount,
            GsimplifyUserData_simplifyCrossGroup_amountBuilder>,
        GSplitTransactionFields_amount,
        GAmountFields {
  GsimplifyUserData_simplifyCrossGroup_amount._();

  factory GsimplifyUserData_simplifyCrossGroup_amount(
      [Function(GsimplifyUserData_simplifyCrossGroup_amountBuilder b)
          updates]) = _$GsimplifyUserData_simplifyCrossGroup_amount;

  static void _initializeBuilder(
          GsimplifyUserData_simplifyCrossGroup_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GsimplifyUserData_simplifyCrossGroup_amount>
      get serializer => _$gsimplifyUserDataSimplifyCrossGroupAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsimplifyUserData_simplifyCrossGroup_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsimplifyUserData_simplifyCrossGroup_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsimplifyUserData_simplifyCrossGroup_amount.serializer,
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
        GSplitTransactionFields {
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
  GautoSettleWithUserData_autoSettleWithUser_expense? get expense;
  @override
  GautoSettleWithUserData_autoSettleWithUser_group get group;
  @override
  GautoSettleWithUserData_autoSettleWithUser_creator get creator;
  @override
  GautoSettleWithUserData_autoSettleWithUser_fromUser get fromUser;
  @override
  GautoSettleWithUserData_autoSettleWithUser_toUser get toUser;
  @override
  String get id;
  @override
  GautoSettleWithUserData_autoSettleWithUser_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GautoSettleWithUserData_autoSettleWithUser_expense
    implements
        Built<GautoSettleWithUserData_autoSettleWithUser_expense,
            GautoSettleWithUserData_autoSettleWithUser_expenseBuilder>,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GautoSettleWithUserData_autoSettleWithUser_expense._();

  factory GautoSettleWithUserData_autoSettleWithUser_expense(
      [Function(GautoSettleWithUserData_autoSettleWithUser_expenseBuilder b)
          updates]) = _$GautoSettleWithUserData_autoSettleWithUser_expense;

  static void _initializeBuilder(
          GautoSettleWithUserData_autoSettleWithUser_expenseBuilder b) =>
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GautoSettleWithUserData_autoSettleWithUser_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<GautoSettleWithUserData_autoSettleWithUser_expense>
      get serializer =>
          _$gautoSettleWithUserDataAutoSettleWithUserExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserData_autoSettleWithUser_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserData_autoSettleWithUser_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserData_autoSettleWithUser_expense.serializer,
        json,
      );
}

abstract class GautoSettleWithUserData_autoSettleWithUser_expense_amount
    implements
        Built<GautoSettleWithUserData_autoSettleWithUser_expense_amount,
            GautoSettleWithUserData_autoSettleWithUser_expense_amountBuilder>,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GautoSettleWithUserData_autoSettleWithUser_expense_amount._();

  factory GautoSettleWithUserData_autoSettleWithUser_expense_amount(
      [Function(
              GautoSettleWithUserData_autoSettleWithUser_expense_amountBuilder
                  b)
          updates]) = _$GautoSettleWithUserData_autoSettleWithUser_expense_amount;

  static void _initializeBuilder(
          GautoSettleWithUserData_autoSettleWithUser_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GautoSettleWithUserData_autoSettleWithUser_expense_amount>
      get serializer =>
          _$gautoSettleWithUserDataAutoSettleWithUserExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserData_autoSettleWithUser_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserData_autoSettleWithUser_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserData_autoSettleWithUser_expense_amount.serializer,
        json,
      );
}

abstract class GautoSettleWithUserData_autoSettleWithUser_group
    implements
        Built<GautoSettleWithUserData_autoSettleWithUser_group,
            GautoSettleWithUserData_autoSettleWithUser_groupBuilder>,
        GSplitTransactionFields_group,
        GGroupBasic {
  GautoSettleWithUserData_autoSettleWithUser_group._();

  factory GautoSettleWithUserData_autoSettleWithUser_group(
      [Function(GautoSettleWithUserData_autoSettleWithUser_groupBuilder b)
          updates]) = _$GautoSettleWithUserData_autoSettleWithUser_group;

  static void _initializeBuilder(
          GautoSettleWithUserData_autoSettleWithUser_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GautoSettleWithUserData_autoSettleWithUser_group>
      get serializer =>
          _$gautoSettleWithUserDataAutoSettleWithUserGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserData_autoSettleWithUser_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserData_autoSettleWithUser_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserData_autoSettleWithUser_group.serializer,
        json,
      );
}

abstract class GautoSettleWithUserData_autoSettleWithUser_creator
    implements
        Built<GautoSettleWithUserData_autoSettleWithUser_creator,
            GautoSettleWithUserData_autoSettleWithUser_creatorBuilder>,
        GSplitTransactionFields_creator,
        GUserFields {
  GautoSettleWithUserData_autoSettleWithUser_creator._();

  factory GautoSettleWithUserData_autoSettleWithUser_creator(
      [Function(GautoSettleWithUserData_autoSettleWithUser_creatorBuilder b)
          updates]) = _$GautoSettleWithUserData_autoSettleWithUser_creator;

  static void _initializeBuilder(
          GautoSettleWithUserData_autoSettleWithUser_creatorBuilder b) =>
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
  static Serializer<GautoSettleWithUserData_autoSettleWithUser_creator>
      get serializer =>
          _$gautoSettleWithUserDataAutoSettleWithUserCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserData_autoSettleWithUser_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserData_autoSettleWithUser_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserData_autoSettleWithUser_creator.serializer,
        json,
      );
}

abstract class GautoSettleWithUserData_autoSettleWithUser_fromUser
    implements
        Built<GautoSettleWithUserData_autoSettleWithUser_fromUser,
            GautoSettleWithUserData_autoSettleWithUser_fromUserBuilder>,
        GSplitTransactionFields_fromUser,
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
        GSplitTransactionFields_toUser,
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

abstract class GautoSettleWithUserData_autoSettleWithUser_amount
    implements
        Built<GautoSettleWithUserData_autoSettleWithUser_amount,
            GautoSettleWithUserData_autoSettleWithUser_amountBuilder>,
        GSplitTransactionFields_amount,
        GAmountFields {
  GautoSettleWithUserData_autoSettleWithUser_amount._();

  factory GautoSettleWithUserData_autoSettleWithUser_amount(
      [Function(GautoSettleWithUserData_autoSettleWithUser_amountBuilder b)
          updates]) = _$GautoSettleWithUserData_autoSettleWithUser_amount;

  static void _initializeBuilder(
          GautoSettleWithUserData_autoSettleWithUser_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GautoSettleWithUserData_autoSettleWithUser_amount>
      get serializer =>
          _$gautoSettleWithUserDataAutoSettleWithUserAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GautoSettleWithUserData_autoSettleWithUser_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GautoSettleWithUserData_autoSettleWithUser_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GautoSettleWithUserData_autoSettleWithUser_amount.serializer,
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
  BuiltList<GtransactionWithUserData_getTransactionsMixExpenseWithUser>
      get getTransactionsMixExpenseWithUser;
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

abstract class GtransactionWithUserData_getTransactionsMixExpenseWithUser
    implements
        Built<GtransactionWithUserData_getTransactionsMixExpenseWithUser,
            GtransactionWithUserData_getTransactionsMixExpenseWithUserBuilder>,
        GExpenseMixSplitFields {
  GtransactionWithUserData_getTransactionsMixExpenseWithUser._();

  factory GtransactionWithUserData_getTransactionsMixExpenseWithUser(
      [Function(
              GtransactionWithUserData_getTransactionsMixExpenseWithUserBuilder
                  b)
          updates]) = _$GtransactionWithUserData_getTransactionsMixExpenseWithUser;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsMixExpenseWithUserBuilder
              b) =>
      b..G__typename = 'ExpenseMixSplit';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense?
      get expense;
  @override
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split? get split;
  static Serializer<GtransactionWithUserData_getTransactionsMixExpenseWithUser>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsMixExpenseWithUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsMixExpenseWithUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsMixExpenseWithUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtransactionWithUserData_getTransactionsMixExpenseWithUser.serializer,
        json,
      );
}

abstract class GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense
    implements
        Built<
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense,
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_expenseBuilder>,
        GExpenseMixSplitFields_expense,
        GExpenseBasic {
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense._();

  factory GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense(
          [Function(
                  GtransactionWithUserData_getTransactionsMixExpenseWithUser_expenseBuilder
                      b)
              updates]) =
      _$GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_expenseBuilder
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount
      get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsMixExpenseWithUserExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense
                .serializer,
            json,
          );
}

abstract class GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount
    implements
        Built<
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount,
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amountBuilder>,
        GExpenseMixSplitFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount._();

  factory GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount(
          [Function(
                  GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amountBuilder
                      b)
              updates]) =
      _$GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amountBuilder
              b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsMixExpenseWithUserExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount
                .serializer,
            json,
          );
}

abstract class GtransactionWithUserData_getTransactionsMixExpenseWithUser_split
    implements
        Built<GtransactionWithUserData_getTransactionsMixExpenseWithUser_split,
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_splitBuilder>,
        GExpenseMixSplitFields_split,
        GSplitFields {
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split._();

  factory GtransactionWithUserData_getTransactionsMixExpenseWithUser_split(
          [Function(
                  GtransactionWithUserData_getTransactionsMixExpenseWithUser_splitBuilder
                      b)
              updates]) =
      _$GtransactionWithUserData_getTransactionsMixExpenseWithUser_split;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_splitBuilder
              b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser
      get fromUser;
  @override
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser
      get toUser;
  @override
  String get id;
  @override
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount
      get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  static Serializer<
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsMixExpenseWithUserSplitSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsMixExpenseWithUser_split
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsMixExpenseWithUser_split?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split
                .serializer,
            json,
          );
}

abstract class GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser
    implements
        Built<
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser,
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUserBuilder>,
        GExpenseMixSplitFields_split_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser._();

  factory GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser(
          [Function(
                  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUserBuilder
                      b)
              updates]) =
      _$GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUserBuilder
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
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsMixExpenseWithUserSplitFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser
                .serializer,
            json,
          );
}

abstract class GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser
    implements
        Built<
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser,
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUserBuilder>,
        GExpenseMixSplitFields_split_toUser,
        GSplitFields_toUser,
        GUserFields {
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser._();

  factory GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser(
          [Function(
                  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUserBuilder
                      b)
              updates]) =
      _$GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUserBuilder
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
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsMixExpenseWithUserSplitToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser
                .serializer,
            json,
          );
}

abstract class GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount
    implements
        Built<
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount,
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amountBuilder>,
        GExpenseMixSplitFields_split_amount,
        GSplitFields_amount,
        GAmountFields {
  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount._();

  factory GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount(
          [Function(
                  GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amountBuilder
                      b)
              updates]) =
      _$GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount;

  static void _initializeBuilder(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amountBuilder
              b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount>
      get serializer =>
          _$gtransactionWithUserDataGetTransactionsMixExpenseWithUserSplitAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount
                .serializer,
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount
      get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount
    implements
        Built<
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount,
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amountBuilder>,
        GExpenseMixSplitFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount._();

  factory GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount(
          [Function(
                  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amountBuilder
                      b)
              updates]) =
      _$GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount;

  static void _initializeBuilder(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amountBuilder
              b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount>
      get serializer =>
          _$gtransactionMixExpenseDataGetTransactionsMixExpenseWithGroupExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount
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
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount
      get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount
    implements
        Built<
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount,
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amountBuilder>,
        GExpenseMixSplitFields_split_amount,
        GSplitFields_amount,
        GAmountFields {
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount._();

  factory GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount(
          [Function(
                  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amountBuilder
                      b)
              updates]) =
      _$GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount;

  static void _initializeBuilder(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amountBuilder
              b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount>
      get serializer =>
          _$gtransactionMixExpenseDataGetTransactionsMixExpenseWithGroupSplitAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount
                .serializer,
            json,
          );
}

abstract class GsetDefaultCurrencyData
    implements Built<GsetDefaultCurrencyData, GsetDefaultCurrencyDataBuilder> {
  GsetDefaultCurrencyData._();

  factory GsetDefaultCurrencyData(
          [Function(GsetDefaultCurrencyDataBuilder b) updates]) =
      _$GsetDefaultCurrencyData;

  static void _initializeBuilder(GsetDefaultCurrencyDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsetDefaultCurrencyData_setDefaultCurrency get setDefaultCurrency;
  static Serializer<GsetDefaultCurrencyData> get serializer =>
      _$gsetDefaultCurrencyDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetDefaultCurrencyData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetDefaultCurrencyData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetDefaultCurrencyData.serializer,
        json,
      );
}

abstract class GsetDefaultCurrencyData_setDefaultCurrency
    implements
        Built<GsetDefaultCurrencyData_setDefaultCurrency,
            GsetDefaultCurrencyData_setDefaultCurrencyBuilder>,
        GConfigFields {
  GsetDefaultCurrencyData_setDefaultCurrency._();

  factory GsetDefaultCurrencyData_setDefaultCurrency(
      [Function(GsetDefaultCurrencyData_setDefaultCurrencyBuilder b)
          updates]) = _$GsetDefaultCurrencyData_setDefaultCurrency;

  static void _initializeBuilder(
          GsetDefaultCurrencyData_setDefaultCurrencyBuilder b) =>
      b..G__typename = 'UserConfig';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get defaultCurrencyId;
  static Serializer<GsetDefaultCurrencyData_setDefaultCurrency>
      get serializer => _$gsetDefaultCurrencyDataSetDefaultCurrencySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetDefaultCurrencyData_setDefaultCurrency.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetDefaultCurrencyData_setDefaultCurrency? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetDefaultCurrencyData_setDefaultCurrency.serializer,
        json,
      );
}

abstract class GcurrencyConvertData
    implements Built<GcurrencyConvertData, GcurrencyConvertDataBuilder> {
  GcurrencyConvertData._();

  factory GcurrencyConvertData(
          [Function(GcurrencyConvertDataBuilder b) updates]) =
      _$GcurrencyConvertData;

  static void _initializeBuilder(GcurrencyConvertDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GcurrencyConvertData_convertCurrency> get convertCurrency;
  static Serializer<GcurrencyConvertData> get serializer =>
      _$gcurrencyConvertDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertData.serializer,
        json,
      );
}

abstract class GcurrencyConvertData_convertCurrency
    implements
        Built<GcurrencyConvertData_convertCurrency,
            GcurrencyConvertData_convertCurrencyBuilder>,
        GSplitTransactionFields {
  GcurrencyConvertData_convertCurrency._();

  factory GcurrencyConvertData_convertCurrency(
          [Function(GcurrencyConvertData_convertCurrencyBuilder b) updates]) =
      _$GcurrencyConvertData_convertCurrency;

  static void _initializeBuilder(
          GcurrencyConvertData_convertCurrencyBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GcurrencyConvertData_convertCurrency_expense? get expense;
  @override
  GcurrencyConvertData_convertCurrency_group get group;
  @override
  GcurrencyConvertData_convertCurrency_creator get creator;
  @override
  GcurrencyConvertData_convertCurrency_fromUser get fromUser;
  @override
  GcurrencyConvertData_convertCurrency_toUser get toUser;
  @override
  String get id;
  @override
  GcurrencyConvertData_convertCurrency_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  static Serializer<GcurrencyConvertData_convertCurrency> get serializer =>
      _$gcurrencyConvertDataConvertCurrencySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertData_convertCurrency.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertData_convertCurrency? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertData_convertCurrency.serializer,
        json,
      );
}

abstract class GcurrencyConvertData_convertCurrency_expense
    implements
        Built<GcurrencyConvertData_convertCurrency_expense,
            GcurrencyConvertData_convertCurrency_expenseBuilder>,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GcurrencyConvertData_convertCurrency_expense._();

  factory GcurrencyConvertData_convertCurrency_expense(
      [Function(GcurrencyConvertData_convertCurrency_expenseBuilder b)
          updates]) = _$GcurrencyConvertData_convertCurrency_expense;

  static void _initializeBuilder(
          GcurrencyConvertData_convertCurrency_expenseBuilder b) =>
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GcurrencyConvertData_convertCurrency_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<GcurrencyConvertData_convertCurrency_expense>
      get serializer => _$gcurrencyConvertDataConvertCurrencyExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertData_convertCurrency_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertData_convertCurrency_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertData_convertCurrency_expense.serializer,
        json,
      );
}

abstract class GcurrencyConvertData_convertCurrency_expense_amount
    implements
        Built<GcurrencyConvertData_convertCurrency_expense_amount,
            GcurrencyConvertData_convertCurrency_expense_amountBuilder>,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GcurrencyConvertData_convertCurrency_expense_amount._();

  factory GcurrencyConvertData_convertCurrency_expense_amount(
      [Function(GcurrencyConvertData_convertCurrency_expense_amountBuilder b)
          updates]) = _$GcurrencyConvertData_convertCurrency_expense_amount;

  static void _initializeBuilder(
          GcurrencyConvertData_convertCurrency_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GcurrencyConvertData_convertCurrency_expense_amount>
      get serializer =>
          _$gcurrencyConvertDataConvertCurrencyExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertData_convertCurrency_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertData_convertCurrency_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertData_convertCurrency_expense_amount.serializer,
        json,
      );
}

abstract class GcurrencyConvertData_convertCurrency_group
    implements
        Built<GcurrencyConvertData_convertCurrency_group,
            GcurrencyConvertData_convertCurrency_groupBuilder>,
        GSplitTransactionFields_group,
        GGroupBasic {
  GcurrencyConvertData_convertCurrency_group._();

  factory GcurrencyConvertData_convertCurrency_group(
      [Function(GcurrencyConvertData_convertCurrency_groupBuilder b)
          updates]) = _$GcurrencyConvertData_convertCurrency_group;

  static void _initializeBuilder(
          GcurrencyConvertData_convertCurrency_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GcurrencyConvertData_convertCurrency_group>
      get serializer => _$gcurrencyConvertDataConvertCurrencyGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertData_convertCurrency_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertData_convertCurrency_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertData_convertCurrency_group.serializer,
        json,
      );
}

abstract class GcurrencyConvertData_convertCurrency_creator
    implements
        Built<GcurrencyConvertData_convertCurrency_creator,
            GcurrencyConvertData_convertCurrency_creatorBuilder>,
        GSplitTransactionFields_creator,
        GUserFields {
  GcurrencyConvertData_convertCurrency_creator._();

  factory GcurrencyConvertData_convertCurrency_creator(
      [Function(GcurrencyConvertData_convertCurrency_creatorBuilder b)
          updates]) = _$GcurrencyConvertData_convertCurrency_creator;

  static void _initializeBuilder(
          GcurrencyConvertData_convertCurrency_creatorBuilder b) =>
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
  static Serializer<GcurrencyConvertData_convertCurrency_creator>
      get serializer => _$gcurrencyConvertDataConvertCurrencyCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertData_convertCurrency_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertData_convertCurrency_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertData_convertCurrency_creator.serializer,
        json,
      );
}

abstract class GcurrencyConvertData_convertCurrency_fromUser
    implements
        Built<GcurrencyConvertData_convertCurrency_fromUser,
            GcurrencyConvertData_convertCurrency_fromUserBuilder>,
        GSplitTransactionFields_fromUser,
        GUserFields {
  GcurrencyConvertData_convertCurrency_fromUser._();

  factory GcurrencyConvertData_convertCurrency_fromUser(
      [Function(GcurrencyConvertData_convertCurrency_fromUserBuilder b)
          updates]) = _$GcurrencyConvertData_convertCurrency_fromUser;

  static void _initializeBuilder(
          GcurrencyConvertData_convertCurrency_fromUserBuilder b) =>
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
  static Serializer<GcurrencyConvertData_convertCurrency_fromUser>
      get serializer => _$gcurrencyConvertDataConvertCurrencyFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertData_convertCurrency_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertData_convertCurrency_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertData_convertCurrency_fromUser.serializer,
        json,
      );
}

abstract class GcurrencyConvertData_convertCurrency_toUser
    implements
        Built<GcurrencyConvertData_convertCurrency_toUser,
            GcurrencyConvertData_convertCurrency_toUserBuilder>,
        GSplitTransactionFields_toUser,
        GUserFields {
  GcurrencyConvertData_convertCurrency_toUser._();

  factory GcurrencyConvertData_convertCurrency_toUser(
      [Function(GcurrencyConvertData_convertCurrency_toUserBuilder b)
          updates]) = _$GcurrencyConvertData_convertCurrency_toUser;

  static void _initializeBuilder(
          GcurrencyConvertData_convertCurrency_toUserBuilder b) =>
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
  static Serializer<GcurrencyConvertData_convertCurrency_toUser>
      get serializer => _$gcurrencyConvertDataConvertCurrencyToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertData_convertCurrency_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertData_convertCurrency_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertData_convertCurrency_toUser.serializer,
        json,
      );
}

abstract class GcurrencyConvertData_convertCurrency_amount
    implements
        Built<GcurrencyConvertData_convertCurrency_amount,
            GcurrencyConvertData_convertCurrency_amountBuilder>,
        GSplitTransactionFields_amount,
        GAmountFields {
  GcurrencyConvertData_convertCurrency_amount._();

  factory GcurrencyConvertData_convertCurrency_amount(
      [Function(GcurrencyConvertData_convertCurrency_amountBuilder b)
          updates]) = _$GcurrencyConvertData_convertCurrency_amount;

  static void _initializeBuilder(
          GcurrencyConvertData_convertCurrency_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GcurrencyConvertData_convertCurrency_amount>
      get serializer => _$gcurrencyConvertDataConvertCurrencyAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcurrencyConvertData_convertCurrency_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcurrencyConvertData_convertCurrency_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcurrencyConvertData_convertCurrency_amount.serializer,
        json,
      );
}

abstract class GchangeNameData
    implements Built<GchangeNameData, GchangeNameDataBuilder> {
  GchangeNameData._();

  factory GchangeNameData([Function(GchangeNameDataBuilder b) updates]) =
      _$GchangeNameData;

  static void _initializeBuilder(GchangeNameDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GchangeNameData_changeName get changeName;
  static Serializer<GchangeNameData> get serializer =>
      _$gchangeNameDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GchangeNameData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchangeNameData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GchangeNameData.serializer,
        json,
      );
}

abstract class GchangeNameData_changeName
    implements
        Built<GchangeNameData_changeName, GchangeNameData_changeNameBuilder>,
        GUserFields {
  GchangeNameData_changeName._();

  factory GchangeNameData_changeName(
          [Function(GchangeNameData_changeNameBuilder b) updates]) =
      _$GchangeNameData_changeName;

  static void _initializeBuilder(GchangeNameData_changeNameBuilder b) =>
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
  static Serializer<GchangeNameData_changeName> get serializer =>
      _$gchangeNameDataChangeNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GchangeNameData_changeName.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchangeNameData_changeName? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GchangeNameData_changeName.serializer,
        json,
      );
}

abstract class GgetTransactionsData
    implements Built<GgetTransactionsData, GgetTransactionsDataBuilder> {
  GgetTransactionsData._();

  factory GgetTransactionsData(
          [Function(GgetTransactionsDataBuilder b) updates]) =
      _$GgetTransactionsData;

  static void _initializeBuilder(GgetTransactionsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetTransactionsData_getTransactions> get getTransactions;
  static Serializer<GgetTransactionsData> get serializer =>
      _$ggetTransactionsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionsData.serializer,
        json,
      );
}

abstract class GgetTransactionsData_getTransactions
    implements
        Built<GgetTransactionsData_getTransactions,
            GgetTransactionsData_getTransactionsBuilder>,
        GExpenseMixSplitFields {
  GgetTransactionsData_getTransactions._();

  factory GgetTransactionsData_getTransactions(
          [Function(GgetTransactionsData_getTransactionsBuilder b) updates]) =
      _$GgetTransactionsData_getTransactions;

  static void _initializeBuilder(
          GgetTransactionsData_getTransactionsBuilder b) =>
      b..G__typename = 'ExpenseMixSplit';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetTransactionsData_getTransactions_expense? get expense;
  @override
  GgetTransactionsData_getTransactions_split? get split;
  static Serializer<GgetTransactionsData_getTransactions> get serializer =>
      _$ggetTransactionsDataGetTransactionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionsData_getTransactions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsData_getTransactions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionsData_getTransactions.serializer,
        json,
      );
}

abstract class GgetTransactionsData_getTransactions_expense
    implements
        Built<GgetTransactionsData_getTransactions_expense,
            GgetTransactionsData_getTransactions_expenseBuilder>,
        GExpenseMixSplitFields_expense,
        GExpenseBasic {
  GgetTransactionsData_getTransactions_expense._();

  factory GgetTransactionsData_getTransactions_expense(
      [Function(GgetTransactionsData_getTransactions_expenseBuilder b)
          updates]) = _$GgetTransactionsData_getTransactions_expense;

  static void _initializeBuilder(
          GgetTransactionsData_getTransactions_expenseBuilder b) =>
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GgetTransactionsData_getTransactions_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<GgetTransactionsData_getTransactions_expense>
      get serializer => _$ggetTransactionsDataGetTransactionsExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionsData_getTransactions_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsData_getTransactions_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionsData_getTransactions_expense.serializer,
        json,
      );
}

abstract class GgetTransactionsData_getTransactions_expense_amount
    implements
        Built<GgetTransactionsData_getTransactions_expense_amount,
            GgetTransactionsData_getTransactions_expense_amountBuilder>,
        GExpenseMixSplitFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GgetTransactionsData_getTransactions_expense_amount._();

  factory GgetTransactionsData_getTransactions_expense_amount(
      [Function(GgetTransactionsData_getTransactions_expense_amountBuilder b)
          updates]) = _$GgetTransactionsData_getTransactions_expense_amount;

  static void _initializeBuilder(
          GgetTransactionsData_getTransactions_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GgetTransactionsData_getTransactions_expense_amount>
      get serializer =>
          _$ggetTransactionsDataGetTransactionsExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionsData_getTransactions_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsData_getTransactions_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionsData_getTransactions_expense_amount.serializer,
        json,
      );
}

abstract class GgetTransactionsData_getTransactions_split
    implements
        Built<GgetTransactionsData_getTransactions_split,
            GgetTransactionsData_getTransactions_splitBuilder>,
        GExpenseMixSplitFields_split,
        GSplitFields {
  GgetTransactionsData_getTransactions_split._();

  factory GgetTransactionsData_getTransactions_split(
      [Function(GgetTransactionsData_getTransactions_splitBuilder b)
          updates]) = _$GgetTransactionsData_getTransactions_split;

  static void _initializeBuilder(
          GgetTransactionsData_getTransactions_splitBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetTransactionsData_getTransactions_split_fromUser get fromUser;
  @override
  GgetTransactionsData_getTransactions_split_toUser get toUser;
  @override
  String get id;
  @override
  GgetTransactionsData_getTransactions_split_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  static Serializer<GgetTransactionsData_getTransactions_split>
      get serializer => _$ggetTransactionsDataGetTransactionsSplitSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionsData_getTransactions_split.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsData_getTransactions_split? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionsData_getTransactions_split.serializer,
        json,
      );
}

abstract class GgetTransactionsData_getTransactions_split_fromUser
    implements
        Built<GgetTransactionsData_getTransactions_split_fromUser,
            GgetTransactionsData_getTransactions_split_fromUserBuilder>,
        GExpenseMixSplitFields_split_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  GgetTransactionsData_getTransactions_split_fromUser._();

  factory GgetTransactionsData_getTransactions_split_fromUser(
      [Function(GgetTransactionsData_getTransactions_split_fromUserBuilder b)
          updates]) = _$GgetTransactionsData_getTransactions_split_fromUser;

  static void _initializeBuilder(
          GgetTransactionsData_getTransactions_split_fromUserBuilder b) =>
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
  static Serializer<GgetTransactionsData_getTransactions_split_fromUser>
      get serializer =>
          _$ggetTransactionsDataGetTransactionsSplitFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionsData_getTransactions_split_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsData_getTransactions_split_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionsData_getTransactions_split_fromUser.serializer,
        json,
      );
}

abstract class GgetTransactionsData_getTransactions_split_toUser
    implements
        Built<GgetTransactionsData_getTransactions_split_toUser,
            GgetTransactionsData_getTransactions_split_toUserBuilder>,
        GExpenseMixSplitFields_split_toUser,
        GSplitFields_toUser,
        GUserFields {
  GgetTransactionsData_getTransactions_split_toUser._();

  factory GgetTransactionsData_getTransactions_split_toUser(
      [Function(GgetTransactionsData_getTransactions_split_toUserBuilder b)
          updates]) = _$GgetTransactionsData_getTransactions_split_toUser;

  static void _initializeBuilder(
          GgetTransactionsData_getTransactions_split_toUserBuilder b) =>
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
  static Serializer<GgetTransactionsData_getTransactions_split_toUser>
      get serializer =>
          _$ggetTransactionsDataGetTransactionsSplitToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionsData_getTransactions_split_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsData_getTransactions_split_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionsData_getTransactions_split_toUser.serializer,
        json,
      );
}

abstract class GgetTransactionsData_getTransactions_split_amount
    implements
        Built<GgetTransactionsData_getTransactions_split_amount,
            GgetTransactionsData_getTransactions_split_amountBuilder>,
        GExpenseMixSplitFields_split_amount,
        GSplitFields_amount,
        GAmountFields {
  GgetTransactionsData_getTransactions_split_amount._();

  factory GgetTransactionsData_getTransactions_split_amount(
      [Function(GgetTransactionsData_getTransactions_split_amountBuilder b)
          updates]) = _$GgetTransactionsData_getTransactions_split_amount;

  static void _initializeBuilder(
          GgetTransactionsData_getTransactions_split_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GgetTransactionsData_getTransactions_split_amount>
      get serializer =>
          _$ggetTransactionsDataGetTransactionsSplitAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTransactionsData_getTransactions_split_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTransactionsData_getTransactions_split_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTransactionsData_getTransactions_split_amount.serializer,
        json,
      );
}

abstract class GsetNotificationTokenData
    implements
        Built<GsetNotificationTokenData, GsetNotificationTokenDataBuilder> {
  GsetNotificationTokenData._();

  factory GsetNotificationTokenData(
          [Function(GsetNotificationTokenDataBuilder b) updates]) =
      _$GsetNotificationTokenData;

  static void _initializeBuilder(GsetNotificationTokenDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get setNotificationToken;
  static Serializer<GsetNotificationTokenData> get serializer =>
      _$gsetNotificationTokenDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsetNotificationTokenData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsetNotificationTokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsetNotificationTokenData.serializer,
        json,
      );
}

abstract class GgetImageUploadUrlData
    implements Built<GgetImageUploadUrlData, GgetImageUploadUrlDataBuilder> {
  GgetImageUploadUrlData._();

  factory GgetImageUploadUrlData(
          [Function(GgetImageUploadUrlDataBuilder b) updates]) =
      _$GgetImageUploadUrlData;

  static void _initializeBuilder(GgetImageUploadUrlDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetImageUploadUrlData_uploadImage get uploadImage;
  static Serializer<GgetImageUploadUrlData> get serializer =>
      _$ggetImageUploadUrlDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetImageUploadUrlData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageUploadUrlData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetImageUploadUrlData.serializer,
        json,
      );
}

abstract class GgetImageUploadUrlData_uploadImage
    implements
        Built<GgetImageUploadUrlData_uploadImage,
            GgetImageUploadUrlData_uploadImageBuilder>,
        GUploadFields {
  GgetImageUploadUrlData_uploadImage._();

  factory GgetImageUploadUrlData_uploadImage(
          [Function(GgetImageUploadUrlData_uploadImageBuilder b) updates]) =
      _$GgetImageUploadUrlData_uploadImage;

  static void _initializeBuilder(GgetImageUploadUrlData_uploadImageBuilder b) =>
      b..G__typename = 'ImageUploadData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get presignedUrl;
  static Serializer<GgetImageUploadUrlData_uploadImage> get serializer =>
      _$ggetImageUploadUrlDataUploadImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetImageUploadUrlData_uploadImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageUploadUrlData_uploadImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetImageUploadUrlData_uploadImage.serializer,
        json,
      );
}

abstract class GgetImageViewUrlData
    implements Built<GgetImageViewUrlData, GgetImageViewUrlDataBuilder> {
  GgetImageViewUrlData._();

  factory GgetImageViewUrlData(
          [Function(GgetImageViewUrlDataBuilder b) updates]) =
      _$GgetImageViewUrlData;

  static void _initializeBuilder(GgetImageViewUrlDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get imageUrl;
  static Serializer<GgetImageViewUrlData> get serializer =>
      _$ggetImageViewUrlDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetImageViewUrlData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetImageViewUrlData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetImageViewUrlData.serializer,
        json,
      );
}

abstract class GgetExpenseData
    implements Built<GgetExpenseData, GgetExpenseDataBuilder> {
  GgetExpenseData._();

  factory GgetExpenseData([Function(GgetExpenseDataBuilder b) updates]) =
      _$GgetExpenseData;

  static void _initializeBuilder(GgetExpenseDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GgetExpenseData_expenseById get expenseById;
  static Serializer<GgetExpenseData> get serializer =>
      _$ggetExpenseDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExpenseData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExpenseData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExpenseData.serializer,
        json,
      );
}

abstract class GgetExpenseData_expenseById
    implements
        Built<GgetExpenseData_expenseById, GgetExpenseData_expenseByIdBuilder>,
        GExpenseFields {
  GgetExpenseData_expenseById._();

  factory GgetExpenseData_expenseById(
          [Function(GgetExpenseData_expenseByIdBuilder b) updates]) =
      _$GgetExpenseData_expenseById;

  static void _initializeBuilder(GgetExpenseData_expenseByIdBuilder b) =>
      b..G__typename = 'Expense';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetExpenseData_expenseById_creator get creator;
  @override
  BuiltList<GgetExpenseData_expenseById_splits> get splits;
  @override
  String get id;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GgetExpenseData_expenseById_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<GgetExpenseData_expenseById> get serializer =>
      _$ggetExpenseDataExpenseByIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExpenseData_expenseById.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExpenseData_expenseById? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExpenseData_expenseById.serializer,
        json,
      );
}

abstract class GgetExpenseData_expenseById_creator
    implements
        Built<GgetExpenseData_expenseById_creator,
            GgetExpenseData_expenseById_creatorBuilder>,
        GExpenseFields_creator,
        GUserFields {
  GgetExpenseData_expenseById_creator._();

  factory GgetExpenseData_expenseById_creator(
          [Function(GgetExpenseData_expenseById_creatorBuilder b) updates]) =
      _$GgetExpenseData_expenseById_creator;

  static void _initializeBuilder(
          GgetExpenseData_expenseById_creatorBuilder b) =>
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
  static Serializer<GgetExpenseData_expenseById_creator> get serializer =>
      _$ggetExpenseDataExpenseByIdCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExpenseData_expenseById_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExpenseData_expenseById_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExpenseData_expenseById_creator.serializer,
        json,
      );
}

abstract class GgetExpenseData_expenseById_splits
    implements
        Built<GgetExpenseData_expenseById_splits,
            GgetExpenseData_expenseById_splitsBuilder>,
        GExpenseFields_splits,
        GSplitFields {
  GgetExpenseData_expenseById_splits._();

  factory GgetExpenseData_expenseById_splits(
          [Function(GgetExpenseData_expenseById_splitsBuilder b) updates]) =
      _$GgetExpenseData_expenseById_splits;

  static void _initializeBuilder(GgetExpenseData_expenseById_splitsBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GgetExpenseData_expenseById_splits_fromUser get fromUser;
  @override
  GgetExpenseData_expenseById_splits_toUser get toUser;
  @override
  String get id;
  @override
  GgetExpenseData_expenseById_splits_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  static Serializer<GgetExpenseData_expenseById_splits> get serializer =>
      _$ggetExpenseDataExpenseByIdSplitsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExpenseData_expenseById_splits.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExpenseData_expenseById_splits? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExpenseData_expenseById_splits.serializer,
        json,
      );
}

abstract class GgetExpenseData_expenseById_splits_fromUser
    implements
        Built<GgetExpenseData_expenseById_splits_fromUser,
            GgetExpenseData_expenseById_splits_fromUserBuilder>,
        GExpenseFields_splits_fromUser,
        GSplitFields_fromUser,
        GUserFields {
  GgetExpenseData_expenseById_splits_fromUser._();

  factory GgetExpenseData_expenseById_splits_fromUser(
      [Function(GgetExpenseData_expenseById_splits_fromUserBuilder b)
          updates]) = _$GgetExpenseData_expenseById_splits_fromUser;

  static void _initializeBuilder(
          GgetExpenseData_expenseById_splits_fromUserBuilder b) =>
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
  static Serializer<GgetExpenseData_expenseById_splits_fromUser>
      get serializer => _$ggetExpenseDataExpenseByIdSplitsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExpenseData_expenseById_splits_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExpenseData_expenseById_splits_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExpenseData_expenseById_splits_fromUser.serializer,
        json,
      );
}

abstract class GgetExpenseData_expenseById_splits_toUser
    implements
        Built<GgetExpenseData_expenseById_splits_toUser,
            GgetExpenseData_expenseById_splits_toUserBuilder>,
        GExpenseFields_splits_toUser,
        GSplitFields_toUser,
        GUserFields {
  GgetExpenseData_expenseById_splits_toUser._();

  factory GgetExpenseData_expenseById_splits_toUser(
      [Function(GgetExpenseData_expenseById_splits_toUserBuilder b)
          updates]) = _$GgetExpenseData_expenseById_splits_toUser;

  static void _initializeBuilder(
          GgetExpenseData_expenseById_splits_toUserBuilder b) =>
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
  static Serializer<GgetExpenseData_expenseById_splits_toUser> get serializer =>
      _$ggetExpenseDataExpenseByIdSplitsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExpenseData_expenseById_splits_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExpenseData_expenseById_splits_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExpenseData_expenseById_splits_toUser.serializer,
        json,
      );
}

abstract class GgetExpenseData_expenseById_splits_amount
    implements
        Built<GgetExpenseData_expenseById_splits_amount,
            GgetExpenseData_expenseById_splits_amountBuilder>,
        GExpenseFields_splits_amount,
        GSplitFields_amount,
        GAmountFields {
  GgetExpenseData_expenseById_splits_amount._();

  factory GgetExpenseData_expenseById_splits_amount(
      [Function(GgetExpenseData_expenseById_splits_amountBuilder b)
          updates]) = _$GgetExpenseData_expenseById_splits_amount;

  static void _initializeBuilder(
          GgetExpenseData_expenseById_splits_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GgetExpenseData_expenseById_splits_amount> get serializer =>
      _$ggetExpenseDataExpenseByIdSplitsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExpenseData_expenseById_splits_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExpenseData_expenseById_splits_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExpenseData_expenseById_splits_amount.serializer,
        json,
      );
}

abstract class GgetExpenseData_expenseById_amount
    implements
        Built<GgetExpenseData_expenseById_amount,
            GgetExpenseData_expenseById_amountBuilder>,
        GExpenseFields_amount,
        GAmountFields {
  GgetExpenseData_expenseById_amount._();

  factory GgetExpenseData_expenseById_amount(
          [Function(GgetExpenseData_expenseById_amountBuilder b) updates]) =
      _$GgetExpenseData_expenseById_amount;

  static void _initializeBuilder(GgetExpenseData_expenseById_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GgetExpenseData_expenseById_amount> get serializer =>
      _$ggetExpenseDataExpenseByIdAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetExpenseData_expenseById_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetExpenseData_expenseById_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetExpenseData_expenseById_amount.serializer,
        json,
      );
}

abstract class GsplitFromidData
    implements Built<GsplitFromidData, GsplitFromidDataBuilder> {
  GsplitFromidData._();

  factory GsplitFromidData([Function(GsplitFromidDataBuilder b) updates]) =
      _$GsplitFromidData;

  static void _initializeBuilder(GsplitFromidDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsplitFromidData_splitById get splitById;
  static Serializer<GsplitFromidData> get serializer =>
      _$gsplitFromidDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById
    implements
        Built<GsplitFromidData_splitById, GsplitFromidData_splitByIdBuilder>,
        GSplitWithSiblings {
  GsplitFromidData_splitById._();

  factory GsplitFromidData_splitById(
          [Function(GsplitFromidData_splitByIdBuilder b) updates]) =
      _$GsplitFromidData_splitById;

  static void _initializeBuilder(GsplitFromidData_splitByIdBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GsplitFromidData_splitById_siblings> get siblings;
  @override
  GsplitFromidData_splitById_expense? get expense;
  @override
  GsplitFromidData_splitById_group get group;
  @override
  GsplitFromidData_splitById_creator get creator;
  @override
  GsplitFromidData_splitById_fromUser get fromUser;
  @override
  GsplitFromidData_splitById_toUser get toUser;
  @override
  String get id;
  @override
  GsplitFromidData_splitById_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  static Serializer<GsplitFromidData_splitById> get serializer =>
      _$gsplitFromidDataSplitByIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_siblings
    implements
        Built<GsplitFromidData_splitById_siblings,
            GsplitFromidData_splitById_siblingsBuilder>,
        GSplitWithSiblings_siblings,
        GSplitTransactionFields {
  GsplitFromidData_splitById_siblings._();

  factory GsplitFromidData_splitById_siblings(
          [Function(GsplitFromidData_splitById_siblingsBuilder b) updates]) =
      _$GsplitFromidData_splitById_siblings;

  static void _initializeBuilder(
          GsplitFromidData_splitById_siblingsBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GsplitFromidData_splitById_siblings_expense? get expense;
  @override
  GsplitFromidData_splitById_siblings_group get group;
  @override
  GsplitFromidData_splitById_siblings_creator get creator;
  @override
  GsplitFromidData_splitById_siblings_fromUser get fromUser;
  @override
  GsplitFromidData_splitById_siblings_toUser get toUser;
  @override
  String get id;
  @override
  GsplitFromidData_splitById_siblings_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  static Serializer<GsplitFromidData_splitById_siblings> get serializer =>
      _$gsplitFromidDataSplitByIdSiblingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_siblings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_siblings? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_siblings.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_siblings_expense
    implements
        Built<GsplitFromidData_splitById_siblings_expense,
            GsplitFromidData_splitById_siblings_expenseBuilder>,
        GSplitWithSiblings_siblings_expense,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GsplitFromidData_splitById_siblings_expense._();

  factory GsplitFromidData_splitById_siblings_expense(
      [Function(GsplitFromidData_splitById_siblings_expenseBuilder b)
          updates]) = _$GsplitFromidData_splitById_siblings_expense;

  static void _initializeBuilder(
          GsplitFromidData_splitById_siblings_expenseBuilder b) =>
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GsplitFromidData_splitById_siblings_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<GsplitFromidData_splitById_siblings_expense>
      get serializer => _$gsplitFromidDataSplitByIdSiblingsExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_siblings_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_siblings_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_siblings_expense.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_siblings_expense_amount
    implements
        Built<GsplitFromidData_splitById_siblings_expense_amount,
            GsplitFromidData_splitById_siblings_expense_amountBuilder>,
        GSplitWithSiblings_siblings_expense_amount,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GsplitFromidData_splitById_siblings_expense_amount._();

  factory GsplitFromidData_splitById_siblings_expense_amount(
      [Function(GsplitFromidData_splitById_siblings_expense_amountBuilder b)
          updates]) = _$GsplitFromidData_splitById_siblings_expense_amount;

  static void _initializeBuilder(
          GsplitFromidData_splitById_siblings_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GsplitFromidData_splitById_siblings_expense_amount>
      get serializer =>
          _$gsplitFromidDataSplitByIdSiblingsExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_siblings_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_siblings_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_siblings_expense_amount.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_siblings_group
    implements
        Built<GsplitFromidData_splitById_siblings_group,
            GsplitFromidData_splitById_siblings_groupBuilder>,
        GSplitWithSiblings_siblings_group,
        GSplitTransactionFields_group,
        GGroupBasic {
  GsplitFromidData_splitById_siblings_group._();

  factory GsplitFromidData_splitById_siblings_group(
      [Function(GsplitFromidData_splitById_siblings_groupBuilder b)
          updates]) = _$GsplitFromidData_splitById_siblings_group;

  static void _initializeBuilder(
          GsplitFromidData_splitById_siblings_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GsplitFromidData_splitById_siblings_group> get serializer =>
      _$gsplitFromidDataSplitByIdSiblingsGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_siblings_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_siblings_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_siblings_group.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_siblings_creator
    implements
        Built<GsplitFromidData_splitById_siblings_creator,
            GsplitFromidData_splitById_siblings_creatorBuilder>,
        GSplitWithSiblings_siblings_creator,
        GSplitTransactionFields_creator,
        GUserFields {
  GsplitFromidData_splitById_siblings_creator._();

  factory GsplitFromidData_splitById_siblings_creator(
      [Function(GsplitFromidData_splitById_siblings_creatorBuilder b)
          updates]) = _$GsplitFromidData_splitById_siblings_creator;

  static void _initializeBuilder(
          GsplitFromidData_splitById_siblings_creatorBuilder b) =>
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
  static Serializer<GsplitFromidData_splitById_siblings_creator>
      get serializer => _$gsplitFromidDataSplitByIdSiblingsCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_siblings_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_siblings_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_siblings_creator.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_siblings_fromUser
    implements
        Built<GsplitFromidData_splitById_siblings_fromUser,
            GsplitFromidData_splitById_siblings_fromUserBuilder>,
        GSplitWithSiblings_siblings_fromUser,
        GSplitTransactionFields_fromUser,
        GUserFields {
  GsplitFromidData_splitById_siblings_fromUser._();

  factory GsplitFromidData_splitById_siblings_fromUser(
      [Function(GsplitFromidData_splitById_siblings_fromUserBuilder b)
          updates]) = _$GsplitFromidData_splitById_siblings_fromUser;

  static void _initializeBuilder(
          GsplitFromidData_splitById_siblings_fromUserBuilder b) =>
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
  static Serializer<GsplitFromidData_splitById_siblings_fromUser>
      get serializer => _$gsplitFromidDataSplitByIdSiblingsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_siblings_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_siblings_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_siblings_fromUser.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_siblings_toUser
    implements
        Built<GsplitFromidData_splitById_siblings_toUser,
            GsplitFromidData_splitById_siblings_toUserBuilder>,
        GSplitWithSiblings_siblings_toUser,
        GSplitTransactionFields_toUser,
        GUserFields {
  GsplitFromidData_splitById_siblings_toUser._();

  factory GsplitFromidData_splitById_siblings_toUser(
      [Function(GsplitFromidData_splitById_siblings_toUserBuilder b)
          updates]) = _$GsplitFromidData_splitById_siblings_toUser;

  static void _initializeBuilder(
          GsplitFromidData_splitById_siblings_toUserBuilder b) =>
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
  static Serializer<GsplitFromidData_splitById_siblings_toUser>
      get serializer => _$gsplitFromidDataSplitByIdSiblingsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_siblings_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_siblings_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_siblings_toUser.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_siblings_amount
    implements
        Built<GsplitFromidData_splitById_siblings_amount,
            GsplitFromidData_splitById_siblings_amountBuilder>,
        GSplitWithSiblings_siblings_amount,
        GSplitTransactionFields_amount,
        GAmountFields {
  GsplitFromidData_splitById_siblings_amount._();

  factory GsplitFromidData_splitById_siblings_amount(
      [Function(GsplitFromidData_splitById_siblings_amountBuilder b)
          updates]) = _$GsplitFromidData_splitById_siblings_amount;

  static void _initializeBuilder(
          GsplitFromidData_splitById_siblings_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GsplitFromidData_splitById_siblings_amount>
      get serializer => _$gsplitFromidDataSplitByIdSiblingsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_siblings_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_siblings_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_siblings_amount.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_expense
    implements
        Built<GsplitFromidData_splitById_expense,
            GsplitFromidData_splitById_expenseBuilder>,
        GSplitWithSiblings_expense,
        GExpenseBasic {
  GsplitFromidData_splitById_expense._();

  factory GsplitFromidData_splitById_expense(
          [Function(GsplitFromidData_splitById_expenseBuilder b) updates]) =
      _$GsplitFromidData_splitById_expense;

  static void _initializeBuilder(GsplitFromidData_splitById_expenseBuilder b) =>
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GsplitFromidData_splitById_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<GsplitFromidData_splitById_expense> get serializer =>
      _$gsplitFromidDataSplitByIdExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_expense.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_expense_amount
    implements
        Built<GsplitFromidData_splitById_expense_amount,
            GsplitFromidData_splitById_expense_amountBuilder>,
        GSplitWithSiblings_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GsplitFromidData_splitById_expense_amount._();

  factory GsplitFromidData_splitById_expense_amount(
      [Function(GsplitFromidData_splitById_expense_amountBuilder b)
          updates]) = _$GsplitFromidData_splitById_expense_amount;

  static void _initializeBuilder(
          GsplitFromidData_splitById_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GsplitFromidData_splitById_expense_amount> get serializer =>
      _$gsplitFromidDataSplitByIdExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_expense_amount.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_group
    implements
        Built<GsplitFromidData_splitById_group,
            GsplitFromidData_splitById_groupBuilder>,
        GSplitWithSiblings_group,
        GGroupBasic {
  GsplitFromidData_splitById_group._();

  factory GsplitFromidData_splitById_group(
          [Function(GsplitFromidData_splitById_groupBuilder b) updates]) =
      _$GsplitFromidData_splitById_group;

  static void _initializeBuilder(GsplitFromidData_splitById_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GsplitFromidData_splitById_group> get serializer =>
      _$gsplitFromidDataSplitByIdGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_group.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_creator
    implements
        Built<GsplitFromidData_splitById_creator,
            GsplitFromidData_splitById_creatorBuilder>,
        GSplitWithSiblings_creator,
        GUserFields {
  GsplitFromidData_splitById_creator._();

  factory GsplitFromidData_splitById_creator(
          [Function(GsplitFromidData_splitById_creatorBuilder b) updates]) =
      _$GsplitFromidData_splitById_creator;

  static void _initializeBuilder(GsplitFromidData_splitById_creatorBuilder b) =>
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
  static Serializer<GsplitFromidData_splitById_creator> get serializer =>
      _$gsplitFromidDataSplitByIdCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_creator.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_fromUser
    implements
        Built<GsplitFromidData_splitById_fromUser,
            GsplitFromidData_splitById_fromUserBuilder>,
        GSplitWithSiblings_fromUser,
        GUserFields {
  GsplitFromidData_splitById_fromUser._();

  factory GsplitFromidData_splitById_fromUser(
          [Function(GsplitFromidData_splitById_fromUserBuilder b) updates]) =
      _$GsplitFromidData_splitById_fromUser;

  static void _initializeBuilder(
          GsplitFromidData_splitById_fromUserBuilder b) =>
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
  static Serializer<GsplitFromidData_splitById_fromUser> get serializer =>
      _$gsplitFromidDataSplitByIdFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_fromUser.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_toUser
    implements
        Built<GsplitFromidData_splitById_toUser,
            GsplitFromidData_splitById_toUserBuilder>,
        GSplitWithSiblings_toUser,
        GUserFields {
  GsplitFromidData_splitById_toUser._();

  factory GsplitFromidData_splitById_toUser(
          [Function(GsplitFromidData_splitById_toUserBuilder b) updates]) =
      _$GsplitFromidData_splitById_toUser;

  static void _initializeBuilder(GsplitFromidData_splitById_toUserBuilder b) =>
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
  static Serializer<GsplitFromidData_splitById_toUser> get serializer =>
      _$gsplitFromidDataSplitByIdToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_toUser.serializer,
        json,
      );
}

abstract class GsplitFromidData_splitById_amount
    implements
        Built<GsplitFromidData_splitById_amount,
            GsplitFromidData_splitById_amountBuilder>,
        GSplitWithSiblings_amount,
        GAmountFields {
  GsplitFromidData_splitById_amount._();

  factory GsplitFromidData_splitById_amount(
          [Function(GsplitFromidData_splitById_amountBuilder b) updates]) =
      _$GsplitFromidData_splitById_amount;

  static void _initializeBuilder(GsplitFromidData_splitById_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GsplitFromidData_splitById_amount> get serializer =>
      _$gsplitFromidDataSplitByIdAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromidData_splitById_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromidData_splitById_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromidData_splitById_amount.serializer,
        json,
      );
}

abstract class GsplitFromGroupData
    implements Built<GsplitFromGroupData, GsplitFromGroupDataBuilder> {
  GsplitFromGroupData._();

  factory GsplitFromGroupData(
      [Function(GsplitFromGroupDataBuilder b) updates]) = _$GsplitFromGroupData;

  static void _initializeBuilder(GsplitFromGroupDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GsplitFromGroupData_splitsByPart> get splitsByPart;
  static Serializer<GsplitFromGroupData> get serializer =>
      _$gsplitFromGroupDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromGroupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromGroupData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromGroupData.serializer,
        json,
      );
}

abstract class GsplitFromGroupData_splitsByPart
    implements
        Built<GsplitFromGroupData_splitsByPart,
            GsplitFromGroupData_splitsByPartBuilder>,
        GSplitFields {
  GsplitFromGroupData_splitsByPart._();

  factory GsplitFromGroupData_splitsByPart(
          [Function(GsplitFromGroupData_splitsByPartBuilder b) updates]) =
      _$GsplitFromGroupData_splitsByPart;

  static void _initializeBuilder(GsplitFromGroupData_splitsByPartBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GsplitFromGroupData_splitsByPart_fromUser get fromUser;
  @override
  GsplitFromGroupData_splitsByPart_toUser get toUser;
  @override
  String get id;
  @override
  GsplitFromGroupData_splitsByPart_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  static Serializer<GsplitFromGroupData_splitsByPart> get serializer =>
      _$gsplitFromGroupDataSplitsByPartSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromGroupData_splitsByPart.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromGroupData_splitsByPart? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromGroupData_splitsByPart.serializer,
        json,
      );
}

abstract class GsplitFromGroupData_splitsByPart_fromUser
    implements
        Built<GsplitFromGroupData_splitsByPart_fromUser,
            GsplitFromGroupData_splitsByPart_fromUserBuilder>,
        GSplitFields_fromUser,
        GUserFields {
  GsplitFromGroupData_splitsByPart_fromUser._();

  factory GsplitFromGroupData_splitsByPart_fromUser(
      [Function(GsplitFromGroupData_splitsByPart_fromUserBuilder b)
          updates]) = _$GsplitFromGroupData_splitsByPart_fromUser;

  static void _initializeBuilder(
          GsplitFromGroupData_splitsByPart_fromUserBuilder b) =>
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
  static Serializer<GsplitFromGroupData_splitsByPart_fromUser> get serializer =>
      _$gsplitFromGroupDataSplitsByPartFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromGroupData_splitsByPart_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromGroupData_splitsByPart_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromGroupData_splitsByPart_fromUser.serializer,
        json,
      );
}

abstract class GsplitFromGroupData_splitsByPart_toUser
    implements
        Built<GsplitFromGroupData_splitsByPart_toUser,
            GsplitFromGroupData_splitsByPart_toUserBuilder>,
        GSplitFields_toUser,
        GUserFields {
  GsplitFromGroupData_splitsByPart_toUser._();

  factory GsplitFromGroupData_splitsByPart_toUser(
      [Function(GsplitFromGroupData_splitsByPart_toUserBuilder b)
          updates]) = _$GsplitFromGroupData_splitsByPart_toUser;

  static void _initializeBuilder(
          GsplitFromGroupData_splitsByPart_toUserBuilder b) =>
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
  static Serializer<GsplitFromGroupData_splitsByPart_toUser> get serializer =>
      _$gsplitFromGroupDataSplitsByPartToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromGroupData_splitsByPart_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromGroupData_splitsByPart_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromGroupData_splitsByPart_toUser.serializer,
        json,
      );
}

abstract class GsplitFromGroupData_splitsByPart_amount
    implements
        Built<GsplitFromGroupData_splitsByPart_amount,
            GsplitFromGroupData_splitsByPart_amountBuilder>,
        GSplitFields_amount,
        GAmountFields {
  GsplitFromGroupData_splitsByPart_amount._();

  factory GsplitFromGroupData_splitsByPart_amount(
      [Function(GsplitFromGroupData_splitsByPart_amountBuilder b)
          updates]) = _$GsplitFromGroupData_splitsByPart_amount;

  static void _initializeBuilder(
          GsplitFromGroupData_splitsByPart_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GsplitFromGroupData_splitsByPart_amount> get serializer =>
      _$gsplitFromGroupDataSplitsByPartAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsplitFromGroupData_splitsByPart_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsplitFromGroupData_splitsByPart_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsplitFromGroupData_splitsByPart_amount.serializer,
        json,
      );
}

abstract class GexpenseSummaryCategorisedData
    implements
        Built<GexpenseSummaryCategorisedData,
            GexpenseSummaryCategorisedDataBuilder> {
  GexpenseSummaryCategorisedData._();

  factory GexpenseSummaryCategorisedData(
          [Function(GexpenseSummaryCategorisedDataBuilder b) updates]) =
      _$GexpenseSummaryCategorisedData;

  static void _initializeBuilder(GexpenseSummaryCategorisedDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GexpenseSummaryCategorisedData_expenseSummaryByCategory>
      get expenseSummaryByCategory;
  static Serializer<GexpenseSummaryCategorisedData> get serializer =>
      _$gexpenseSummaryCategorisedDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GexpenseSummaryCategorisedData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GexpenseSummaryCategorisedData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GexpenseSummaryCategorisedData.serializer,
        json,
      );
}

abstract class GexpenseSummaryCategorisedData_expenseSummaryByCategory
    implements
        Built<GexpenseSummaryCategorisedData_expenseSummaryByCategory,
            GexpenseSummaryCategorisedData_expenseSummaryByCategoryBuilder>,
        GCategorisedAmountFields {
  GexpenseSummaryCategorisedData_expenseSummaryByCategory._();

  factory GexpenseSummaryCategorisedData_expenseSummaryByCategory(
      [Function(
              GexpenseSummaryCategorisedData_expenseSummaryByCategoryBuilder b)
          updates]) = _$GexpenseSummaryCategorisedData_expenseSummaryByCategory;

  static void _initializeBuilder(
          GexpenseSummaryCategorisedData_expenseSummaryByCategoryBuilder b) =>
      b..G__typename = 'CategorisedAmount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get category;
  @override
  GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount get amount;
  static Serializer<GexpenseSummaryCategorisedData_expenseSummaryByCategory>
      get serializer =>
          _$gexpenseSummaryCategorisedDataExpenseSummaryByCategorySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GexpenseSummaryCategorisedData_expenseSummaryByCategory.serializer,
        this,
      ) as Map<String, dynamic>);

  static GexpenseSummaryCategorisedData_expenseSummaryByCategory? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GexpenseSummaryCategorisedData_expenseSummaryByCategory.serializer,
        json,
      );
}

abstract class GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount
    implements
        Built<GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount,
            GexpenseSummaryCategorisedData_expenseSummaryByCategory_amountBuilder>,
        GCategorisedAmountFields_amount,
        GAmountFields {
  GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount._();

  factory GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount(
          [Function(
                  GexpenseSummaryCategorisedData_expenseSummaryByCategory_amountBuilder
                      b)
              updates]) =
      _$GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount;

  static void _initializeBuilder(
          GexpenseSummaryCategorisedData_expenseSummaryByCategory_amountBuilder
              b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<
          GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount>
      get serializer =>
          _$gexpenseSummaryCategorisedDataExpenseSummaryByCategoryAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GexpenseSummaryCategorisedData_expenseSummaryByCategory_amount
                .serializer,
            json,
          );
}

abstract class GUploadFields {
  String get G__typename;
  String get id;
  String get presignedUrl;
  Map<String, dynamic> toJson();
}

abstract class GUploadFieldsData
    implements
        Built<GUploadFieldsData, GUploadFieldsDataBuilder>,
        GUploadFields {
  GUploadFieldsData._();

  factory GUploadFieldsData([Function(GUploadFieldsDataBuilder b) updates]) =
      _$GUploadFieldsData;

  static void _initializeBuilder(GUploadFieldsDataBuilder b) =>
      b..G__typename = 'ImageUploadData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get presignedUrl;
  static Serializer<GUploadFieldsData> get serializer =>
      _$gUploadFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUploadFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUploadFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUploadFieldsData.serializer,
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

abstract class GAmountFields {
  String get G__typename;
  int get amount;
  String get currencyId;
  Map<String, dynamic> toJson();
}

abstract class GAmountFieldsData
    implements
        Built<GAmountFieldsData, GAmountFieldsDataBuilder>,
        GAmountFields {
  GAmountFieldsData._();

  factory GAmountFieldsData([Function(GAmountFieldsDataBuilder b) updates]) =
      _$GAmountFieldsData;

  static void _initializeBuilder(GAmountFieldsDataBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GAmountFieldsData> get serializer =>
      _$gAmountFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAmountFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAmountFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAmountFieldsData.serializer,
        json,
      );
}

abstract class GCurrencyFields {
  String get G__typename;
  String get id;
  double get rate;
  String get symbol;
  String get displayName;
  int get decimals;
  Map<String, dynamic> toJson();
}

abstract class GCurrencyFieldsData
    implements
        Built<GCurrencyFieldsData, GCurrencyFieldsDataBuilder>,
        GCurrencyFields {
  GCurrencyFieldsData._();

  factory GCurrencyFieldsData(
      [Function(GCurrencyFieldsDataBuilder b) updates]) = _$GCurrencyFieldsData;

  static void _initializeBuilder(GCurrencyFieldsDataBuilder b) =>
      b..G__typename = 'Currency';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  double get rate;
  @override
  String get symbol;
  @override
  String get displayName;
  @override
  int get decimals;
  static Serializer<GCurrencyFieldsData> get serializer =>
      _$gCurrencyFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCurrencyFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCurrencyFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCurrencyFieldsData.serializer,
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
  GUserPaysFields_owes_amount get amount;
  Map<String, dynamic> toJson();
}

abstract class GUserPaysFields_owes_amount implements GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
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
  GUserPaysFieldsData_owes_amount get amount;
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

abstract class GUserPaysFieldsData_owes_amount
    implements
        Built<GUserPaysFieldsData_owes_amount,
            GUserPaysFieldsData_owes_amountBuilder>,
        GUserPaysFields_owes_amount,
        GAmountFields {
  GUserPaysFieldsData_owes_amount._();

  factory GUserPaysFieldsData_owes_amount(
          [Function(GUserPaysFieldsData_owes_amountBuilder b) updates]) =
      _$GUserPaysFieldsData_owes_amount;

  static void _initializeBuilder(GUserPaysFieldsData_owes_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GUserPaysFieldsData_owes_amount> get serializer =>
      _$gUserPaysFieldsDataOwesAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserPaysFieldsData_owes_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserPaysFieldsData_owes_amount? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserPaysFieldsData_owes_amount.serializer,
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
  BuiltList<GGroupFields_members_owedInGroup> get owedInGroup;
  GGroupFields_members_member get member;
  Map<String, dynamic> toJson();
}

abstract class GGroupFields_members_owedInGroup implements GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
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
  BuiltList<GGroupFieldsData_members_owedInGroup> get owedInGroup;
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

abstract class GGroupFieldsData_members_owedInGroup
    implements
        Built<GGroupFieldsData_members_owedInGroup,
            GGroupFieldsData_members_owedInGroupBuilder>,
        GGroupFields_members_owedInGroup,
        GAmountFields {
  GGroupFieldsData_members_owedInGroup._();

  factory GGroupFieldsData_members_owedInGroup(
          [Function(GGroupFieldsData_members_owedInGroupBuilder b) updates]) =
      _$GGroupFieldsData_members_owedInGroup;

  static void _initializeBuilder(
          GGroupFieldsData_members_owedInGroupBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GGroupFieldsData_members_owedInGroup> get serializer =>
      _$gGroupFieldsDataMembersOwedInGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupFieldsData_members_owedInGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupFieldsData_members_owedInGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupFieldsData_members_owedInGroup.serializer,
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
  String get updatedAt;
  String get transactionAt;
  String get category;
  GExpenseBasic_amount get amount;
  String get creatorId;
  String? get note;
  String? get imageId;
  Map<String, dynamic> toJson();
}

abstract class GExpenseBasic_amount implements GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GExpenseBasicData_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class GExpenseBasicData_amount
    implements
        Built<GExpenseBasicData_amount, GExpenseBasicData_amountBuilder>,
        GExpenseBasic_amount,
        GAmountFields {
  GExpenseBasicData_amount._();

  factory GExpenseBasicData_amount(
          [Function(GExpenseBasicData_amountBuilder b) updates]) =
      _$GExpenseBasicData_amount;

  static void _initializeBuilder(GExpenseBasicData_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GExpenseBasicData_amount> get serializer =>
      _$gExpenseBasicDataAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseBasicData_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseBasicData_amount? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseBasicData_amount.serializer,
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GExpenseFields_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  GExpenseFields_creator get creator;
  BuiltList<GExpenseFields_splits> get splits;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseFields_amount
    implements GExpenseBasic_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  GExpenseFields_splits_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GExpenseFields_splits_amount
    implements GSplitFields_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GExpenseFieldsData_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class GExpenseFieldsData_amount
    implements
        Built<GExpenseFieldsData_amount, GExpenseFieldsData_amountBuilder>,
        GExpenseFields_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GExpenseFieldsData_amount._();

  factory GExpenseFieldsData_amount(
          [Function(GExpenseFieldsData_amountBuilder b) updates]) =
      _$GExpenseFieldsData_amount;

  static void _initializeBuilder(GExpenseFieldsData_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GExpenseFieldsData_amount> get serializer =>
      _$gExpenseFieldsDataAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseFieldsData_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseFieldsData_amount? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseFieldsData_amount.serializer,
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
  GExpenseFieldsData_splits_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GExpenseFieldsData_splits_amount
    implements
        Built<GExpenseFieldsData_splits_amount,
            GExpenseFieldsData_splits_amountBuilder>,
        GExpenseFields_splits_amount,
        GSplitFields_amount,
        GAmountFields {
  GExpenseFieldsData_splits_amount._();

  factory GExpenseFieldsData_splits_amount(
          [Function(GExpenseFieldsData_splits_amountBuilder b) updates]) =
      _$GExpenseFieldsData_splits_amount;

  static void _initializeBuilder(GExpenseFieldsData_splits_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GExpenseFieldsData_splits_amount> get serializer =>
      _$gExpenseFieldsDataSplitsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseFieldsData_splits_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseFieldsData_splits_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseFieldsData_splits_amount.serializer,
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GNewExpenseFields_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  BuiltList<GNewExpenseFields_splits> get splits;
  @override
  Map<String, dynamic> toJson();
}

abstract class GNewExpenseFields_amount
    implements GExpenseBasic_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  GNewExpenseFields_splits_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GNewExpenseFields_splits_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GNewExpenseFields_splits_expense_amount
    implements
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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

abstract class GNewExpenseFields_splits_amount
    implements GSplitTransactionFields_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GNewExpenseFieldsData_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class GNewExpenseFieldsData_amount
    implements
        Built<GNewExpenseFieldsData_amount,
            GNewExpenseFieldsData_amountBuilder>,
        GNewExpenseFields_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GNewExpenseFieldsData_amount._();

  factory GNewExpenseFieldsData_amount(
          [Function(GNewExpenseFieldsData_amountBuilder b) updates]) =
      _$GNewExpenseFieldsData_amount;

  static void _initializeBuilder(GNewExpenseFieldsData_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GNewExpenseFieldsData_amount> get serializer =>
      _$gNewExpenseFieldsDataAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData_amount? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData_amount.serializer,
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
  GNewExpenseFieldsData_splits_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GNewExpenseFieldsData_splits_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class GNewExpenseFieldsData_splits_expense_amount
    implements
        Built<GNewExpenseFieldsData_splits_expense_amount,
            GNewExpenseFieldsData_splits_expense_amountBuilder>,
        GNewExpenseFields_splits_expense_amount,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GNewExpenseFieldsData_splits_expense_amount._();

  factory GNewExpenseFieldsData_splits_expense_amount(
      [Function(GNewExpenseFieldsData_splits_expense_amountBuilder b)
          updates]) = _$GNewExpenseFieldsData_splits_expense_amount;

  static void _initializeBuilder(
          GNewExpenseFieldsData_splits_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GNewExpenseFieldsData_splits_expense_amount>
      get serializer => _$gNewExpenseFieldsDataSplitsExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData_splits_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData_splits_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData_splits_expense_amount.serializer,
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

abstract class GNewExpenseFieldsData_splits_amount
    implements
        Built<GNewExpenseFieldsData_splits_amount,
            GNewExpenseFieldsData_splits_amountBuilder>,
        GNewExpenseFields_splits_amount,
        GSplitTransactionFields_amount,
        GAmountFields {
  GNewExpenseFieldsData_splits_amount._();

  factory GNewExpenseFieldsData_splits_amount(
          [Function(GNewExpenseFieldsData_splits_amountBuilder b) updates]) =
      _$GNewExpenseFieldsData_splits_amount;

  static void _initializeBuilder(
          GNewExpenseFieldsData_splits_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GNewExpenseFieldsData_splits_amount> get serializer =>
      _$gNewExpenseFieldsDataSplitsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewExpenseFieldsData_splits_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewExpenseFieldsData_splits_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewExpenseFieldsData_splits_amount.serializer,
        json,
      );
}

abstract class GConfigFields {
  String get G__typename;
  String get defaultCurrencyId;
  Map<String, dynamic> toJson();
}

abstract class GConfigFieldsData
    implements
        Built<GConfigFieldsData, GConfigFieldsDataBuilder>,
        GConfigFields {
  GConfigFieldsData._();

  factory GConfigFieldsData([Function(GConfigFieldsDataBuilder b) updates]) =
      _$GConfigFieldsData;

  static void _initializeBuilder(GConfigFieldsDataBuilder b) =>
      b..G__typename = 'UserConfig';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get defaultCurrencyId;
  static Serializer<GConfigFieldsData> get serializer =>
      _$gConfigFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GConfigFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GConfigFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GConfigFieldsData.serializer,
        json,
      );
}

abstract class GSplitFieldsBasics {
  String get G__typename;
  String get id;
  GSplitFieldsBasics_amount get amount;
  _i3.GTransactionType get transactionType;
  String get createdAt;
  String get updatedAt;
  String get transactionAt;
  String? get transactionPartGroupId;
  String get fromUserId;
  String get toUserId;
  String get creatorId;
  String? get withGroupId;
  String get groupId;
  String? get note;
  String? get imageId;
  Map<String, dynamic> toJson();
}

abstract class GSplitFieldsBasics_amount implements GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
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
  GSplitFieldsBasicsData_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GSplitFieldsBasicsData_amount
    implements
        Built<GSplitFieldsBasicsData_amount,
            GSplitFieldsBasicsData_amountBuilder>,
        GSplitFieldsBasics_amount,
        GAmountFields {
  GSplitFieldsBasicsData_amount._();

  factory GSplitFieldsBasicsData_amount(
          [Function(GSplitFieldsBasicsData_amountBuilder b) updates]) =
      _$GSplitFieldsBasicsData_amount;

  static void _initializeBuilder(GSplitFieldsBasicsData_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GSplitFieldsBasicsData_amount> get serializer =>
      _$gSplitFieldsBasicsDataAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitFieldsBasicsData_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsBasicsData_amount? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitFieldsBasicsData_amount.serializer,
        json,
      );
}

abstract class GSplitFields implements GSplitFieldsBasics {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  GSplitFields_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  GSplitFields_fromUser get fromUser;
  GSplitFields_toUser get toUser;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitFields_amount
    implements GSplitFieldsBasics_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  GSplitFieldsData_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GSplitFieldsData_amount
    implements
        Built<GSplitFieldsData_amount, GSplitFieldsData_amountBuilder>,
        GSplitFields_amount,
        GSplitFieldsBasics_amount,
        GAmountFields {
  GSplitFieldsData_amount._();

  factory GSplitFieldsData_amount(
          [Function(GSplitFieldsData_amountBuilder b) updates]) =
      _$GSplitFieldsData_amount;

  static void _initializeBuilder(GSplitFieldsData_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GSplitFieldsData_amount> get serializer =>
      _$gSplitFieldsDataAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitFieldsData_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitFieldsData_amount? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitFieldsData_amount.serializer,
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
  GSplitTransactionFields_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GSplitTransactionFields_amount
    implements GSplitFields_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GSplitTransactionFields_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitTransactionFields_expense_amount
    implements GExpenseBasic_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  GSplitTransactionFieldsData_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GSplitTransactionFieldsData_amount
    implements
        Built<GSplitTransactionFieldsData_amount,
            GSplitTransactionFieldsData_amountBuilder>,
        GSplitTransactionFields_amount,
        GSplitFields_amount,
        GAmountFields {
  GSplitTransactionFieldsData_amount._();

  factory GSplitTransactionFieldsData_amount(
          [Function(GSplitTransactionFieldsData_amountBuilder b) updates]) =
      _$GSplitTransactionFieldsData_amount;

  static void _initializeBuilder(GSplitTransactionFieldsData_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GSplitTransactionFieldsData_amount> get serializer =>
      _$gSplitTransactionFieldsDataAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitTransactionFieldsData_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsData_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitTransactionFieldsData_amount.serializer,
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GSplitTransactionFieldsData_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class GSplitTransactionFieldsData_expense_amount
    implements
        Built<GSplitTransactionFieldsData_expense_amount,
            GSplitTransactionFieldsData_expense_amountBuilder>,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GSplitTransactionFieldsData_expense_amount._();

  factory GSplitTransactionFieldsData_expense_amount(
      [Function(GSplitTransactionFieldsData_expense_amountBuilder b)
          updates]) = _$GSplitTransactionFieldsData_expense_amount;

  static void _initializeBuilder(
          GSplitTransactionFieldsData_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GSplitTransactionFieldsData_expense_amount>
      get serializer => _$gSplitTransactionFieldsDataExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitTransactionFieldsData_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitTransactionFieldsData_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitTransactionFieldsData_expense_amount.serializer,
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

abstract class GSplitWithSiblings implements GSplitTransactionFields {
  @override
  String get G__typename;
  @override
  GSplitWithSiblings_expense? get expense;
  @override
  GSplitWithSiblings_group get group;
  @override
  GSplitWithSiblings_creator get creator;
  @override
  GSplitWithSiblings_fromUser get fromUser;
  @override
  GSplitWithSiblings_toUser get toUser;
  @override
  String get id;
  @override
  GSplitWithSiblings_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  BuiltList<GSplitWithSiblings_siblings> get siblings;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitWithSiblings_expense
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GSplitWithSiblings_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitWithSiblings_expense_amount
    implements
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitWithSiblings_group
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

abstract class GSplitWithSiblings_creator
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

abstract class GSplitWithSiblings_fromUser
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

abstract class GSplitWithSiblings_toUser
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

abstract class GSplitWithSiblings_amount
    implements GSplitTransactionFields_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitWithSiblings_siblings implements GSplitTransactionFields {
  @override
  String get G__typename;
  @override
  GSplitWithSiblings_siblings_expense? get expense;
  @override
  GSplitWithSiblings_siblings_group get group;
  @override
  GSplitWithSiblings_siblings_creator get creator;
  @override
  GSplitWithSiblings_siblings_fromUser get fromUser;
  @override
  GSplitWithSiblings_siblings_toUser get toUser;
  @override
  String get id;
  @override
  GSplitWithSiblings_siblings_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitWithSiblings_siblings_expense
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GSplitWithSiblings_siblings_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitWithSiblings_siblings_expense_amount
    implements
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitWithSiblings_siblings_group
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

abstract class GSplitWithSiblings_siblings_creator
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

abstract class GSplitWithSiblings_siblings_fromUser
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

abstract class GSplitWithSiblings_siblings_toUser
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

abstract class GSplitWithSiblings_siblings_amount
    implements GSplitTransactionFields_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GSplitWithSiblingsData
    implements
        Built<GSplitWithSiblingsData, GSplitWithSiblingsDataBuilder>,
        GSplitWithSiblings,
        GSplitTransactionFields {
  GSplitWithSiblingsData._();

  factory GSplitWithSiblingsData(
          [Function(GSplitWithSiblingsDataBuilder b) updates]) =
      _$GSplitWithSiblingsData;

  static void _initializeBuilder(GSplitWithSiblingsDataBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GSplitWithSiblingsData_expense? get expense;
  @override
  GSplitWithSiblingsData_group get group;
  @override
  GSplitWithSiblingsData_creator get creator;
  @override
  GSplitWithSiblingsData_fromUser get fromUser;
  @override
  GSplitWithSiblingsData_toUser get toUser;
  @override
  String get id;
  @override
  GSplitWithSiblingsData_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  @override
  BuiltList<GSplitWithSiblingsData_siblings> get siblings;
  static Serializer<GSplitWithSiblingsData> get serializer =>
      _$gSplitWithSiblingsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_expense
    implements
        Built<GSplitWithSiblingsData_expense,
            GSplitWithSiblingsData_expenseBuilder>,
        GSplitWithSiblings_expense,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GSplitWithSiblingsData_expense._();

  factory GSplitWithSiblingsData_expense(
          [Function(GSplitWithSiblingsData_expenseBuilder b) updates]) =
      _$GSplitWithSiblingsData_expense;

  static void _initializeBuilder(GSplitWithSiblingsData_expenseBuilder b) =>
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GSplitWithSiblingsData_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<GSplitWithSiblingsData_expense> get serializer =>
      _$gSplitWithSiblingsDataExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_expense? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_expense.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_expense_amount
    implements
        Built<GSplitWithSiblingsData_expense_amount,
            GSplitWithSiblingsData_expense_amountBuilder>,
        GSplitWithSiblings_expense_amount,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GSplitWithSiblingsData_expense_amount._();

  factory GSplitWithSiblingsData_expense_amount(
          [Function(GSplitWithSiblingsData_expense_amountBuilder b) updates]) =
      _$GSplitWithSiblingsData_expense_amount;

  static void _initializeBuilder(
          GSplitWithSiblingsData_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GSplitWithSiblingsData_expense_amount> get serializer =>
      _$gSplitWithSiblingsDataExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_expense_amount.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_group
    implements
        Built<GSplitWithSiblingsData_group,
            GSplitWithSiblingsData_groupBuilder>,
        GSplitWithSiblings_group,
        GSplitTransactionFields_group,
        GGroupBasic {
  GSplitWithSiblingsData_group._();

  factory GSplitWithSiblingsData_group(
          [Function(GSplitWithSiblingsData_groupBuilder b) updates]) =
      _$GSplitWithSiblingsData_group;

  static void _initializeBuilder(GSplitWithSiblingsData_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GSplitWithSiblingsData_group> get serializer =>
      _$gSplitWithSiblingsDataGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_group? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_group.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_creator
    implements
        Built<GSplitWithSiblingsData_creator,
            GSplitWithSiblingsData_creatorBuilder>,
        GSplitWithSiblings_creator,
        GSplitTransactionFields_creator,
        GUserFields {
  GSplitWithSiblingsData_creator._();

  factory GSplitWithSiblingsData_creator(
          [Function(GSplitWithSiblingsData_creatorBuilder b) updates]) =
      _$GSplitWithSiblingsData_creator;

  static void _initializeBuilder(GSplitWithSiblingsData_creatorBuilder b) =>
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
  static Serializer<GSplitWithSiblingsData_creator> get serializer =>
      _$gSplitWithSiblingsDataCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_creator? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_creator.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_fromUser
    implements
        Built<GSplitWithSiblingsData_fromUser,
            GSplitWithSiblingsData_fromUserBuilder>,
        GSplitWithSiblings_fromUser,
        GSplitTransactionFields_fromUser,
        GUserFields {
  GSplitWithSiblingsData_fromUser._();

  factory GSplitWithSiblingsData_fromUser(
          [Function(GSplitWithSiblingsData_fromUserBuilder b) updates]) =
      _$GSplitWithSiblingsData_fromUser;

  static void _initializeBuilder(GSplitWithSiblingsData_fromUserBuilder b) =>
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
  static Serializer<GSplitWithSiblingsData_fromUser> get serializer =>
      _$gSplitWithSiblingsDataFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_fromUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_fromUser.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_toUser
    implements
        Built<GSplitWithSiblingsData_toUser,
            GSplitWithSiblingsData_toUserBuilder>,
        GSplitWithSiblings_toUser,
        GSplitTransactionFields_toUser,
        GUserFields {
  GSplitWithSiblingsData_toUser._();

  factory GSplitWithSiblingsData_toUser(
          [Function(GSplitWithSiblingsData_toUserBuilder b) updates]) =
      _$GSplitWithSiblingsData_toUser;

  static void _initializeBuilder(GSplitWithSiblingsData_toUserBuilder b) =>
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
  static Serializer<GSplitWithSiblingsData_toUser> get serializer =>
      _$gSplitWithSiblingsDataToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_toUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_toUser.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_amount
    implements
        Built<GSplitWithSiblingsData_amount,
            GSplitWithSiblingsData_amountBuilder>,
        GSplitWithSiblings_amount,
        GSplitTransactionFields_amount,
        GAmountFields {
  GSplitWithSiblingsData_amount._();

  factory GSplitWithSiblingsData_amount(
          [Function(GSplitWithSiblingsData_amountBuilder b) updates]) =
      _$GSplitWithSiblingsData_amount;

  static void _initializeBuilder(GSplitWithSiblingsData_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GSplitWithSiblingsData_amount> get serializer =>
      _$gSplitWithSiblingsDataAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_amount? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_amount.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_siblings
    implements
        Built<GSplitWithSiblingsData_siblings,
            GSplitWithSiblingsData_siblingsBuilder>,
        GSplitWithSiblings_siblings,
        GSplitTransactionFields {
  GSplitWithSiblingsData_siblings._();

  factory GSplitWithSiblingsData_siblings(
          [Function(GSplitWithSiblingsData_siblingsBuilder b) updates]) =
      _$GSplitWithSiblingsData_siblings;

  static void _initializeBuilder(GSplitWithSiblingsData_siblingsBuilder b) =>
      b..G__typename = 'Split';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GSplitWithSiblingsData_siblings_expense? get expense;
  @override
  GSplitWithSiblingsData_siblings_group get group;
  @override
  GSplitWithSiblingsData_siblings_creator get creator;
  @override
  GSplitWithSiblingsData_siblings_fromUser get fromUser;
  @override
  GSplitWithSiblingsData_siblings_toUser get toUser;
  @override
  String get id;
  @override
  GSplitWithSiblingsData_siblings_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
  static Serializer<GSplitWithSiblingsData_siblings> get serializer =>
      _$gSplitWithSiblingsDataSiblingsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_siblings.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_siblings? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_siblings.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_siblings_expense
    implements
        Built<GSplitWithSiblingsData_siblings_expense,
            GSplitWithSiblingsData_siblings_expenseBuilder>,
        GSplitWithSiblings_siblings_expense,
        GSplitTransactionFields_expense,
        GExpenseBasic {
  GSplitWithSiblingsData_siblings_expense._();

  factory GSplitWithSiblingsData_siblings_expense(
      [Function(GSplitWithSiblingsData_siblings_expenseBuilder b)
          updates]) = _$GSplitWithSiblingsData_siblings_expense;

  static void _initializeBuilder(
          GSplitWithSiblingsData_siblings_expenseBuilder b) =>
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GSplitWithSiblingsData_siblings_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  static Serializer<GSplitWithSiblingsData_siblings_expense> get serializer =>
      _$gSplitWithSiblingsDataSiblingsExpenseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_siblings_expense.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_siblings_expense? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_siblings_expense.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_siblings_expense_amount
    implements
        Built<GSplitWithSiblingsData_siblings_expense_amount,
            GSplitWithSiblingsData_siblings_expense_amountBuilder>,
        GSplitWithSiblings_siblings_expense_amount,
        GSplitTransactionFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GSplitWithSiblingsData_siblings_expense_amount._();

  factory GSplitWithSiblingsData_siblings_expense_amount(
      [Function(GSplitWithSiblingsData_siblings_expense_amountBuilder b)
          updates]) = _$GSplitWithSiblingsData_siblings_expense_amount;

  static void _initializeBuilder(
          GSplitWithSiblingsData_siblings_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GSplitWithSiblingsData_siblings_expense_amount>
      get serializer => _$gSplitWithSiblingsDataSiblingsExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_siblings_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_siblings_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_siblings_expense_amount.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_siblings_group
    implements
        Built<GSplitWithSiblingsData_siblings_group,
            GSplitWithSiblingsData_siblings_groupBuilder>,
        GSplitWithSiblings_siblings_group,
        GSplitTransactionFields_group,
        GGroupBasic {
  GSplitWithSiblingsData_siblings_group._();

  factory GSplitWithSiblingsData_siblings_group(
          [Function(GSplitWithSiblingsData_siblings_groupBuilder b) updates]) =
      _$GSplitWithSiblingsData_siblings_group;

  static void _initializeBuilder(
          GSplitWithSiblingsData_siblings_groupBuilder b) =>
      b..G__typename = 'Group';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get name;
  static Serializer<GSplitWithSiblingsData_siblings_group> get serializer =>
      _$gSplitWithSiblingsDataSiblingsGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_siblings_group.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_siblings_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_siblings_group.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_siblings_creator
    implements
        Built<GSplitWithSiblingsData_siblings_creator,
            GSplitWithSiblingsData_siblings_creatorBuilder>,
        GSplitWithSiblings_siblings_creator,
        GSplitTransactionFields_creator,
        GUserFields {
  GSplitWithSiblingsData_siblings_creator._();

  factory GSplitWithSiblingsData_siblings_creator(
      [Function(GSplitWithSiblingsData_siblings_creatorBuilder b)
          updates]) = _$GSplitWithSiblingsData_siblings_creator;

  static void _initializeBuilder(
          GSplitWithSiblingsData_siblings_creatorBuilder b) =>
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
  static Serializer<GSplitWithSiblingsData_siblings_creator> get serializer =>
      _$gSplitWithSiblingsDataSiblingsCreatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_siblings_creator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_siblings_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_siblings_creator.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_siblings_fromUser
    implements
        Built<GSplitWithSiblingsData_siblings_fromUser,
            GSplitWithSiblingsData_siblings_fromUserBuilder>,
        GSplitWithSiblings_siblings_fromUser,
        GSplitTransactionFields_fromUser,
        GUserFields {
  GSplitWithSiblingsData_siblings_fromUser._();

  factory GSplitWithSiblingsData_siblings_fromUser(
      [Function(GSplitWithSiblingsData_siblings_fromUserBuilder b)
          updates]) = _$GSplitWithSiblingsData_siblings_fromUser;

  static void _initializeBuilder(
          GSplitWithSiblingsData_siblings_fromUserBuilder b) =>
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
  static Serializer<GSplitWithSiblingsData_siblings_fromUser> get serializer =>
      _$gSplitWithSiblingsDataSiblingsFromUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_siblings_fromUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_siblings_fromUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_siblings_fromUser.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_siblings_toUser
    implements
        Built<GSplitWithSiblingsData_siblings_toUser,
            GSplitWithSiblingsData_siblings_toUserBuilder>,
        GSplitWithSiblings_siblings_toUser,
        GSplitTransactionFields_toUser,
        GUserFields {
  GSplitWithSiblingsData_siblings_toUser._();

  factory GSplitWithSiblingsData_siblings_toUser(
          [Function(GSplitWithSiblingsData_siblings_toUserBuilder b) updates]) =
      _$GSplitWithSiblingsData_siblings_toUser;

  static void _initializeBuilder(
          GSplitWithSiblingsData_siblings_toUserBuilder b) =>
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
  static Serializer<GSplitWithSiblingsData_siblings_toUser> get serializer =>
      _$gSplitWithSiblingsDataSiblingsToUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_siblings_toUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_siblings_toUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_siblings_toUser.serializer,
        json,
      );
}

abstract class GSplitWithSiblingsData_siblings_amount
    implements
        Built<GSplitWithSiblingsData_siblings_amount,
            GSplitWithSiblingsData_siblings_amountBuilder>,
        GSplitWithSiblings_siblings_amount,
        GSplitTransactionFields_amount,
        GAmountFields {
  GSplitWithSiblingsData_siblings_amount._();

  factory GSplitWithSiblingsData_siblings_amount(
          [Function(GSplitWithSiblingsData_siblings_amountBuilder b) updates]) =
      _$GSplitWithSiblingsData_siblings_amount;

  static void _initializeBuilder(
          GSplitWithSiblingsData_siblings_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GSplitWithSiblingsData_siblings_amount> get serializer =>
      _$gSplitWithSiblingsDataSiblingsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSplitWithSiblingsData_siblings_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSplitWithSiblingsData_siblings_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSplitWithSiblingsData_siblings_amount.serializer,
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
  BuiltList<GGroupWithExpenses_members_owedInGroup> get owedInGroup;
  @override
  GGroupWithExpenses_members_member get member;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_members_owedInGroup
    implements GGroupFields_members_owedInGroup, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GGroupWithExpenses_expenses_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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
  GGroupWithExpenses_expenses_splits_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GGroupWithExpenses_expenses_splits_amount
    implements
        GExpenseFields_splits_amount,
        GSplitFields_amount,
        GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GGroupWithExpenses_expenses_amount
    implements GExpenseFields_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  BuiltList<GGroupWithExpensesData_members_owedInGroup> get owedInGroup;
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

abstract class GGroupWithExpensesData_members_owedInGroup
    implements
        Built<GGroupWithExpensesData_members_owedInGroup,
            GGroupWithExpensesData_members_owedInGroupBuilder>,
        GGroupWithExpenses_members_owedInGroup,
        GGroupFields_members_owedInGroup,
        GAmountFields {
  GGroupWithExpensesData_members_owedInGroup._();

  factory GGroupWithExpensesData_members_owedInGroup(
      [Function(GGroupWithExpensesData_members_owedInGroupBuilder b)
          updates]) = _$GGroupWithExpensesData_members_owedInGroup;

  static void _initializeBuilder(
          GGroupWithExpensesData_members_owedInGroupBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GGroupWithExpensesData_members_owedInGroup>
      get serializer => _$gGroupWithExpensesDataMembersOwedInGroupSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_members_owedInGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_members_owedInGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_members_owedInGroup.serializer,
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GGroupWithExpensesData_expenses_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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
  GGroupWithExpensesData_expenses_splits_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GGroupWithExpensesData_expenses_splits_amount
    implements
        Built<GGroupWithExpensesData_expenses_splits_amount,
            GGroupWithExpensesData_expenses_splits_amountBuilder>,
        GGroupWithExpenses_expenses_splits_amount,
        GExpenseFields_splits_amount,
        GSplitFields_amount,
        GAmountFields {
  GGroupWithExpensesData_expenses_splits_amount._();

  factory GGroupWithExpensesData_expenses_splits_amount(
      [Function(GGroupWithExpensesData_expenses_splits_amountBuilder b)
          updates]) = _$GGroupWithExpensesData_expenses_splits_amount;

  static void _initializeBuilder(
          GGroupWithExpensesData_expenses_splits_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GGroupWithExpensesData_expenses_splits_amount>
      get serializer => _$gGroupWithExpensesDataExpensesSplitsAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_expenses_splits_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_expenses_splits_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_expenses_splits_amount.serializer,
        json,
      );
}

abstract class GGroupWithExpensesData_expenses_amount
    implements
        Built<GGroupWithExpensesData_expenses_amount,
            GGroupWithExpensesData_expenses_amountBuilder>,
        GGroupWithExpenses_expenses_amount,
        GExpenseFields_amount,
        GAmountFields {
  GGroupWithExpensesData_expenses_amount._();

  factory GGroupWithExpensesData_expenses_amount(
          [Function(GGroupWithExpensesData_expenses_amountBuilder b) updates]) =
      _$GGroupWithExpensesData_expenses_amount;

  static void _initializeBuilder(
          GGroupWithExpensesData_expenses_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GGroupWithExpensesData_expenses_amount> get serializer =>
      _$gGroupWithExpensesDataExpensesAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGroupWithExpensesData_expenses_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGroupWithExpensesData_expenses_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGroupWithExpensesData_expenses_amount.serializer,
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GExpenseMixSplitFields_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GExpenseMixSplitFields_expense_amount
    implements GExpenseBasic_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  GExpenseMixSplitFields_split_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GExpenseMixSplitFields_split_amount
    implements GSplitFields_amount, GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
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
  String get updatedAt;
  @override
  String get transactionAt;
  @override
  String get category;
  @override
  GExpenseMixSplitFieldsData_expense_amount get amount;
  @override
  String get creatorId;
  @override
  String? get note;
  @override
  String? get imageId;
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

abstract class GExpenseMixSplitFieldsData_expense_amount
    implements
        Built<GExpenseMixSplitFieldsData_expense_amount,
            GExpenseMixSplitFieldsData_expense_amountBuilder>,
        GExpenseMixSplitFields_expense_amount,
        GExpenseBasic_amount,
        GAmountFields {
  GExpenseMixSplitFieldsData_expense_amount._();

  factory GExpenseMixSplitFieldsData_expense_amount(
      [Function(GExpenseMixSplitFieldsData_expense_amountBuilder b)
          updates]) = _$GExpenseMixSplitFieldsData_expense_amount;

  static void _initializeBuilder(
          GExpenseMixSplitFieldsData_expense_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GExpenseMixSplitFieldsData_expense_amount> get serializer =>
      _$gExpenseMixSplitFieldsDataExpenseAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseMixSplitFieldsData_expense_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseMixSplitFieldsData_expense_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseMixSplitFieldsData_expense_amount.serializer,
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
  GExpenseMixSplitFieldsData_split_amount get amount;
  @override
  _i3.GTransactionType get transactionType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get transactionAt;
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
  String? get note;
  @override
  String? get imageId;
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

abstract class GExpenseMixSplitFieldsData_split_amount
    implements
        Built<GExpenseMixSplitFieldsData_split_amount,
            GExpenseMixSplitFieldsData_split_amountBuilder>,
        GExpenseMixSplitFields_split_amount,
        GSplitFields_amount,
        GAmountFields {
  GExpenseMixSplitFieldsData_split_amount._();

  factory GExpenseMixSplitFieldsData_split_amount(
      [Function(GExpenseMixSplitFieldsData_split_amountBuilder b)
          updates]) = _$GExpenseMixSplitFieldsData_split_amount;

  static void _initializeBuilder(
          GExpenseMixSplitFieldsData_split_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GExpenseMixSplitFieldsData_split_amount> get serializer =>
      _$gExpenseMixSplitFieldsDataSplitAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExpenseMixSplitFieldsData_split_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExpenseMixSplitFieldsData_split_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExpenseMixSplitFieldsData_split_amount.serializer,
        json,
      );
}

abstract class GCategorisedAmountFields {
  String get G__typename;
  String get category;
  GCategorisedAmountFields_amount get amount;
  Map<String, dynamic> toJson();
}

abstract class GCategorisedAmountFields_amount implements GAmountFields {
  @override
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  @override
  Map<String, dynamic> toJson();
}

abstract class GCategorisedAmountFieldsData
    implements
        Built<GCategorisedAmountFieldsData,
            GCategorisedAmountFieldsDataBuilder>,
        GCategorisedAmountFields {
  GCategorisedAmountFieldsData._();

  factory GCategorisedAmountFieldsData(
          [Function(GCategorisedAmountFieldsDataBuilder b) updates]) =
      _$GCategorisedAmountFieldsData;

  static void _initializeBuilder(GCategorisedAmountFieldsDataBuilder b) =>
      b..G__typename = 'CategorisedAmount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get category;
  @override
  GCategorisedAmountFieldsData_amount get amount;
  static Serializer<GCategorisedAmountFieldsData> get serializer =>
      _$gCategorisedAmountFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCategorisedAmountFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCategorisedAmountFieldsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCategorisedAmountFieldsData.serializer,
        json,
      );
}

abstract class GCategorisedAmountFieldsData_amount
    implements
        Built<GCategorisedAmountFieldsData_amount,
            GCategorisedAmountFieldsData_amountBuilder>,
        GCategorisedAmountFields_amount,
        GAmountFields {
  GCategorisedAmountFieldsData_amount._();

  factory GCategorisedAmountFieldsData_amount(
          [Function(GCategorisedAmountFieldsData_amountBuilder b) updates]) =
      _$GCategorisedAmountFieldsData_amount;

  static void _initializeBuilder(
          GCategorisedAmountFieldsData_amountBuilder b) =>
      b..G__typename = 'Amount';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get amount;
  @override
  String get currencyId;
  static Serializer<GCategorisedAmountFieldsData_amount> get serializer =>
      _$gCategorisedAmountFieldsDataAmountSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCategorisedAmountFieldsData_amount.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCategorisedAmountFieldsData_amount? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCategorisedAmountFieldsData_amount.serializer,
        json,
      );
}
