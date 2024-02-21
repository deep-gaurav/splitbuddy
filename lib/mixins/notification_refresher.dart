import 'dart:async';

import 'package:billdivide/state/app_state.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

mixin NotificationRefresher<T extends StatefulWidget>
    on State<T>, WidgetsBindingObserver {
  StreamSubscription<void>? subscription;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      subscription = context
          .read<AppState>()
          .notificationSubscription
          .stream
          .listen((event) {
        onNotificationRefresh();
      });
    });
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        onNotificationRefresh();

      case _: //ignore;
    }
  }

  void onNotificationRefresh();

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }
}
