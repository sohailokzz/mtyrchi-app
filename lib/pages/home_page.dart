import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          iconTheme: IconThemeData(
            color: Color(0xff3951a3),
          ),
          backgroundColor: Colors.grey,
          expandedHeight: 0.0,
          pinned: false,
          title: Image.asset(
            'assets/images/mtyrchi-site.png',
            height: 30.0,
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, int) {
          return Container(
            height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                DrawerHeader(
                  child: Image.asset('assets/images/mtyrchi-logo.png'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'موقع المطيرجي للبيعات',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  'إدارة موقع المطيرجي ترحب بجميع الهواة وزوار الموقع ، أهلا وسهلا بالجميع ',
                  textAlign: TextAlign.center,
                ),
                ButtonTheme(
                  minWidth: 320.0,
                  height: 40.0,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color(0xff3951a3),
                    onPressed: () {},
                    child: Text("مزادات الحمام"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ButtonTheme(
                  minWidth: 320.0,
                  height: 40.0,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color(0xff3951a3),
                    onPressed: () {},
                    child: Text("مجموعة الأفلام"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ButtonTheme(
                  minWidth: 320.0,
                  height: 40.0,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color(0xff3951a3),
                    onPressed: () {},
                    child: Text("مجموعة الصور"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ButtonTheme(
                  minWidth: 320.0,
                  height: 40.0,
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Color(0xff3951a3),
                    onPressed: () {},
                    child: Text(" أراء الزوار"),
                  ),
                )
              ],
            ),
          );
        }, childCount: 1)),
      ],
    );
  }
}

class Demo extends StatefulWidget {
  const Demo(int index, BuildContext context, {Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
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
                child: Image.asset("assets/images/demo.jpeg", fit: BoxFit.fill),
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
            ),
          ],
        ),
      ),
    );
  }
}
