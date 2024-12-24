import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  String title;
  double amount;
  Color color;
  double size;

  MoneyBox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      height: size,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Expanded(
              child: Text("${NumberFormat("#,##0.00").format(amount)}",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 50, color: Colors.white)))
        ],
      ),
    );
  }
}
