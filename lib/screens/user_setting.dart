import 'package:billdivide/graphql/__generated__/queries.data.gql.dart';
import 'package:billdivide/screens/home_page.dart';
import 'package:billdivide/state/app_state.dart';
import 'package:billdivide/state/customization_provider.dart';
import 'package:billdivide/utils/svg_icons.dart';
import 'package:flutter/foundation.dart';
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
          SliverAppBar.large(
            title: const Text('Settings'),
            actions: [
              PopupMenuButton(
                onSelected: (item) {
                  if (item == 'License') {
                    showLicensePage(context: context);
                  }
                },
                itemBuilder: (context) => [
                  const PopupMenuItem<String>(
                    value: 'License',
                    child: Text('Licenses'),
                  )
                ],
              )
            ],
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) async {
                        var messenger = ScaffoldMessenger.of(context);
                        try {
                          await context
                              .read<AppState>()
                              .changeName(name: value);
                        } catch (e) {
                          messenger.showSnackBar(const SnackBar(
                              content: Text('Failed to set name')));
                        }
                      },
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
                  onSelected: (value) async {
                    if (value != null) {
                      var messenger = ScaffoldMessenger.of(context);
                      try {
                        await context
                            .read<AppState>()
                            .changeDefaultCurrency(currencyId: value.id);
                      } catch (e) {
                        messenger.showSnackBar(
                          const SnackBar(
                            content: Text('Failed to set Default Currency'),
                          ),
                        );
                      }
                    }
                  },
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
          const SliverPadding(padding: EdgeInsets.only(top: 10)),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: Divider(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Customizations',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Theme',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Spacer(),
                  DropdownButton(
                    alignment: Alignment.centerRight,
                    value: context.select<Customization, ThemeMode>(
                        (value) => value.themeMode),
                    items: ThemeMode.values
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Row(
                              children: [
                                SvgIcon(asset: e.iconPath),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(e.displayName),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (theme) {
                      if (theme != null) {
                        context.read<Customization>().changeThemeMode(theme);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Theme Color',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        if (!kIsWeb)
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                              onTap: () {
                                context.read<Customization>().changeColor(null);
                              },
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: SweepGradient(
                                      colors: List.generate(
                                          20,
                                          (index) => HSLColor.fromAHSL(
                                                  1, 360 * index / 20, 1, 0.5)
                                              .toColor()),
                                      stops: List.generate(
                                        20,
                                        (index) => index / 20,
                                      ),
                                    ),
                                    border: Border.all(
                                      width: 4,
                                      color:
                                          context.select<Customization, bool>(
                                                  (value) =>
                                                      value.themeColor == null)
                                              ? Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                              : Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ...[
                          Colors.red,
                          Colors.amberAccent,
                          Colors.yellow,
                          Colors.green,
                          Colors.teal,
                          const Color(0xFF40E0D0),
                          Colors.blue,
                          const Color(0xFFEA9DFF),
                          const Color(0xFFFFB7CE)
                        ].map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                              onTap: () {
                                context.read<Customization>().changeColor(e);
                              },
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: e,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 4,
                                      color:
                                          context.select<Customization, bool>(
                                                  (value) =>
                                                      value.themeColor == e)
                                              ? Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                              : Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    var nav = Navigator.of(context);
                    await context.read<AppState>().logout();
                    nav.pop();
                  },
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
