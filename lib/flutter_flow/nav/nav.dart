import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import "package:adapty_xtuel0/backend/schema/structs/index.dart"
    as adapty_xtuel0_data_schema;
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';
import 'package:music_player_library_jwsrtr/index.dart'
    as $music_player_library_jwsrtr;
import 'package:shadcn_u_i_kit_v48jv9/index.dart' as $shadcn_u_i_kit_v48jv9;
import 'package:adapty_xtuel0/index.dart' as $adapty_xtuel0;
import 'package:utility_functions_library_8g4bud/index.dart'
    as $utility_functions_library_8g4bud;

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) {
  $music_player_library_jwsrtr.initializeRoutes(
    homePageWidgetName: 'music_player_library_jwsrtr.HomePage',
  );

  $shadcn_u_i_kit_v48jv9.initializeRoutes(
    homeWidgetName: 'shadcn_u_i_kit_v48jv9.Home',
  );

  $adapty_xtuel0.initializeRoutes(
    splashWidgetName: 'adapty_xtuel0.Splash',
    paywallPageWidgetName: 'adapty_xtuel0.PaywallPage',
  );

  $utility_functions_library_8g4bud.initializeRoutes(
    homePageWidgetName: 'utility_functions_library_8g4bud.HomePage',
  );

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    refreshListenable: appStateNotifier,
    navigatorKey: appNavigatorKey,
    errorBuilder: (context, state) =>
        appStateNotifier.loggedIn ? NavBarPage() : RegisterAutWidget(),
    routes: [
      FFRoute(
        name: '_initialize',
        path: '/',
        builder: (context, _) =>
            appStateNotifier.loggedIn ? NavBarPage() : RegisterAutWidget(),
      ),
      FFRoute(
        name: HomePageWidget.routeName,
        path: HomePageWidget.routePath,
        builder: (context, params) => params.isEmpty
            ? NavBarPage(initialPage: 'HomePage')
            : HomePageWidget(),
      ),
      FFRoute(
        name: MyPageWidget.routeName,
        path: MyPageWidget.routePath,
        builder: (context, params) =>
            params.isEmpty ? NavBarPage(initialPage: 'MyPage') : MyPageWidget(),
      ),
      FFRoute(
        name: RecordingWidget.routeName,
        path: RecordingWidget.routePath,
        builder: (context, params) => RecordingWidget(),
      ),
      FFRoute(
        name: SplashWidget.routeName,
        path: SplashWidget.routePath,
        builder: (context, params) => SplashWidget(),
      ),
      FFRoute(
        name: OnBord1Widget.routeName,
        path: OnBord1Widget.routePath,
        builder: (context, params) => OnBord1Widget(),
      ),
      FFRoute(
        name: OnBord2Widget.routeName,
        path: OnBord2Widget.routePath,
        builder: (context, params) => OnBord2Widget(),
      ),
      FFRoute(
        name: OnBord3Widget.routeName,
        path: OnBord3Widget.routePath,
        builder: (context, params) => OnBord3Widget(),
      ),
      FFRoute(
        name: OnBord4Widget.routeName,
        path: OnBord4Widget.routePath,
        builder: (context, params) => OnBord4Widget(),
      ),
      FFRoute(
        name: InvitationWidget.routeName,
        path: InvitationWidget.routePath,
        builder: (context, params) => InvitationWidget(),
      ),
      FFRoute(
        name: RegisterPositionWidget.routeName,
        path: RegisterPositionWidget.routePath,
        builder: (context, params) => RegisterPositionWidget(),
      ),
      FFRoute(
        name: RegisterFamilyNameWidget.routeName,
        path: RegisterFamilyNameWidget.routePath,
        builder: (context, params) => RegisterFamilyNameWidget(),
      ),
      FFRoute(
        name: RegisterChildlenWidget.routeName,
        path: RegisterChildlenWidget.routePath,
        builder: (context, params) => RegisterChildlenWidget(),
      ),
      FFRoute(
        name: AddCildrenWidget.routeName,
        path: AddCildrenWidget.routePath,
        builder: (context, params) => AddCildrenWidget(),
      ),
      FFRoute(
        name: RegisterAutWidget.routeName,
        path: RegisterAutWidget.routePath,
        builder: (context, params) => RegisterAutWidget(),
      ),
      FFRoute(
        name: LibraryWidget.routeName,
        path: LibraryWidget.routePath,
        builder: (context, params) => params.isEmpty
            ? NavBarPage(initialPage: 'library')
            : LibraryWidget(),
      ),
      FFRoute(
        name: PostWidget.routeName,
        path: PostWidget.routePath,
        builder: (context, params) => PostWidget(
          postrecording: params.getParam(
            'postrecording',
            ParamType.String,
          ),
        ),
      ),
      FFRoute(
        name: RegisterUserNameWidget.routeName,
        path: RegisterUserNameWidget.routePath,
        builder: (context, params) => RegisterUserNameWidget(),
      ),
      FFRoute(
        name: RegisterMailWidget.routeName,
        path: RegisterMailWidget.routePath,
        builder: (context, params) => RegisterMailWidget(),
      ),
      FFRoute(
        name: $music_player_library_jwsrtr.HomePageWidget.routeName,
        path: $music_player_library_jwsrtr.HomePageWidget.routePath,
        builder: (context, params) =>
            $music_player_library_jwsrtr.HomePageWidget(),
      ),
      FFRoute(
        name: $shadcn_u_i_kit_v48jv9.HomeWidget.routeName,
        path: $shadcn_u_i_kit_v48jv9.HomeWidget.routePath,
        builder: (context, params) => $shadcn_u_i_kit_v48jv9.HomeWidget(),
      ),
      FFRoute(
        name: $adapty_xtuel0.SplashWidget.routeName,
        path: $adapty_xtuel0.SplashWidget.routePath,
        builder: (context, params) => $adapty_xtuel0.SplashWidget(),
      ),
      FFRoute(
        name: $adapty_xtuel0.PaywallPageWidget.routeName,
        path: $adapty_xtuel0.PaywallPageWidget.routePath,
        builder: (context, params) => $adapty_xtuel0.PaywallPageWidget(
          paywall: params.getParam(
            'paywall',
            ParamType.DataStruct,
            isList: false,
            structBuilder: adapty_xtuel0_data_schema
                .AdaptyPaywallStruct.fromSerializableMap,
          ),
        ),
      ),
      FFRoute(
        name: $utility_functions_library_8g4bud.HomePageWidget.routeName,
        path: $utility_functions_library_8g4bud.HomePageWidget.routePath,
        builder: (context, params) =>
            $utility_functions_library_8g4bud.HomePageWidget(),
      )
    ].map((r) => r.toRoute(appStateNotifier)).toList(),
    observers: [routeObserver],
  );
}

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/registerAut';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
