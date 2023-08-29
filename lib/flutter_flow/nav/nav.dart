import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/backend/backend.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/malory_2.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          : HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/malory_2.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              : HomePageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'menuPrincipal',
          path: '/menuPrincipal',
          builder: (context, params) => MenuPrincipalWidget(),
        ),
        FFRoute(
          name: 'listabebidascalientes',
          path: '/listabebidascalientes',
          builder: (context, params) => ListabebidascalientesWidget(),
        ),
        FFRoute(
          name: 'detallebebidascalientes',
          path: '/detallebebidascalientes',
          asyncParams: {
            'parametrobebidascalientes': getDoc(
                ['BebidasCalientes'], BebidasCalientesRecord.fromSnapshot),
          },
          builder: (context, params) => DetallebebidascalientesWidget(
            parametrobebidascalientes: params.getParam(
                'parametrobebidascalientes', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'listametodos',
          path: '/listametodos',
          builder: (context, params) => ListametodosWidget(),
        ),
        FFRoute(
          name: 'detallemetodo',
          path: '/detallemetodo',
          asyncParams: {
            'parametrometodo': getDoc(['Metodos'], MetodosRecord.fromSnapshot),
          },
          builder: (context, params) => DetallemetodoWidget(
            parametrometodo:
                params.getParam('parametrometodo', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'listatortaspostres',
          path: '/listatortaspostres',
          builder: (context, params) => ListatortaspostresWidget(),
        ),
        FFRoute(
          name: 'Detalletortaspostgres',
          path: '/detalletortaspostgres',
          asyncParams: {
            'parametrotortaspostres':
                getDoc(['TortasPostres'], TortasPostresRecord.fromSnapshot),
          },
          builder: (context, params) => DetalletortaspostgresWidget(
            parametrotortaspostres:
                params.getParam('parametrotortaspostres', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'listabebidasfrias',
          path: '/listabebidasfrias',
          builder: (context, params) => ListabebidasfriasWidget(),
        ),
        FFRoute(
          name: 'Detallebebidasfrias',
          path: '/detallebebidasfrias',
          asyncParams: {
            'parametrobebidafria':
                getDoc(['BebidasFrias'], BebidasFriasRecord.fromSnapshot),
          },
          builder: (context, params) => DetallebebidasfriasWidget(
            parametrobebidafria:
                params.getParam('parametrobebidafria', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'listahorneados',
          path: '/listahorneados',
          builder: (context, params) => ListahorneadosWidget(),
        ),
        FFRoute(
          name: 'Detallehorneados',
          path: '/detallehorneados',
          asyncParams: {
            'parametrohorneados':
                getDoc(['Horneados'], HorneadosRecord.fromSnapshot),
          },
          builder: (context, params) => DetallehorneadosWidget(
            parametrohorneados:
                params.getParam('parametrohorneados', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'listabatidos',
          path: '/listabatidos',
          builder: (context, params) => ListabatidosWidget(),
        ),
        FFRoute(
          name: 'Detallebatidos',
          path: '/detallebatidos',
          asyncParams: {
            'parametrobatidos': getDoc(['Batidos'], BatidosRecord.fromSnapshot),
          },
          builder: (context, params) => DetallebatidosWidget(
            parametrobatidos:
                params.getParam('parametrobatidos', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'listaotrasbebidas',
          path: '/listaotrasbebidas',
          builder: (context, params) => ListaotrasbebidasWidget(),
        ),
        FFRoute(
          name: 'DetalleOtrasbebidas',
          path: '/detalleOtrasbebidas',
          asyncParams: {
            'parametroOtrasbebidas':
                getDoc(['Otrasbebidas'], OtrasbebidasRecord.fromSnapshot),
          },
          builder: (context, params) => DetalleOtrasbebidasWidget(
            parametroOtrasbebidas:
                params.getParam('parametroOtrasbebidas', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'listacervezas',
          path: '/listacervezas',
          builder: (context, params) => ListacervezasWidget(),
        ),
        FFRoute(
          name: 'DetallesCervezas',
          path: '/detallesCervezas',
          asyncParams: {
            'parametrocerveza':
                getDoc(['Cervezas'], CervezasRecord.fromSnapshot),
          },
          builder: (context, params) => DetallesCervezasWidget(
            parametrocerveza:
                params.getParam('parametrocerveza', ParamType.Document),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
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

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
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
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
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
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
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
