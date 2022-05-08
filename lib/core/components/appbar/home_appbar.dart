import 'package:pawpaw/core/init/navigation/navigation_service.dart';
import 'package:pawpaw/view/favorite/view/favorite_view.dart';
import 'package:pawpaw/view/search/view/search_view.dart';
import 'package:flutter/material.dart';

import '../../constants/app/app_constants.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: Theme.of(context).bottomAppBarColor,
      actions: [
        IconButton(
          onPressed: () =>
              NavigationService.instance.navigateToPage(SearchView.routeName),
          color: Theme.of(context).iconTheme.color,
          iconSize: Theme.of(context).iconTheme.size,
          icon: const Icon(
            Icons.search,
          ),
        ),
        IconButton(
          onPressed: () =>
              NavigationService.instance.navigateToPage(FavoriteView.routeName),
          color: Theme.of(context).iconTheme.color,
          iconSize: Theme.of(context).iconTheme.size,
          icon: const Icon(
            Icons.favorite_outline,
          ),
        ),
      ],
      title: Text(
        AppConstants.title,
        style: Theme.of(context).textTheme.headline3?.copyWith(
              fontFamily: 'ShadowsIntoLight',
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
    );
  }
}
