import 'package:flutter/material.dart';
import 'package:flutter_ecom/main.dart';
import 'horizontal_listview.dart';

class singleProduct extends StatelessWidget {
  final String imagePath;
  final String productName;
  final int productOldMoney;
  final int productNewMoney;

  const singleProduct({Key key, this.imagePath, this.productName, this.productOldMoney, this.productNewMoney}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: productName, child: Material(
        child: InkWell(onTap: (){},
        child: GridTile(footer: Container(
          color: Colors.white70,
          child: ListTile(
            leading: Text(productName, style: TextStyle(fontWeight: FontWeight.bold))
            ,title: Text('\$$productNewMoney', style: TextStyle( fontWeight: FontWeight.w800, color: Colors.red
          ),),
            subtitle: Text('\$$productOldMoney', style: TextStyle( fontWeight: FontWeight.w800, color: Colors.black54, decoration: TextDecoration.lineThrough
            )),
          ),
        ),
        child: Image.asset(imagePath,
        fit: BoxFit.cover,))
      )
    )),
    );
  }
}



class Products extends StatelessWidget {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "new_price" :85
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "new_price" :50
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120,
      "new_price" :85
    },
    {
      "name": "Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120,
      "new_price" :85
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: productList.length,gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return singleProduct(
          productName: productList[index]['name'],
          imagePath: productList[index]['picture'],
          productOldMoney: productList[index]['old_price'],
          productNewMoney: productList[index]['new_price'],

        );
      },





    );
  }
}
