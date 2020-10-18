import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/models/list_data.dart';

class OrderDetails extends StatelessWidget {
  final SushiListData item;
  const OrderDetails({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 50.0,
          ),
          padding: EdgeInsets.only(
            left: 180,
            top: 20.0,
            right: 20.0,
            bottom: 20.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 30.0,
                spreadRadius: 2.0,
                color: Colors.grey[100],
              )
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[50],
                Colors.white,
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.sushiTitle,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    width: 140,
                    child: Text(
                      item.sushiSubTitle,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    r"$" + item.sushiPrice,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                "2X",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 20.0,
          left: 10.0,
          child: Container(
            child: Image.asset(
              item.sushiImage,
              width: 150.0,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
