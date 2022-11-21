import 'dart:math';

import 'package:flutter/material.dart';

class AuthInteractor with ChangeNotifier {
  void initInteractor() {}

  void authoriseUser() {}

  bool get currentUserCanOnlyRead => Random().nextInt(6) == 1;
}
