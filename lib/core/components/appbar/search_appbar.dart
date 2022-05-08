import '../../../view/search/viewmodel/search_view_model.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SearchAppBar({Key? key, this.title = "NOT IMPLEMENTED", this.onChanged})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;
  final String? title;
  final Function(String query)? onChanged;

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  bool _isSearching = false;
  String searchQuery = "Search query";
  SearchViewModel? viewModel;
  final TextEditingController _searchQueryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: _isSearching ? _buildSearchField() : _buildTitle(),
      actions: _buildActions(),
    );
  }

  Widget _buildTitle() {
    return Text(
      widget.title!,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.white, fontFamily: 'SFCompactMedium'),
    );
  }

  Widget _buildSearchField() {
    return TextFormField(
      textCapitalization: TextCapitalization.characters,
      controller: _searchQueryController,
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'Keşfet',
        border: InputBorder.none,
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.4),
          fontFamily: 'SFCompactMedium',
        ),
      ),
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: Colors.white, fontFamily: 'SFCompactMedium'),
      onChanged: (query) {
        updateSearchQuery(query);
        widget.onChanged!(query);
        TextEditingValue(
          text: query.toUpperCase(),
        );
      },
    );
  }

  List<Widget> _buildActions() {
    if (_isSearching) {
      return [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (_searchQueryController.text.isEmpty) {
              Navigator.pop(context);
              return;
            }
            _clearSearchQuery();
          },
        ),
      ];
    }

    return <Widget>[
      IconButton(
        icon: const Icon(
          Icons.search,
          size: 30,
        ),
        onPressed: startSearch,
      ),
    ];
  }

  startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));
    setState(() {
      _isSearching = true;
    });
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();
    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _searchQueryController.clear();
      updateSearchQuery("");
      widget.onChanged!("");
    });
  }
}
