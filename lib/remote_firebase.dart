
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:club/dummy_data.dart';
import 'package:club/models/announ_model.dart';
import 'package:club/models/item_model.dart';
import 'package:flutter/foundation.dart';
// import 'package:path/path.dart' as p;
// import 'package:firebase_storage/firebase_storage.dart';
// import '../../models/dept_model.dart';
// import '../../models/invoice_model.dart';

class FirebaseHelper {
  // static String? collectionName;

 static CollectionReference getInvoiceCollection() {
    return FirebaseFirestore.instance
        .collection('Items')
        .withConverter<ItemModel>(
          fromFirestore: (snapshot, _) => ItemModel.fromJson(snapshot.data()!),
          toFirestore: (task, _) => task.toJson(),
        );
  }

  

    static Future getItemsFromFirestore() async{
      DummyData.chocoList.clear();
     var querySnapshot =await getInvoiceCollection().get();
    // Get data from docs and convert map to List
    for (var element in querySnapshot.docs) {
      DummyData.chocoList.add(element.data() as ItemModel);
    }
    debugPrint('Firebase :${DummyData.chocoList}');
    // handleCategoryItemsList(branchName: branch);
    // handleBranchesItemsList(branchName: branch);
    // return querySnapshot;
  }

}