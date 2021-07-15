import 'package:flutter/material.dart';

class BiddingPage extends StatefulWidget {
  const BiddingPage({Key? key}) : super(key: key);

  @override
  _BiddingPageState createState() => _BiddingPageState();
}

class _BiddingPageState extends State<BiddingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text('Bidding'),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                  crossAxisCount: 1,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Bids(index, context);
                  },
                  childCount: 6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bids extends StatefulWidget {
  const Bids(int index, BuildContext context, {Key? key}) : super(key: key);

  @override
  _BidsState createState() => _BidsState();
}

class _BidsState extends State<Bids> {
  late int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: "item$index",
                child: Image.asset("assets/images/bid.jpeg", fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Top Quality fashion item',
              softWrap: true,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Rs.1,254',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
