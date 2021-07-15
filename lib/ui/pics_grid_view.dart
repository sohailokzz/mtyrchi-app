import 'package:flutter/material.dart';

class PicsGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/landp1.jpg',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/landp1.jpg',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/landp1.jpg',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/landp1.jpg',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/landp1.jpg',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/landp1.jpg',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/landp1.jpg',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage(
                'assets/images/landp1.jpg',
              ),
              fit: BoxFit.contain,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.teal[100],
            ),
          ),
        ],
      ),
    );
  }
}
