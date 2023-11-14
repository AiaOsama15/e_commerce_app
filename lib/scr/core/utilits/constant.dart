import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Constant {
//error massage
  showErrorMassage({required BuildContext context, required String massege}) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(massege),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Ok',
                style: TextStyle(textBaseline: TextBaseline.alphabetic)),
          ),
        ],
      ),
    );
  }
}
