import 'package:flutter/material.dart';
import 'package:st_01/pages/page.dart';
import 'package:st_01/pages/page_list_item.dart';

class PageList extends StatelessWidget {
  final List<PageModal> _pageModals;

  PageList(this._pageModals);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
      children: _buildList(),
    );
  }

  List<PageListItem> _buildList() {
    return _pageModals.map((d) => PageListItem(d)).toList();
  }
}
