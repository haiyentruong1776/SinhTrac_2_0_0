import 'package:seabird.biometry/helpers/app_colors.dart';
import 'dart:io';
import 'package:flutter/material.dart';

class CommonFunctions {
  static void onWillPop(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        backgroundColor: AppColors.white,
        title: new Text('Bạn muốn thoát ứng dụng ?',
            style: TextStyle(
              color: AppColors.error,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        actions: <Widget>[
          new TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text(
              'KHÔNG',
              style: TextStyle(
                color: AppColors.dialogAction,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new TextButton(
            onPressed: () => exit(0),
            child: new Text(
              'CÓ',
              style: TextStyle(
                color: AppColors.error,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static BoxDecoration boxDecoration([Color? color]) {
    return BoxDecoration(
      color: color != null ? color : AppColors.cardBg,
      border: Border.all(width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(20.0) //
          ),
    );
  }

  static Widget getMenuBox(Row row, BuildContext context, String path) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, path);
      },
      child: Container(
          padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
          margin: EdgeInsets.only(bottom: 16),
          alignment: Alignment.centerLeft,
          decoration: boxDecoration(),
          child: row),
    );
  }
}
