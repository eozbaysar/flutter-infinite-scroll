import 'package:flutter/material.dart';
import 'package:infinitescroll/theme.dart';
import 'main.dart';

class ItemWidget extends StatelessWidget {

  final SampleData sampleData;

  const ItemWidget({Key key, this.sampleData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Container(
        padding: EdgeInsets.all(5),
        child: Container(
            color: AppTheme.darkTangerine[50],
            child: Container(
                margin: EdgeInsets.all(1),
                color: AppTheme.white[50],
                child:Image.network(
                  sampleData.url,
                  fit: BoxFit.contain,
                )
            )));

  }
}
