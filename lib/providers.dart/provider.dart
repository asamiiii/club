import 'package:club/remote_firebase.dart';
import 'package:flutter/foundation.dart';

class MainProvider extends ChangeNotifier {
  bool isLoading = false;
  List<String>? categoryList = [];
  List<String> branches = [];
  // List<Announcment> announcmentList = [];

  getItems() async {
    isLoading = true;
    notifyListeners();
    await FirebaseHelper.getItemsFromFirestore();
    isLoading = false;
    notifyListeners();
  }

  handlenutritionDeclaration() {}
}
