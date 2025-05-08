import 'package:flutter/cupertino.dart';

class PageStore extends ChangeNotifier {
   int _page;
   int get page => _page;
   PageStore(this._page);

   toPage(int page) {
     this._page = page;
     notifyListeners();
   }
}