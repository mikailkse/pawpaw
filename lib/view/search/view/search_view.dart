import 'package:pawpaw/core/components/appbar/search_appbar.dart';
import 'package:pawpaw/core/init/network/network_manager.dart';
import 'package:pawpaw/view/search/service/search_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/base/view/base_widget.dart';
import '../viewmodel/search_view_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);
  static const routeName = "searchView";

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return BaseView<SearchViewModel>(
      viewModel: SearchViewModel(
          SearchService(VexanaManager.instance.networkManager, scaffoldKey)),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, SearchViewModel viewModel) =>
          Scaffold(
        key: scaffoldKey,
        appBar: SearchAppBar(
          title: 'Keşfet',
          onChanged: (query) {
            viewModel.fetchBreedsSearch(query);
          },
        ),
        body: Column(
          children: [
            Observer(builder: (_) {
              return Form(
                key: viewModel.formState,
                child: Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: viewModel.breedsRequestModel?.length ?? 0,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            viewModel.breedsRequestModel?[index].name
                                    .toString() ??
                                '',
                          ),
                        );
                      }),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
