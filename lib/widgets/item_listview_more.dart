import 'package:flutter/material.dart';

class ItemListViewMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 3, 15, 3),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(-2.0, 5.0), //(x,y)
                blurRadius: 5.0,
              ),
            ],
          ),
        ),
        Positioned(
          top: 3,
          left: 25,
          child: RotatedBox(
            quarterTurns: 3,
            child: Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(-6.0, 0.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'NEW',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 35,
          left: 40,
          child: Transform.rotate(
            angle: 0.6,
            child: Image(
              height: 150,
              image: AssetImage('assets/images/nike_001.png'),
            ),
          ),
        ),
        Positioned.fill(
          top: 150,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Text('NIKE AIR FORCE'),
                Text('1 LOW WHEAT BLACK'),
                Text('\$103.99')
              ],
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 10,
          child: IconButton(
            icon: Icon(Icons.favorite_border),
          ),
        ),
      ],
    );
  }
}
