import 'dart:async';

import 'package:flutter/material.dart';
import '../models/bidding.dart';
import '../config/api.dart';

class BiddingItemListProvider extends ChangeNotifier {
  String? _idOwner;
  List<ListingOwners>? _ownerItemList;

  getItemList() => _ownerItemList;

  set ownerItemList(List<ListingOwners> ownerItemList) {
    _ownerItemList = ownerItemList;
    notifyListeners();
  }

  Future<bool> fetchOwnerItems(String idOwner) async {
    _idOwner = idOwner;

    var json = await MtyrchiAPI().getAsync('list/owner?id=$idOwner');
    var listingOwners = <ListingOwners>[];
    json['listingOwners'].forEach((v) {
      listingOwners.add(new ListingOwners.fromJson(v));
    });

    ownerItemList = listingOwners;

    return true;
  }

  /*Future sendOffer(String itemId, String price, String phone) async {
    var userId = await FlutterSession().get("id");
    return await MtyrchiAPI().getAsync(
        'save/offer?item_id=$itemId&user_id=$userId&price=$price&phone=$phone');
  }*/
}

class BiddingItemTextField {
  TextEditingController? priceController;
  TextEditingController? phoneController;

  BiddingItemTextField({
    this.priceController,
    this.phoneController,
  });
}
