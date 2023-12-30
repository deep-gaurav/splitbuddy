// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GExpenseFieldsData.serializer)
      ..add(GExpenseFieldsData_creator.serializer)
      ..add(GExpenseFieldsData_splits.serializer)
      ..add(GExpenseFieldsData_splits_fromUser.serializer)
      ..add(GExpenseFieldsData_splits_toUser.serializer)
      ..add(GExpenseFieldsReq.serializer)
      ..add(GExpenseFieldsVars.serializer)
      ..add(GGroupFieldsData.serializer)
      ..add(GGroupFieldsData_creator.serializer)
      ..add(GGroupFieldsData_members.serializer)
      ..add(GGroupFieldsReq.serializer)
      ..add(GGroupFieldsVars.serializer)
      ..add(GGroupWithExpensesData.serializer)
      ..add(GGroupWithExpensesData_creator.serializer)
      ..add(GGroupWithExpensesData_expenses.serializer)
      ..add(GGroupWithExpensesData_expenses_creator.serializer)
      ..add(GGroupWithExpensesData_expenses_splits.serializer)
      ..add(GGroupWithExpensesData_expenses_splits_fromUser.serializer)
      ..add(GGroupWithExpensesData_expenses_splits_toUser.serializer)
      ..add(GGroupWithExpensesData_members.serializer)
      ..add(GGroupWithExpensesReq.serializer)
      ..add(GGroupWithExpensesVars.serializer)
      ..add(GSplitFieldsData.serializer)
      ..add(GSplitFieldsData_fromUser.serializer)
      ..add(GSplitFieldsData_toUser.serializer)
      ..add(GSplitFieldsReq.serializer)
      ..add(GSplitFieldsVars.serializer)
      ..add(GSplitInput.serializer)
      ..add(GSplitInputNonGroup.serializer)
      ..add(GUserFieldsData.serializer)
      ..add(GUserFieldsReq.serializer)
      ..add(GUserFieldsVars.serializer)
      ..add(GUserPaysFieldsData.serializer)
      ..add(GUserPaysFieldsReq.serializer)
      ..add(GUserPaysFieldsVars.serializer)
      ..add(Gadd_expenseData.serializer)
      ..add(Gadd_expenseData_addExpense.serializer)
      ..add(Gadd_expenseData_addExpense_creator.serializer)
      ..add(Gadd_expenseData_addExpense_splits.serializer)
      ..add(Gadd_expenseData_addExpense_splits_fromUser.serializer)
      ..add(Gadd_expenseData_addExpense_splits_toUser.serializer)
      ..add(Gadd_expenseReq.serializer)
      ..add(Gadd_expenseVars.serializer)
      ..add(Gadd_to_groupData.serializer)
      ..add(Gadd_to_groupReq.serializer)
      ..add(Gadd_to_groupVars.serializer)
      ..add(GcreateNonGroupExpenseData.serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense.serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense.serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_creator
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits
          .serializer)
      ..add(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser
              .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_group.serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_group_creator
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_group_members
          .serializer)
      ..add(GcreateNonGroupExpenseReq.serializer)
      ..add(GcreateNonGroupExpenseVars.serializer)
      ..add(Gcreate_groupData.serializer)
      ..add(Gcreate_groupData_createGroup.serializer)
      ..add(Gcreate_groupData_createGroup_creator.serializer)
      ..add(Gcreate_groupData_createGroup_members.serializer)
      ..add(Gcreate_groupReq.serializer)
      ..add(Gcreate_groupVars.serializer)
      ..add(GgroupData.serializer)
      ..add(GgroupData_group.serializer)
      ..add(GgroupData_group_creator.serializer)
      ..add(GgroupData_group_expenses.serializer)
      ..add(GgroupData_group_expenses_creator.serializer)
      ..add(GgroupData_group_expenses_splits.serializer)
      ..add(GgroupData_group_expenses_splits_fromUser.serializer)
      ..add(GgroupData_group_expenses_splits_toUser.serializer)
      ..add(GgroupData_group_members.serializer)
      ..add(GgroupReq.serializer)
      ..add(GgroupVars.serializer)
      ..add(GgroupsData.serializer)
      ..add(GgroupsData_groups.serializer)
      ..add(GgroupsData_groups_creator.serializer)
      ..add(GgroupsData_groups_members.serializer)
      ..add(GgroupsReq.serializer)
      ..add(GgroupsVars.serializer)
      ..add(Ginteracted_usersData.serializer)
      ..add(Ginteracted_usersData_interactedUsers.serializer)
      ..add(Ginteracted_usersReq.serializer)
      ..add(Ginteracted_usersVars.serializer)
      ..add(Grefresh_tokenData.serializer)
      ..add(Grefresh_tokenData_refreshToken.serializer)
      ..add(Grefresh_tokenReq.serializer)
      ..add(Grefresh_tokenVars.serializer)
      ..add(GsearchUserByEmailData.serializer)
      ..add(GsearchUserByEmailData_findUserByEmail.serializer)
      ..add(GsearchUserByEmailReq.serializer)
      ..add(GsearchUserByEmailVars.serializer)
      ..add(Gsend_email_otpData.serializer)
      ..add(Gsend_email_otpReq.serializer)
      ..add(Gsend_email_otpVars.serializer)
      ..add(Gsettle_expenseData.serializer)
      ..add(Gsettle_expenseData_settleExpense.serializer)
      ..add(Gsettle_expenseData_settleExpense_creator.serializer)
      ..add(Gsettle_expenseData_settleExpense_splits.serializer)
      ..add(Gsettle_expenseData_settleExpense_splits_fromUser.serializer)
      ..add(Gsettle_expenseData_settleExpense_splits_toUser.serializer)
      ..add(Gsettle_expenseReq.serializer)
      ..add(Gsettle_expenseVars.serializer)
      ..add(Gsettle_userData.serializer)
      ..add(Gsettle_userReq.serializer)
      ..add(Gsettle_userVars.serializer)
      ..add(GsignupData.serializer)
      ..add(GsignupData_signup.serializer)
      ..add(GsignupData_signup_tokens.serializer)
      ..add(GsignupData_signup_user.serializer)
      ..add(GsignupReq.serializer)
      ..add(GsignupVars.serializer)
      ..add(GuserData.serializer)
      ..add(GuserData_user__asRegistered.serializer)
      ..add(GuserData_user__asRegistered_user.serializer)
      ..add(GuserData_user__asUnregistered.serializer)
      ..add(GuserData_user__base.serializer)
      ..add(GuserReq.serializer)
      ..add(GuserVars.serializer)
      ..add(Gverify_email_otpData.serializer)
      ..add(Gverify_email_otpData_verifyOtp__asUserNotSignedUp.serializer)
      ..add(Gverify_email_otpData_verifyOtp__asUserSignedUp.serializer)
      ..add(Gverify_email_otpData_verifyOtp__base.serializer)
      ..add(Gverify_email_otpReq.serializer)
      ..add(Gverify_email_otpVars.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GExpenseFieldsData_splits)]),
          () => new ListBuilder<GExpenseFieldsData_splits>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GGroupFieldsData_members)]),
          () => new ListBuilder<GGroupFieldsData_members>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGroupWithExpensesData_expenses_splits)]),
          () => new ListBuilder<GGroupWithExpensesData_expenses_splits>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGroupWithExpensesData_members)]),
          () => new ListBuilder<GGroupWithExpensesData_members>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGroupWithExpensesData_expenses)]),
          () => new ListBuilder<GGroupWithExpensesData_expenses>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GSplitInput)]),
          () => new ListBuilder<GSplitInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GSplitInputNonGroup)]),
          () => new ListBuilder<GSplitInputNonGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(Gadd_expenseData_addExpense_splits)]),
          () => new ListBuilder<Gadd_expenseData_addExpense_splits>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits)
          ]),
          () => new ListBuilder<
              GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GcreateNonGroupExpenseData_addNonGroupExpense_group_members)
          ]),
          () => new ListBuilder<
              GcreateNonGroupExpenseData_addNonGroupExpense_group_members>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(Gcreate_groupData_createGroup_members)]),
          () => new ListBuilder<Gcreate_groupData_createGroup_members>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GgroupData_group_expenses)]),
          () => new ListBuilder<GgroupData_group_expenses>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GgroupData_group_members)]),
          () => new ListBuilder<GgroupData_group_members>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GgroupData_group_expenses_splits)]),
          () => new ListBuilder<GgroupData_group_expenses_splits>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GgroupsData_groups)]),
          () => new ListBuilder<GgroupsData_groups>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GgroupsData_groups_members)]),
          () => new ListBuilder<GgroupsData_groups_members>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(Ginteracted_usersData_interactedUsers)]),
          () => new ListBuilder<Ginteracted_usersData_interactedUsers>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(Gsettle_expenseData_settleExpense_splits)]),
          () => new ListBuilder<Gsettle_expenseData_settleExpense_splits>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
