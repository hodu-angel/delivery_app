import 'package:flutter/material.dart';

class DeliveryList extends StatefulWidget {
  DeliveryList({Key? key, this.state}) : super(key: key);
  final String? state;

  @override
  State<DeliveryList> createState() => _DeliveryListState();
}

var brownStyle = const TextStyle( color: Colors.brown, fontFamily: 'OneStore');
var contentStyle = const TextStyle(color: Colors.black, fontFamily: 'OneStore');

class _DeliveryListState extends State<DeliveryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffDDDDDD),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2,
            )
          ]),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //상품정보
          Text('알루미늄캔 500ml 1박스...', style: contentStyle),
          Row(
            children: [
              //상품가격
              Text('68,800원', style: contentStyle),
              //갯수
              Text('(2개)', style: contentStyle),
            ],
          ),
          Row(
            children: [
              //배송현황
              Text(widget.state!, style: contentStyle),
              Text(' / ', style: contentStyle),
              //운송장번호
              Text('20220000111110000', style: contentStyle),
            ],
          ),
          Row(
            children: [
              //주문자
              Text('홍길동', style: brownStyle),
              //아이디
              Text('(hongg*****)', style: brownStyle),
              Text(' / ', style: brownStyle),
              //수취인
              Text('홍길동', style: brownStyle),
              Text(' / ', style: brownStyle),
              //주문일자
              Text('2022.06.11', style: brownStyle),
            ],
          )
        ],
      ),
    );
  }
}
