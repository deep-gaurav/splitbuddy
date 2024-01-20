import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserSetting extends StatelessWidget {
  const UserSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select<AppState, GUserFields>((value) => value.user!);
    final defaultCurrency = context.select<AppState, GCurrencyFields?>(
      (value) => value.defaultCurrency,
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            title: Text('Settings'),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: FittedBox(
                      child: UserIconWidget(user: user),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: user.name,
                      decoration: const InputDecoration(
                        label: Text('Name'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(builder: (context, constraints) {
                return DropdownMenu<GCurrencyFields>(
                  width: constraints.maxWidth,
                  label: const Text('Default Currency'),
                  initialSelection: defaultCurrency,
                  dropdownMenuEntries: context
                      .read<AppState>()
                      .currencies
                      .values
                      .map(
                        (currency) => DropdownMenuEntry(
                          value: currency,
                          label: '${currency.symbol} ${currency.displayName}',
                        ),
                      )
                      .toList(),
                );
              }),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                  label: const Text('Logout'),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
