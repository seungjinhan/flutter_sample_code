import 'package:flutter/material.dart';
import 'package:st_01/pages/page.dart';

class PageListItem extends StatelessWidget {
  final PageModal _pageModal;

  PageListItem(this._pageModal);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(_pageModal.name),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute<void>(builder: (BuildContext context) {
            return _pageModal.link;
          }));
        });
  }
}
