library beauty_dialog;
import 'package:flutter/material.dart';
showAlert(BuildContext context, String title, String message) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        FlatButton(
          child: Text("确定"),
          onPressed: () => Navigator.pop(context),
        )
      ],
    ),
  );
}
showSuccess(BuildContext context, String message, IconData icon) {
  showDialog(
      context: context,
      builder: (context) => new Center(
        child: new Opacity(
          opacity: 1.0,
          child: new Material(
            borderRadius: new BorderRadius.circular(10.0),
            color: Colors.black,
            elevation: 5.0,
            child: new SizedBox(
              height: 120.0,
              width: 120.0,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    icon,
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  new SizedBox(
                    width: 100.0,
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ));
}

showProgress(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.yellow,
      ),
    ),
  );
}

hideProgress(BuildContext context) {
  Navigator.pop(context);
}