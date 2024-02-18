// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GAmountFieldsData.serializer)
      ..add(GAmountFieldsReq.serializer)
      ..add(GAmountFieldsVars.serializer)
      ..add(GConfigFieldsData.serializer)
      ..add(GConfigFieldsReq.serializer)
      ..add(GConfigFieldsVars.serializer)
      ..add(GCurrencyFieldsData.serializer)
      ..add(GCurrencyFieldsReq.serializer)
      ..add(GCurrencyFieldsVars.serializer)
      ..add(GExpenseBasicData.serializer)
      ..add(GExpenseBasicData_amount.serializer)
      ..add(GExpenseBasicReq.serializer)
      ..add(GExpenseBasicVars.serializer)
      ..add(GExpenseFieldsData.serializer)
      ..add(GExpenseFieldsData_amount.serializer)
      ..add(GExpenseFieldsData_creator.serializer)
      ..add(GExpenseFieldsData_splits.serializer)
      ..add(GExpenseFieldsData_splits_amount.serializer)
      ..add(GExpenseFieldsData_splits_fromUser.serializer)
      ..add(GExpenseFieldsData_splits_toUser.serializer)
      ..add(GExpenseFieldsReq.serializer)
      ..add(GExpenseFieldsVars.serializer)
      ..add(GExpenseMixSplitFieldsData.serializer)
      ..add(GExpenseMixSplitFieldsData_expense.serializer)
      ..add(GExpenseMixSplitFieldsData_expense_amount.serializer)
      ..add(GExpenseMixSplitFieldsData_split.serializer)
      ..add(GExpenseMixSplitFieldsData_split_amount.serializer)
      ..add(GExpenseMixSplitFieldsData_split_fromUser.serializer)
      ..add(GExpenseMixSplitFieldsData_split_toUser.serializer)
      ..add(GExpenseMixSplitFieldsReq.serializer)
      ..add(GExpenseMixSplitFieldsVars.serializer)
      ..add(GGroupBasicData.serializer)
      ..add(GGroupBasicReq.serializer)
      ..add(GGroupBasicVars.serializer)
      ..add(GGroupFieldsData.serializer)
      ..add(GGroupFieldsData_creator.serializer)
      ..add(GGroupFieldsData_members.serializer)
      ..add(GGroupFieldsData_members_member.serializer)
      ..add(GGroupFieldsData_members_owedInGroup.serializer)
      ..add(GGroupFieldsReq.serializer)
      ..add(GGroupFieldsVars.serializer)
      ..add(GGroupWithExpensesData.serializer)
      ..add(GGroupWithExpensesData_creator.serializer)
      ..add(GGroupWithExpensesData_expenses.serializer)
      ..add(GGroupWithExpensesData_expenses_amount.serializer)
      ..add(GGroupWithExpensesData_expenses_creator.serializer)
      ..add(GGroupWithExpensesData_expenses_splits.serializer)
      ..add(GGroupWithExpensesData_expenses_splits_amount.serializer)
      ..add(GGroupWithExpensesData_expenses_splits_fromUser.serializer)
      ..add(GGroupWithExpensesData_expenses_splits_toUser.serializer)
      ..add(GGroupWithExpensesData_members.serializer)
      ..add(GGroupWithExpensesData_members_member.serializer)
      ..add(GGroupWithExpensesData_members_owedInGroup.serializer)
      ..add(GGroupWithExpensesReq.serializer)
      ..add(GGroupWithExpensesVars.serializer)
      ..add(GNewExpenseFieldsData.serializer)
      ..add(GNewExpenseFieldsData_amount.serializer)
      ..add(GNewExpenseFieldsData_splits.serializer)
      ..add(GNewExpenseFieldsData_splits_amount.serializer)
      ..add(GNewExpenseFieldsData_splits_creator.serializer)
      ..add(GNewExpenseFieldsData_splits_expense.serializer)
      ..add(GNewExpenseFieldsData_splits_expense_amount.serializer)
      ..add(GNewExpenseFieldsData_splits_fromUser.serializer)
      ..add(GNewExpenseFieldsData_splits_group.serializer)
      ..add(GNewExpenseFieldsData_splits_toUser.serializer)
      ..add(GNewExpenseFieldsReq.serializer)
      ..add(GNewExpenseFieldsVars.serializer)
      ..add(GSplitFieldsBasicsData.serializer)
      ..add(GSplitFieldsBasicsData_amount.serializer)
      ..add(GSplitFieldsBasicsReq.serializer)
      ..add(GSplitFieldsBasicsVars.serializer)
      ..add(GSplitFieldsData.serializer)
      ..add(GSplitFieldsData_amount.serializer)
      ..add(GSplitFieldsData_fromUser.serializer)
      ..add(GSplitFieldsData_toUser.serializer)
      ..add(GSplitFieldsReq.serializer)
      ..add(GSplitFieldsVars.serializer)
      ..add(GSplitInput.serializer)
      ..add(GSplitInputNonGroup.serializer)
      ..add(GSplitTransactionFieldsData.serializer)
      ..add(GSplitTransactionFieldsData_amount.serializer)
      ..add(GSplitTransactionFieldsData_creator.serializer)
      ..add(GSplitTransactionFieldsData_expense.serializer)
      ..add(GSplitTransactionFieldsData_expense_amount.serializer)
      ..add(GSplitTransactionFieldsData_fromUser.serializer)
      ..add(GSplitTransactionFieldsData_group.serializer)
      ..add(GSplitTransactionFieldsData_toUser.serializer)
      ..add(GSplitTransactionFieldsReq.serializer)
      ..add(GSplitTransactionFieldsVars.serializer)
      ..add(GSplitWithSiblingsData.serializer)
      ..add(GSplitWithSiblingsData_amount.serializer)
      ..add(GSplitWithSiblingsData_creator.serializer)
      ..add(GSplitWithSiblingsData_expense.serializer)
      ..add(GSplitWithSiblingsData_expense_amount.serializer)
      ..add(GSplitWithSiblingsData_fromUser.serializer)
      ..add(GSplitWithSiblingsData_group.serializer)
      ..add(GSplitWithSiblingsData_siblings.serializer)
      ..add(GSplitWithSiblingsData_siblings_amount.serializer)
      ..add(GSplitWithSiblingsData_siblings_creator.serializer)
      ..add(GSplitWithSiblingsData_siblings_expense.serializer)
      ..add(GSplitWithSiblingsData_siblings_expense_amount.serializer)
      ..add(GSplitWithSiblingsData_siblings_fromUser.serializer)
      ..add(GSplitWithSiblingsData_siblings_group.serializer)
      ..add(GSplitWithSiblingsData_siblings_toUser.serializer)
      ..add(GSplitWithSiblingsData_toUser.serializer)
      ..add(GSplitWithSiblingsReq.serializer)
      ..add(GSplitWithSiblingsVars.serializer)
      ..add(GTransactionType.serializer)
      ..add(GUploadFieldsData.serializer)
      ..add(GUploadFieldsReq.serializer)
      ..add(GUploadFieldsVars.serializer)
      ..add(GUserFieldsData.serializer)
      ..add(GUserFieldsReq.serializer)
      ..add(GUserFieldsVars.serializer)
      ..add(GUserPaysFieldsData.serializer)
      ..add(GUserPaysFieldsData_owes.serializer)
      ..add(GUserPaysFieldsData_owes_amount.serializer)
      ..add(GUserPaysFieldsReq.serializer)
      ..add(GUserPaysFieldsVars.serializer)
      ..add(Gadd_expenseData.serializer)
      ..add(Gadd_expenseData_addExpense.serializer)
      ..add(Gadd_expenseData_addExpense_amount.serializer)
      ..add(Gadd_expenseData_addExpense_splits.serializer)
      ..add(Gadd_expenseData_addExpense_splits_amount.serializer)
      ..add(Gadd_expenseData_addExpense_splits_creator.serializer)
      ..add(Gadd_expenseData_addExpense_splits_expense.serializer)
      ..add(Gadd_expenseData_addExpense_splits_expense_amount.serializer)
      ..add(Gadd_expenseData_addExpense_splits_fromUser.serializer)
      ..add(Gadd_expenseData_addExpense_splits_group.serializer)
      ..add(Gadd_expenseData_addExpense_splits_toUser.serializer)
      ..add(Gadd_expenseReq.serializer)
      ..add(Gadd_expenseVars.serializer)
      ..add(Gadd_to_groupData.serializer)
      ..add(Gadd_to_groupReq.serializer)
      ..add(Gadd_to_groupVars.serializer)
      ..add(GautoSettleWithUserData.serializer)
      ..add(GautoSettleWithUserData_autoSettleWithUser.serializer)
      ..add(GautoSettleWithUserData_autoSettleWithUser_amount.serializer)
      ..add(GautoSettleWithUserData_autoSettleWithUser_creator.serializer)
      ..add(GautoSettleWithUserData_autoSettleWithUser_expense.serializer)
      ..add(
          GautoSettleWithUserData_autoSettleWithUser_expense_amount.serializer)
      ..add(GautoSettleWithUserData_autoSettleWithUser_fromUser.serializer)
      ..add(GautoSettleWithUserData_autoSettleWithUser_group.serializer)
      ..add(GautoSettleWithUserData_autoSettleWithUser_toUser.serializer)
      ..add(GautoSettleWithUserReq.serializer)
      ..add(GautoSettleWithUserVars.serializer)
      ..add(GchangeNameData.serializer)
      ..add(GchangeNameData_changeName.serializer)
      ..add(GchangeNameReq.serializer)
      ..add(GchangeNameVars.serializer)
      ..add(GcreateNonGroupExpenseData.serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense.serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense.serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_amount
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_amount
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_creator
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense
          .serializer)
      ..add(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_expense_amount
              .serializer)
      ..add(
          GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_fromUser
              .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_group
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_expense_splits_toUser
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_group.serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_group_creator
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_group_members
          .serializer)
      ..add(GcreateNonGroupExpenseData_addNonGroupExpense_group_members_member
          .serializer)
      ..add(
          GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup
              .serializer)
      ..add(GcreateNonGroupExpenseReq.serializer)
      ..add(GcreateNonGroupExpenseVars.serializer)
      ..add(Gcreate_groupData.serializer)
      ..add(Gcreate_groupData_createGroup.serializer)
      ..add(Gcreate_groupData_createGroup_creator.serializer)
      ..add(Gcreate_groupData_createGroup_members.serializer)
      ..add(Gcreate_groupData_createGroup_members_member.serializer)
      ..add(Gcreate_groupData_createGroup_members_owedInGroup.serializer)
      ..add(Gcreate_groupReq.serializer)
      ..add(Gcreate_groupVars.serializer)
      ..add(GcurrenciesData.serializer)
      ..add(GcurrenciesData_currencies.serializer)
      ..add(GcurrenciesReq.serializer)
      ..add(GcurrenciesVars.serializer)
      ..add(GcurrencyConvertData.serializer)
      ..add(GcurrencyConvertData_convertCurrency.serializer)
      ..add(GcurrencyConvertData_convertCurrency_amount.serializer)
      ..add(GcurrencyConvertData_convertCurrency_creator.serializer)
      ..add(GcurrencyConvertData_convertCurrency_expense.serializer)
      ..add(GcurrencyConvertData_convertCurrency_expense_amount.serializer)
      ..add(GcurrencyConvertData_convertCurrency_fromUser.serializer)
      ..add(GcurrencyConvertData_convertCurrency_group.serializer)
      ..add(GcurrencyConvertData_convertCurrency_toUser.serializer)
      ..add(GcurrencyConvertReq.serializer)
      ..add(GcurrencyConvertVars.serializer)
      ..add(GgetExpenseData.serializer)
      ..add(GgetExpenseData_expenseById.serializer)
      ..add(GgetExpenseData_expenseById_amount.serializer)
      ..add(GgetExpenseData_expenseById_creator.serializer)
      ..add(GgetExpenseData_expenseById_splits.serializer)
      ..add(GgetExpenseData_expenseById_splits_amount.serializer)
      ..add(GgetExpenseData_expenseById_splits_fromUser.serializer)
      ..add(GgetExpenseData_expenseById_splits_toUser.serializer)
      ..add(GgetExpenseReq.serializer)
      ..add(GgetExpenseVars.serializer)
      ..add(GgetImageUploadUrlData.serializer)
      ..add(GgetImageUploadUrlData_uploadImage.serializer)
      ..add(GgetImageUploadUrlReq.serializer)
      ..add(GgetImageUploadUrlVars.serializer)
      ..add(GgetImageViewUrlData.serializer)
      ..add(GgetImageViewUrlReq.serializer)
      ..add(GgetImageViewUrlVars.serializer)
      ..add(GgetTransactionsData.serializer)
      ..add(GgetTransactionsData_getTransactions.serializer)
      ..add(GgetTransactionsData_getTransactions_expense.serializer)
      ..add(GgetTransactionsData_getTransactions_expense_amount.serializer)
      ..add(GgetTransactionsData_getTransactions_split.serializer)
      ..add(GgetTransactionsData_getTransactions_split_amount.serializer)
      ..add(GgetTransactionsData_getTransactions_split_fromUser.serializer)
      ..add(GgetTransactionsData_getTransactions_split_toUser.serializer)
      ..add(GgetTransactionsReq.serializer)
      ..add(GgetTransactionsVars.serializer)
      ..add(GgroupData.serializer)
      ..add(GgroupData_group.serializer)
      ..add(GgroupData_group_creator.serializer)
      ..add(GgroupData_group_expenses.serializer)
      ..add(GgroupData_group_expenses_amount.serializer)
      ..add(GgroupData_group_expenses_creator.serializer)
      ..add(GgroupData_group_expenses_splits.serializer)
      ..add(GgroupData_group_expenses_splits_amount.serializer)
      ..add(GgroupData_group_expenses_splits_fromUser.serializer)
      ..add(GgroupData_group_expenses_splits_toUser.serializer)
      ..add(GgroupData_group_members.serializer)
      ..add(GgroupData_group_members_member.serializer)
      ..add(GgroupData_group_members_owedInGroup.serializer)
      ..add(GgroupReq.serializer)
      ..add(GgroupVars.serializer)
      ..add(GgroupsData.serializer)
      ..add(GgroupsData_groups.serializer)
      ..add(GgroupsData_groups_creator.serializer)
      ..add(GgroupsData_groups_members.serializer)
      ..add(GgroupsData_groups_members_member.serializer)
      ..add(GgroupsData_groups_members_owedInGroup.serializer)
      ..add(GgroupsReq.serializer)
      ..add(GgroupsVars.serializer)
      ..add(Ginteracted_usersData.serializer)
      ..add(Ginteracted_usersData_interactedUsers.serializer)
      ..add(Ginteracted_usersData_interactedUsers_owes.serializer)
      ..add(Ginteracted_usersData_interactedUsers_owes_amount.serializer)
      ..add(Ginteracted_usersReq.serializer)
      ..add(Ginteracted_usersVars.serializer)
      ..add(GrefreshData.serializer)
      ..add(GrefreshData_config.serializer)
      ..add(GrefreshData_currencies.serializer)
      ..add(GrefreshData_groups.serializer)
      ..add(GrefreshData_groups_creator.serializer)
      ..add(GrefreshData_groups_members.serializer)
      ..add(GrefreshData_groups_members_member.serializer)
      ..add(GrefreshData_groups_members_owedInGroup.serializer)
      ..add(GrefreshData_interactedUsers.serializer)
      ..add(GrefreshData_interactedUsers_owes.serializer)
      ..add(GrefreshData_interactedUsers_owes_amount.serializer)
      ..add(GrefreshData_user__asRegistered.serializer)
      ..add(GrefreshData_user__asRegistered_user.serializer)
      ..add(GrefreshData_user__asUnregistered.serializer)
      ..add(GrefreshData_user__base.serializer)
      ..add(GrefreshReq.serializer)
      ..add(GrefreshVars.serializer)
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
      ..add(GsetDefaultCurrencyData.serializer)
      ..add(GsetDefaultCurrencyData_setDefaultCurrency.serializer)
      ..add(GsetDefaultCurrencyReq.serializer)
      ..add(GsetDefaultCurrencyVars.serializer)
      ..add(GsetNotificationTokenData.serializer)
      ..add(GsetNotificationTokenReq.serializer)
      ..add(GsetNotificationTokenVars.serializer)
      ..add(GsettleInGroupData.serializer)
      ..add(GsettleInGroupData_settleInGroup.serializer)
      ..add(GsettleInGroupData_settleInGroup_amount.serializer)
      ..add(GsettleInGroupData_settleInGroup_creator.serializer)
      ..add(GsettleInGroupData_settleInGroup_expense.serializer)
      ..add(GsettleInGroupData_settleInGroup_expense_amount.serializer)
      ..add(GsettleInGroupData_settleInGroup_fromUser.serializer)
      ..add(GsettleInGroupData_settleInGroup_group.serializer)
      ..add(GsettleInGroupData_settleInGroup_toUser.serializer)
      ..add(GsettleInGroupReq.serializer)
      ..add(GsettleInGroupVars.serializer)
      ..add(GsignupData.serializer)
      ..add(GsignupData_signup.serializer)
      ..add(GsignupData_signup_tokens.serializer)
      ..add(GsignupData_signup_user.serializer)
      ..add(GsignupReq.serializer)
      ..add(GsignupVars.serializer)
      ..add(GsimplifyUserData.serializer)
      ..add(GsimplifyUserData_simplifyCrossGroup.serializer)
      ..add(GsimplifyUserData_simplifyCrossGroup_amount.serializer)
      ..add(GsimplifyUserData_simplifyCrossGroup_creator.serializer)
      ..add(GsimplifyUserData_simplifyCrossGroup_expense.serializer)
      ..add(GsimplifyUserData_simplifyCrossGroup_expense_amount.serializer)
      ..add(GsimplifyUserData_simplifyCrossGroup_fromUser.serializer)
      ..add(GsimplifyUserData_simplifyCrossGroup_group.serializer)
      ..add(GsimplifyUserData_simplifyCrossGroup_toUser.serializer)
      ..add(GsimplifyUserReq.serializer)
      ..add(GsimplifyUserVars.serializer)
      ..add(GsplitFromGroupData.serializer)
      ..add(GsplitFromGroupData_splitsByPart.serializer)
      ..add(GsplitFromGroupData_splitsByPart_amount.serializer)
      ..add(GsplitFromGroupData_splitsByPart_fromUser.serializer)
      ..add(GsplitFromGroupData_splitsByPart_toUser.serializer)
      ..add(GsplitFromGroupReq.serializer)
      ..add(GsplitFromGroupVars.serializer)
      ..add(GsplitFromidData.serializer)
      ..add(GsplitFromidData_splitById.serializer)
      ..add(GsplitFromidData_splitById_amount.serializer)
      ..add(GsplitFromidData_splitById_creator.serializer)
      ..add(GsplitFromidData_splitById_expense.serializer)
      ..add(GsplitFromidData_splitById_expense_amount.serializer)
      ..add(GsplitFromidData_splitById_fromUser.serializer)
      ..add(GsplitFromidData_splitById_group.serializer)
      ..add(GsplitFromidData_splitById_siblings.serializer)
      ..add(GsplitFromidData_splitById_siblings_amount.serializer)
      ..add(GsplitFromidData_splitById_siblings_creator.serializer)
      ..add(GsplitFromidData_splitById_siblings_expense.serializer)
      ..add(GsplitFromidData_splitById_siblings_expense_amount.serializer)
      ..add(GsplitFromidData_splitById_siblings_fromUser.serializer)
      ..add(GsplitFromidData_splitById_siblings_group.serializer)
      ..add(GsplitFromidData_splitById_siblings_toUser.serializer)
      ..add(GsplitFromidData_splitById_toUser.serializer)
      ..add(GsplitFromidReq.serializer)
      ..add(GsplitFromidVars.serializer)
      ..add(GtransactionMixExpenseData.serializer)
      ..add(GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup
          .serializer)
      ..add(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense
              .serializer)
      ..add(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_expense_amount
              .serializer)
      ..add(GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split
          .serializer)
      ..add(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_amount
              .serializer)
      ..add(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_fromUser
              .serializer)
      ..add(
          GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup_split_toUser
              .serializer)
      ..add(GtransactionMixExpenseReq.serializer)
      ..add(GtransactionMixExpenseVars.serializer)
      ..add(GtransactionWithUserData.serializer)
      ..add(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser.serializer)
      ..add(GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense
          .serializer)
      ..add(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_expense_amount
              .serializer)
      ..add(GtransactionWithUserData_getTransactionsMixExpenseWithUser_split
          .serializer)
      ..add(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_amount
              .serializer)
      ..add(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_fromUser
              .serializer)
      ..add(
          GtransactionWithUserData_getTransactionsMixExpenseWithUser_split_toUser
              .serializer)
      ..add(GtransactionWithUserReq.serializer)
      ..add(GtransactionWithUserVars.serializer)
      ..add(GuserConfigData.serializer)
      ..add(GuserConfigData_config.serializer)
      ..add(GuserConfigReq.serializer)
      ..add(GuserConfigVars.serializer)
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
              const [const FullType(GGroupFieldsData_members_owedInGroup)]),
          () => new ListBuilder<GGroupFieldsData_members_owedInGroup>())
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
          const FullType(BuiltList, const [
            const FullType(GGroupWithExpensesData_members_owedInGroup)
          ]),
          () => new ListBuilder<GGroupWithExpensesData_members_owedInGroup>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GNewExpenseFieldsData_splits)]),
          () => new ListBuilder<GNewExpenseFieldsData_splits>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GSplitInput)]),
          () => new ListBuilder<GSplitInput>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GSplitInputNonGroup)]),
          () => new ListBuilder<GSplitInputNonGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSplitWithSiblingsData_siblings)]),
          () => new ListBuilder<GSplitWithSiblingsData_siblings>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(Gadd_expenseData_addExpense_splits)]),
          () => new ListBuilder<Gadd_expenseData_addExpense_splits>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GautoSettleWithUserData_autoSettleWithUser)
          ]),
          () => new ListBuilder<GautoSettleWithUserData_autoSettleWithUser>())
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
          const FullType(BuiltList, const [
            const FullType(
                GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup)
          ]),
          () => new ListBuilder<
              GcreateNonGroupExpenseData_addNonGroupExpense_group_members_owedInGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(Gcreate_groupData_createGroup_members)]),
          () => new ListBuilder<Gcreate_groupData_createGroup_members>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(Gcreate_groupData_createGroup_members_owedInGroup)
          ]),
          () => new ListBuilder<
              Gcreate_groupData_createGroup_members_owedInGroup>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GcurrenciesData_currencies)]),
          () => new ListBuilder<GcurrenciesData_currencies>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GcurrencyConvertData_convertCurrency)]),
          () => new ListBuilder<GcurrencyConvertData_convertCurrency>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GgetExpenseData_expenseById_splits)]),
          () => new ListBuilder<GgetExpenseData_expenseById_splits>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GgetTransactionsData_getTransactions)]),
          () => new ListBuilder<GgetTransactionsData_getTransactions>())
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
          const FullType(BuiltList,
              const [const FullType(GgroupData_group_members_owedInGroup)]),
          () => new ListBuilder<GgroupData_group_members_owedInGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GgroupsData_groups)]),
          () => new ListBuilder<GgroupsData_groups>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GgroupsData_groups_members)]),
          () => new ListBuilder<GgroupsData_groups_members>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GgroupsData_groups_members_owedInGroup)]),
          () => new ListBuilder<GgroupsData_groups_members_owedInGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(Ginteracted_usersData_interactedUsers)]),
          () => new ListBuilder<Ginteracted_usersData_interactedUsers>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GrefreshData_groups)]),
          () => new ListBuilder<GrefreshData_groups>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GrefreshData_interactedUsers)]),
          () => new ListBuilder<GrefreshData_interactedUsers>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GrefreshData_currencies)]),
          () => new ListBuilder<GrefreshData_currencies>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GrefreshData_groups_members)]),
          () => new ListBuilder<GrefreshData_groups_members>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GrefreshData_groups_members_owedInGroup)]),
          () => new ListBuilder<GrefreshData_groups_members_owedInGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GsimplifyUserData_simplifyCrossGroup)]),
          () => new ListBuilder<GsimplifyUserData_simplifyCrossGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GsplitFromGroupData_splitsByPart)]),
          () => new ListBuilder<GsplitFromGroupData_splitsByPart>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GsplitFromidData_splitById_siblings)]),
          () => new ListBuilder<GsplitFromidData_splitById_siblings>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup)
          ]),
          () => new ListBuilder<
              GtransactionMixExpenseData_getTransactionsMixExpenseWithGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GtransactionWithUserData_getTransactionsMixExpenseWithUser)
          ]),
          () => new ListBuilder<
              GtransactionWithUserData_getTransactionsMixExpenseWithUser>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GUserPaysFieldsData_owes)]),
          () => new ListBuilder<GUserPaysFieldsData_owes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(Ginteracted_usersData_interactedUsers_owes)
          ]),
          () => new ListBuilder<Ginteracted_usersData_interactedUsers_owes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GrefreshData_interactedUsers_owes)]),
          () => new ListBuilder<GrefreshData_interactedUsers_owes>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
