import 'package:flutter/material.dart';
import '../config/api.dart';
import '../models/listing.dart';

class BiddingOwnerListProvider extends ChangeNotifier {
  int next = 0;
  int prev = 0;
  String? title;
  bool _isLoading = true;
  List<BiddingOwner>? _biddingOwners;

  getBiddingOwners() => _biddingOwners;

  set biddingOwners(List<BiddingOwner> biddingOwners) {
    _biddingOwners = biddingOwners;
    notifyListeners();
  }

  get isLoading => _isLoading;

  set isLoding(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  void fetchBiddingOwners({int year: 0}) async {
    if (!_isLoading) {
      isLoding = true;
    }

    try {
      var json = await MtyrchiAPI().getAsync('list/bidding?year=$year');

      var owners = <BiddingOwner>[];
      json['biddingOwners'].forEach((v) {
        owners.add(new BiddingOwner.fromJson(v));
      });

      next = json['next'] ?? 0;
      prev = json['prev'] ?? 0;
      title = json['title'];

      biddingOwners = owners;
    } finally {
      isLoding = false;
    }
  }
}
