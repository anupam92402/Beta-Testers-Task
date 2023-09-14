import 'package:beta_testers_task/utils/constant.dart';
import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    List<bool> isSelected = [false, false];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Marked as Delivered',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        children: [
          Text(
            'Numbers Of Cans User Returned :',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 12,
          ),
          waterCanQuantity(
              text: '\u2022   Bisleri Water Can', color: Colors.blue),
          SizedBox(
            height: 12,
          ),
          waterCanQuantity(
              text: '\u2022   Aquafina Water Can', color: Colors.blue),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Amount Received in Cash',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Text(
                  '\u{20B9} 500',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Is lift available in building?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  CircleButton('YES', Colors.green),
                  SizedBox(
                    width: 18,
                  ),
                  CircleButton('NO', Colors.red),
                ],
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Items in this Order',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 38, 0),
                child: Text(
                  'Qty',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          quantityRow(brand: 'RO'),
          SizedBox(
            height: 12,
          ),
          quantityRow(brand: 'Bisleri'),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Security Deposit?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  CircleButton('YES', Colors.green),
                  SizedBox(
                    width: 18,
                  ),
                  CircleButton('NO', Colors.red),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey, width: 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                waterCanQuantity(text: 'Delivery Floor', color: Colors.black),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Floor Charge',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Text(
                        '\u{20B9} 25',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '(\u{20B9} 5 per floor)',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount Payable',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Text(
                        '\u{20B9} 225',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Payment Mode',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  CircleButton('UPI', Colors.green),
                  SizedBox(
                    width: 18,
                  ),
                  CircleButton('COD', Colors.red),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          TextButton(
            onPressed: null,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0), // Border radius of 12
              ),
            ),
            child: Text(
              'Submit',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  Row waterCanQuantity({required String text, required Color color}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 16, color: color, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 25,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(2),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<int>(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              value: Constant.dropDownValue,
              icon: const Icon(Icons.arrow_drop_down),
              items: Constant.items.map((int items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items.toString(),
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  Constant.dropDownValue = value ?? 0;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

class CircleButton extends StatelessWidget {
  final String text;
  final Color color;

  CircleButton(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(color: Colors.white, width: 2)),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}

Row quantityRow({required String brand}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Icon(Icons.location_city),
          SizedBox(
            width: 12,
          ),
          Text(
            '$brand Water Can',
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
        ),
      ),
      QuantitySelector()
    ],
  );
}

class QuantitySelector extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int _quantity = 0;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 0) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          GestureDetector(
            onTap: _decrementQuantity,
            child: Container(
              child: Icon(
                Icons.remove,
                color: Colors.black,
                size: 16,
              ),
            ),
          ),
          SizedBox(width: 16),
          Text(
            '$_quantity',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 16),
          GestureDetector(
            onTap: _incrementQuantity,
            child: Container(
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}