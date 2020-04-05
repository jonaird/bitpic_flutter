library bitpic;

import 'package:flutter/material.dart';

enum BitPicShape { square, circle }

class BitPic extends StatelessWidget {
  String paymail;
  double width;
  BitPicShape shape;

  BitPic(this.paymail, {this.width = 200, this.shape = BitPicShape.circle});

  @override
  Widget build(BuildContext context) {
    double borderRadius; 
    if(shape==BitPicShape.circle){
      borderRadius=width/2;
    }else{
      borderRadius=0;
    }

    return Container(
        width: width,
        height: width,
        //clipBehavior: Clip.hardEdge,
        decoration:
            BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius)),
        clipBehavior: Clip.antiAlias,
        child:
            Image.network('https://bitpic.network/u/'+paymail));
  }
}
