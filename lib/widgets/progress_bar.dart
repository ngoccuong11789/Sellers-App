import 'package:flutter/material.dart';

circularProgress() {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.only(top: 12),
    child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.amber)),
  );
}

linearProgress() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(top: 12),
    child: const LinearProgressIndicator(
      valueColor: AlwaysStoppedAnimation(
        Colors.amber,
      ),
    ),
  );
}
