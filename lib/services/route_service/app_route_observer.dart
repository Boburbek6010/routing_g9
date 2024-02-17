import 'dart:developer';

import 'package:flutter/material.dart';

class AppRouteObserver extends NavigatorObserver{

  @override
  void didPop(Route route, Route? previousRoute) {
    log("didPop");
    log("Old Page: ${route.settings.name.toString()}");
    log("PreviousRoute Page: ${previousRoute?.settings.name.toString()}");
    // super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    log("didPush");
    log("New Page: ${route.settings.name.toString()}");
    log("PreviousRoute Page: ${previousRoute?.settings.name.toString()}");
    // super.didPush(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log("didRemove");
    log("New Page: ${route.settings.name.toString()}");
    log("PreviousRoute Page: ${previousRoute?.settings.name.toString()}");
    // super.didRemove(route, previousRoute);
  }


  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log("didReplace");
    log("New Page: ${newRoute?.settings.name.toString()}");
    log("OldRoute Page: ${oldRoute?.settings.name.toString()}");
    // super.didReplace();
  }

}