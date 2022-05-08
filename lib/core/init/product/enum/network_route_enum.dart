enum NetworkRoutes {
  breeds,
  search,
}

extension NetwrokRoutesString on NetworkRoutes {
  String get rawValue {
    switch (this) {
      case NetworkRoutes.breeds:
        return '/breeds';
      case NetworkRoutes.search:
        return '/breeds/search';
      default:
        throw Exception('Routes Not Found');
    }
  }
}
