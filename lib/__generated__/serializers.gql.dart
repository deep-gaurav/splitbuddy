// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:billdivide/__generated__/schema.schema.gql.dart'
    show GSplitInput, GSplitInputNonGroup, GTransactionType;
import 'package:billdivide/graphql/__generated__/queries.data.gql.dart'
    show
        GuserData_user,
        Gverify_email_otpData_verifyOtp,
        GAmountFieldsData,
        GCurrencyFieldsData,
        GExpenseBasicData,
        GExpenseBasicData_amount,
        GExpenseFieldsData,
        GExpenseFieldsData_amount,
        GExpenseFieldsData_creator,
        GExpenseFieldsData_splits,
        GExpenseFieldsData_splits_amount,
        GExpenseFieldsData_splits_fromUser,
        GExpenseFieldsData_splits_toUser,
        GExpenseMixSplitFieldsData,
        GExpenseMixSplitFieldsData_expense,
        GExpenseMixSplitFieldsData_expense_amount,
        GExpenseMixSplitFieldsData_split,
        GExpenseMixSplitFieldsData_split_amount,
        GExpenseMixSplitFieldsData_split_fromUser,
        GExpenseMixSplitFieldsData_split_toUser,
        GGroupBasicData,
        GGroupFieldsData,
        GGroupFieldsData_creator,
        GGroupFieldsData_members,
        GGroupFieldsData_members_member,
        GGroupFieldsData_members_owedInGroup,
        GGroupWithExpensesData,
        GGroupWithExpensesData_creator,
        GGroupWithExpensesData_expenses,
        GGroupWithExpensesData_expenses_amount,
        GGroupWithExpensesData_expenses_creator,
        GGroupWithExpensesData_expenses_splits,
        GGroupWithExpensesData_expenses_splits_amount,
        GGroupWithExpensesData_expenses_splits_fromUser,
        GGroupWithExpensesData_expenses_splits_toUser,
        GGroupWithExpensesData_members,
        GGroupWithExpensesData_members_member,
        GGroupWithExpensesData_members_owedInGroup,
        GNewExpenseFieldsData,
        GNewExpenseFieldsData_amount,
        GNewExpenseFieldsData_splits,
        GNewExpenseFieldsData_splits_amount,
        GNewExpenseFieldsData_splits_creator,
        GNewExpenseFieldsData_splits_expense,
        GNewExpenseFieldsData_splits_expense_amount,
        GNewExpenseFieldsData_splits_fromUser,
        GNewExpenseFieldsData_splits_group,
        GNewExpenseFieldsData_splits_toUser,
        GSplitFieldsBasicsData,
        GSplitFieldsBasicsData_amount,
        GSplitFieldsData,
        GSplitFieldsData_amount,
        GSplitFieldsData_fromUser,
        GSplitFieldsData_toUser,
        GSplitTransactionFieldsData,
        GSplitTransactionFieldsData_amount,
        GSplitTransactionFieldsData_creator,
        GSplitTransactionFieldsData_expense,
        GSplitTransactionFieldsData_expense_amount,
        GSplitTransactionFieldsData_fromUser,
        GSplitTransactionFieldsData_group,
        GSplitTransactionFieldsData_toUser,
        GUserFieldsData,
        GUserPaysFieldsData,
        GUserPaysFieldsData_owes,
        GUserPaysFieldsData_owes_amount,
        Gadd_expenseData,
        Gadd_expenseData_addExpense,
        Gadd_expenseData_addExpense_amount,
        Gadd_expenseData_addExpense_splits,
        Gadd_expenseData_addExpense_splits_amount,
        Gadd_expenseData_addExpense_splits_creator,
        Gadd_expenseData_addExpense_splits_expense,
        Gadd_expenseData_addExpense_splits_expense_amount,
        Gadd_expenseData_addExpense_splits_fromUser,
        Gadd_expenseData_addExpense_splits_group,
        Gadd_expenseData_addExpense_splits_toUser,
        Gadd_to_groupData,
        GautoSettleWithUserData,
        GautoSettleWithUserData_autoSettleWithUser,
        GautoSettleWithUserData_autoSettleWithUser_amount,
        GautoSettleWithUserData_autoSettleWithUser_creator,
        GautoSettleWithUserData_autoSettleWithUser_expense,
        GautoSettleWithUserData_autoSettleWithUser_expense_amount,
        GautoSettleWithUserData_autoSettleWithUser_fromUser,
        GautoSettleWithUserData_autoSettleWithUser_group,
        GautoSettleWithUserData_autoSettleWithUser_toUser,
        GcreateNonGroupExpenseData,
        GcreateNonGroupExpenseData_addNonGroupExpense,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group,
        GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser,
        GcreateNonGroupExpenseData_addNonGroupExpense_group,
        GcreateNonGroupExpenseData_addNonGroupExpense_group_creator,
        GcreateNonGroupExpenseData_addNonGroupExpense_group_members,
        GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member,
        GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup,
        Gcreate_groupData,
        Gcreate_groupData_createGroup,
        Gcreate_groupData_createGroup_creator,
        Gcreate_groupData_createGroup_members,
        Gcreate_groupData_createGroup_members_member,
        Gcreate_groupData_createGroup_members_owedInGroup,
        GcurrenciesData,
        GcurrenciesData_currencies,
        GgroupData,
        GgroupData_group,
        GgroupData_group_creator,
        GgroupData_group_expenses,
        GgroupData_group_expenses_amount,
        GgroupData_group_expenses_creator,
        GgroupData_group_expenses_splits,
        GgroupData_group_expenses_splits_amount,
        GgroupData_group_expenses_splits_fromUser,
        GgroupData_group_expenses_splits_toUser,
        GgroupData_group_members,
        GgroupData_group_members_member,
        GgroupData_group_members_owedInGroup,
        GgroupsData,
        GgroupsData_groups,
        GgroupsData_groups_creator,
        GgroupsData_groups_members,
        GgroupsData_groups_members_member,
        GgroupsData_groups_members_owedInGroup,
        Ginteracted_usersData,
        Ginteracted_usersData_interactedUsers,
        Ginteracted_usersData_interactedUsers_owes,
        Ginteracted_usersData_interactedUsers_owes_amount,
        Grefresh_tokenData,
        Grefresh_tokenData_refreshToken,
        GsearchUserByEmailData,
        GsearchUserByEmailData_findUserByEmail,
        Gsend_email_otpData,
        GsettleInGroupData,
        GsettleInGroupData_settleInGroup,
        GsettleInGroupData_settleInGroup_amount,
        GsettleInGroupData_settleInGroup_creator,
        GsettleInGroupData_settleInGroup_expense,
        GsettleInGroupData_settleInGroup_expense_amount,
        GsettleInGroupData_settleInGroup_fromUser,
        GsettleInGroupData_settleInGroup_group,
        GsettleInGroupData_settleInGroup_toUser,
        GsignupData,
        GsignupData_signup,
        GsignupData_signup_tokens,
        GsignupData_signup_user,
        GsimplifyUserData,
        GsimplifyUserData_simplifyCrossGroup,
        GsimplifyUserData_simplifyCrossGroup_amount,
        GsimplifyUserData_simplifyCrossGroup_creator,
        GsimplifyUserData_simplifyCrossGroup_expense,
        GsimplifyUserData_simplifyCrossGroup_expense_amount,
        GsimplifyUserData_simplifyCrossGroup_fromUser,
        GsimplifyUserData_simplifyCrossGroup_group,
        GsimplifyUserData_simplifyCrossGroup_toUser,
        GtransactionMixExpenseData,
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup,
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense,
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount,
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split,
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount,
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser,
        GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser,
        GtransactionWithUserData,
        GtransactionWithUserData_getTransactionsWithUser,
        GtransactionWithUserData_getTransactionsWithUser_amount,
        GtransactionWithUserData_getTransactionsWithUser_creator,
        GtransactionWithUserData_getTransactionsWithUser_expense,
        GtransactionWithUserData_getTransactionsWithUser_expense_amount,
        GtransactionWithUserData_getTransactionsWithUser_fromUser,
        GtransactionWithUserData_getTransactionsWithUser_group,
        GtransactionWithUserData_getTransactionsWithUser_toUser,
        GuserData,
        GuserData_user__asRegistered,
        GuserData_user__asRegistered_user,
        GuserData_user__asUnregistered,
        GuserData_user__base,
        Gverify_email_otpData,
        Gverify_email_otpData_verifyOtp__asUserNotSignedUp,
        Gverify_email_otpData_verifyOtp__asUserSignedUp,
        Gverify_email_otpData_verifyOtp__base;
