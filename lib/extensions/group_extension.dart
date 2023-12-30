import 'package:splitbuddy/extensions/user_extension.dart';
import 'package:splitbuddy/graphql/__generated__/queries.data.gql.dart';

extension GroupExtension on GGroupFields {
  String get displayName =>
      name ?? members.map((p0) => p0.shortName).join(", ");
}
