import 'package:pawpaw/view/detail/view/detail_view.dart';
import 'package:pawpaw/view/favorite/view/favorite_view.dart';
import 'package:pawpaw/view/onboard/view/landing_view.dart';
import 'package:pawpaw/view/search/view/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../view/catdetail/view/catdetail_view.dart';
import '../../../view/home/view/home_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();

  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case HomeView.routeName:
        return FadeTransitionPageRoute(const HomeView(), settings: args);
      case OnBoardView.routeName:
        return FadeTransitionPageRoute(const OnBoardView(), settings: args);
      case SearchView.routeName:
        return FadeTransitionPageRoute(const SearchView(), settings: args);
      case FavoriteView.routeName:
        return FadeTransitionPageRoute(const FavoriteView(), settings: args);
      case DetailView.routeName:
        return FadeTransitionPageRoute(const DetailView(), settings: args);
      case CatDetailView.routeName:
        return FadeTransitionPageRoute(const CatDetailView(), settings: args);
      default:
        return MaterialPageRoute(
          builder: (context) => const OnBoardView(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }

  CupertinoPageRoute cupertinoNavigate(Widget widget) {
    return CupertinoPageRoute(builder: (BuildContext context) => widget);
  }
}

class FadeTransitionPageRoute extends CupertinoPageRoute {
  final Widget widget;

  FadeTransitionPageRoute(this.widget, {RouteSettings? settings})
      : super(settings: settings, builder: (BuildContext context) => widget);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: widget);
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 800);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    final PageTransitionsTheme theme = Theme.of(context).pageTransitionsTheme;
    Animation<double> onlyForwardAnimation;
    switch (animation.status) {
      case AnimationStatus.reverse:
      case AnimationStatus.dismissed:
        onlyForwardAnimation = kAlwaysCompleteAnimation;
        break;
      case AnimationStatus.forward:
      case AnimationStatus.completed:
        onlyForwardAnimation = animation;
        break;
    }
    return theme.buildTransitions(
        this, context, onlyForwardAnimation, secondaryAnimation, child);
  }
}

class FadeEaseTransitionPageRoute extends CupertinoPageRoute {
  final Widget widget;

  FadeEaseTransitionPageRoute(this.widget, {RouteSettings? settings})
      : super(settings: settings, builder: (BuildContext context) => widget);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: widget);
  }

  @override
  Duration get transitionDuration => const Duration(milliseconds: 800);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    final PageTransitionsTheme theme = Theme.of(context).pageTransitionsTheme;
    Animation<double> onlyForwardAnimation;
    switch (animation.status) {
      case AnimationStatus.reverse:
      case AnimationStatus.dismissed:
        onlyForwardAnimation = kAlwaysCompleteAnimation;
        break;
      case AnimationStatus.forward:
      case AnimationStatus.completed:
        onlyForwardAnimation = animation;
        break;
    }
    return theme.buildTransitions(
        this, context, onlyForwardAnimation, secondaryAnimation, child);
  }
}
