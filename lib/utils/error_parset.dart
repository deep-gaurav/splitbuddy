import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';

String? getError(dynamic error) {
  if (error is OperationResponse) {
    if (error.graphqlErrors?.firstOrNull != null) {
      return error.graphqlErrors!.first.message;
    }
  }
  return null;
}

showErrorSnackBar(BuildContext context, dynamic error) {
  var errorMessage = getError(error);
  if (errorMessage != null) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
    );
  }
}