import 'package:billdivide/graphql/__generated__/queries.req.gql.dart'
    show
        GAmountFieldsReq,
        GCurrencyFieldsReq,
        GExpenseBasicReq,
        GExpenseFieldsReq,
        GExpenseMixSplitFieldsReq,
        GGroupBasicReq,
        GGroupFieldsReq,
        GGroupWithExpensesReq,
        GNewExpenseFieldsReq,
        GSplitFieldsBasicsReq,
        GSplitFieldsReq,
        GSplitTransactionFieldsReq,
        GUserFieldsReq,
        GUserPaysFieldsReq,
        Gadd_expenseReq,
        Gadd_to_groupReq,
        GautoSettleWithUserReq,
        GcreateNonGroupExpenseReq,
        Gcreate_groupReq,
        GcurrenciesReq,
        GgroupReq,
        GgroupsReq,
        Ginteracted_usersReq,
        Grefresh_tokenReq,
        GsearchUserByEmailReq,
        Gsend_email_otpReq,
        GsettleInGroupReq,
        GsignupReq,
        GsimplifyUserReq,
        GtransactionMixExpenseReq,
        GtransactionWithUserReq,
        GuserReq,
        Gverify_email_otpReq;
import 'package:billdivide/graphql/__generated__/queries.var.gql.dart'
    show
        GAmountFieldsVars,
        GCurrencyFieldsVars,
        GExpenseBasicVars,
        GExpenseFieldsVars,
        GExpenseMixSplitFieldsVars,
        GGroupBasicVars,
        GGroupFieldsVars,
        GGroupWithExpensesVars,
        GNewExpenseFieldsVars,
        GSplitFieldsBasicsVars,
        GSplitFieldsVars,
        GSplitTransactionFieldsVars,
        GUserFieldsVars,
        GUserPaysFieldsVars,
        Gadd_expenseVars,
        Gadd_to_groupVars,
        GautoSettleWithUserVars,
        GcreateNonGroupExpenseVars,
        Gcreate_groupVars,
        GcurrenciesVars,
        GgroupVars,
        GgroupsVars,
        Ginteracted_usersVars,
        Grefresh_tokenVars,
        GsearchUserByEmailVars,
        Gsend_email_otpVars,
        GsettleInGroupVars,
        GsignupVars,
        GsimplifyUserVars,
        GtransactionMixExpenseVars,
        GtransactionWithUserVars,
        GuserVars,
        Gverify_email_otpVars;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..add(GuserData_user.serializer)
  ..add(Gverify_email_otpData_verifyOtp.serializer)
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAmountFieldsData,
  GAmountFieldsReq,
  GAmountFieldsVars,
  GCurrencyFieldsData,
  GCurrencyFieldsReq,
  GCurrencyFieldsVars,
  GExpenseBasicData,
  GExpenseBasicData_amount,
  GExpenseBasicReq,
  GExpenseBasicVars,
  GExpenseFieldsData,
  GExpenseFieldsData_amount,
  GExpenseFieldsData_creator,
  GExpenseFieldsData_splits,
  GExpenseFieldsData_splits_amount,
  GExpenseFieldsData_splits_fromUser,
  GExpenseFieldsData_splits_toUser,
  GExpenseFieldsReq,
  GExpenseFieldsVars,
  GExpenseMixSplitFieldsData,
  GExpenseMixSplitFieldsData_expense,
  GExpenseMixSplitFieldsData_expense_amount,
  GExpenseMixSplitFieldsData_split,
  GExpenseMixSplitFieldsData_split_amount,
  GExpenseMixSplitFieldsData_split_fromUser,
  GExpenseMixSplitFieldsData_split_toUser,
  GExpenseMixSplitFieldsReq,
  GExpenseMixSplitFieldsVars,
  GGroupBasicData,
  GGroupBasicReq,
  GGroupBasicVars,
  GGroupFieldsData,
  GGroupFieldsData_creator,
  GGroupFieldsData_members,
  GGroupFieldsData_members_member,
  GGroupFieldsData_members_owedInGroup,
  GGroupFieldsReq,
  GGroupFieldsVars,
  GGroupWithExpensesData,
  GGroupWithExpensesData_creator,
  GGroupWithExpensesData_expenses,
  GGroupWithExpensesData_expenses_amount,
  GGroupWithExpensesData_expenses_creator,
  GGroupWithExpensesData_expenses_splits,
  GGroupWithExpensesData_expenses_splits_amount,
  GGroupWithExpensesData_expenses_splits_fromUser,
  GGroupWithExpensesData_expenses_splits_toUser,
  GGroupWithExpensesData_members,
  GGroupWithExpensesData_members_member,
  GGroupWithExpensesData_members_owedInGroup,
  GGroupWithExpensesReq,
  GGroupWithExpensesVars,
  GNewExpenseFieldsData,
  GNewExpenseFieldsData_amount,
  GNewExpenseFieldsData_splits,
  GNewExpenseFieldsData_splits_amount,
  GNewExpenseFieldsData_splits_creator,
  GNewExpenseFieldsData_splits_expense,
  GNewExpenseFieldsData_splits_expense_amount,
  GNewExpenseFieldsData_splits_fromUser,
  GNewExpenseFieldsData_splits_group,
  GNewExpenseFieldsData_splits_toUser,
  GNewExpenseFieldsReq,
  GNewExpenseFieldsVars,
  GSplitFieldsBasicsData,
  GSplitFieldsBasicsData_amount,
  GSplitFieldsBasicsReq,
  GSplitFieldsBasicsVars,
  GSplitFieldsData,
  GSplitFieldsData_amount,
  GSplitFieldsData_fromUser,
  GSplitFieldsData_toUser,
  GSplitFieldsReq,
  GSplitFieldsVars,
  GSplitInput,
  GSplitInputNonGroup,
  GSplitTransactionFieldsData,
  GSplitTransactionFieldsData_amount,
  GSplitTransactionFieldsData_creator,
  GSplitTransactionFieldsData_expense,
  GSplitTransactionFieldsData_expense_amount,
  GSplitTransactionFieldsData_fromUser,
  GSplitTransactionFieldsData_group,
  GSplitTransactionFieldsData_toUser,
  GSplitTransactionFieldsReq,
  GSplitTransactionFieldsVars,
  GTransactionType,
  GUserFieldsData,
  GUserFieldsReq,
  GUserFieldsVars,
  GUserPaysFieldsData,
  GUserPaysFieldsData_owes,
  GUserPaysFieldsData_owes_amount,
  GUserPaysFieldsReq,
  GUserPaysFieldsVars,
  Gadd_expenseData,
  Gadd_expenseData_addExpense,
  Gadd_expenseData_addExpense_amount,
  Gadd_expenseData_addExpense_splits,
  Gadd_expenseData_addExpense_splits_amount,
  Gadd_expenseData_addExpense_splits_creator,
  Gadd_expenseData_addExpense_splits_expense,
  Gadd_expenseData_addExpense_splits_expense_amount,
  Gadd_expenseData_addExpense_splits_fromUser,
  Gadd_expenseData_addExpense_splits_group,
  Gadd_expenseData_addExpense_splits_toUser,
  Gadd_expenseReq,
  Gadd_expenseVars,
  Gadd_to_groupData,
  Gadd_to_groupReq,
  Gadd_to_groupVars,
  GautoSettleWithUserData,
  GautoSettleWithUserData_autoSettleWithUser,
  GautoSettleWithUserData_autoSettleWithUser_amount,
  GautoSettleWithUserData_autoSettleWithUser_creator,
  GautoSettleWithUserData_autoSettleWithUser_expense,
  GautoSettleWithUserData_autoSettleWithUser_expense_amount,
  GautoSettleWithUserData_autoSettleWithUser_fromUser,
  GautoSettleWithUserData_autoSettleWithUser_group,
  GautoSettleWithUserData_autoSettleWithUser_toUser,
  GautoSettleWithUserReq,
  GautoSettleWithUserVars,
  GcreateNonGroupExpenseData,
  GcreateNonGroupExpenseData_addNonGroupExpense,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group,
  GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser,
  GcreateNonGroupExpenseData_addNonGroupExpense_group,
  GcreateNonGroupExpenseData_addNonGroupExpense_group_creator,
  GcreateNonGroupExpenseData_addNonGroupExpense_group_members,
  GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member,
  GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup,
  GcreateNonGroupExpenseReq,
  GcreateNonGroupExpenseVars,
  Gcreate_groupData,
  Gcreate_groupData_createGroup,
  Gcreate_groupData_createGroup_creator,
  Gcreate_groupData_createGroup_members,
  Gcreate_groupData_createGroup_members_member,
  Gcreate_groupData_createGroup_members_owedInGroup,
  Gcreate_groupReq,
  Gcreate_groupVars,
  GcurrenciesData,
  GcurrenciesData_currencies,
  GcurrenciesReq,
  GcurrenciesVars,
  GgroupData,
  GgroupData_group,
  GgroupData_group_creator,
  GgroupData_group_expenses,
  GgroupData_group_expenses_amount,
  GgroupData_group_expenses_creator,
  GgroupData_group_expenses_splits,
  GgroupData_group_expenses_splits_amount,
  GgroupData_group_expenses_splits_fromUser,
  GgroupData_group_expenses_splits_toUser,
  GgroupData_group_members,
  GgroupData_group_members_member,
  GgroupData_group_members_owedInGroup,
  GgroupReq,
  GgroupVars,
  GgroupsData,
  GgroupsData_groups,
  GgroupsData_groups_creator,
  GgroupsData_groups_members,
  GgroupsData_groups_members_member,
  GgroupsData_groups_members_owedInGroup,
  GgroupsReq,
  GgroupsVars,
  Ginteracted_usersData,
  Ginteracted_usersData_interactedUsers,
  Ginteracted_usersData_interactedUsers_owes,
  Ginteracted_usersData_interactedUsers_owes_amount,
  Ginteracted_usersReq,
  Ginteracted_usersVars,
  Grefresh_tokenData,
  Grefresh_tokenData_refreshToken,
  Grefresh_tokenReq,
  Grefresh_tokenVars,
  GsearchUserByEmailData,
  GsearchUserByEmailData_findUserByEmail,
  GsearchUserByEmailReq,
  GsearchUserByEmailVars,
  Gsend_email_otpData,
  Gsend_email_otpReq,
  Gsend_email_otpVars,
  GsettleInGroupData,
  GsettleInGroupData_settleInGroup,
  GsettleInGroupData_settleInGroup_amount,
  GsettleInGroupData_settleInGroup_creator,
  GsettleInGroupData_settleInGroup_expense,
  GsettleInGroupData_settleInGroup_expense_amount,
  GsettleInGroupData_settleInGroup_fromUser,
  GsettleInGroupData_settleInGroup_group,
  GsettleInGroupData_settleInGroup_toUser,
  GsettleInGroupReq,
  GsettleInGroupVars,
  GsignupData,
  GsignupData_signup,
  GsignupData_signup_tokens,
  GsignupData_signup_user,
  GsignupReq,
  GsignupVars,
  GsimplifyUserData,
  GsimplifyUserData_simplifyCrossGroup,
  GsimplifyUserData_simplifyCrossGroup_amount,
  GsimplifyUserData_simplifyCrossGroup_creator,
  GsimplifyUserData_simplifyCrossGroup_expense,
  GsimplifyUserData_simplifyCrossGroup_expense_amount,
  GsimplifyUserData_simplifyCrossGroup_fromUser,
  GsimplifyUserData_simplifyCrossGroup_group,
  GsimplifyUserData_simplifyCrossGroup_toUser,
  GsimplifyUserReq,
  GsimplifyUserVars,
  GtransactionMixExpenseData,
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup,
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense,
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount,
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split,
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount,
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser,
  GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser,
  GtransactionMixExpenseReq,
  GtransactionMixExpenseVars,
  GtransactionWithUserData,
  GtransactionWithUserData_getTransactionsWithUser,
  GtransactionWithUserData_getTransactionsWithUser_amount,
  GtransactionWithUserData_getTransactionsWithUser_creator,
  GtransactionWithUserData_getTransactionsWithUser_expense,
  GtransactionWithUserData_getTransactionsWithUser_expense_amount,
  GtransactionWithUserData_getTransactionsWithUser_fromUser,
  GtransactionWithUserData_getTransactionsWithUser_group,
  GtransactionWithUserData_getTransactionsWithUser_toUser,
  GtransactionWithUserReq,
  GtransactionWithUserVars,
  GuserData,
  GuserData_user__asRegistered,
  GuserData_user__asRegistered_user,
  GuserData_user__asUnregistered,
  GuserData_user__base,
  GuserReq,
  GuserVars,
  Gverify_email_otpData,
  Gverify_email_otpData_verifyOtp__asUserNotSignedUp,
  Gverify_email_otpData_verifyOtp__asUserSignedUp,
  Gverify_email_otpData_verifyOtp__base,
  Gverify_email_otpReq,
  Gverify_email_otpVars,
])
final Serializers serializers = _serializersBuilder.build();
