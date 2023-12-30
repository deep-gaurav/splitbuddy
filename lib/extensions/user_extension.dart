import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';

extension UserExtension on GUserFields {
  String get displayName => name ?? email ?? phone ?? id;
}
