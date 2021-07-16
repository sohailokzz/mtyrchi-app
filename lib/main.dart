import 'package:flutter/material.dart';
import 'package:mytyrch/mainscreen.dart';
import 'package:mytyrch/services/bidding-item-list-provider.dart';
import 'package:mytyrch/services/bidding-owner-list-provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BiddingItemListProvider>(
          create: (_) => BiddingItemListProvider(),
        ),
        ChangeNotifierProvider<BiddingOwnerListProvider>(
          create: (_) => BiddingOwnerListProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
