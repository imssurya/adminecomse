import 'package:adminecomse/db/brandservices.dart';
import 'package:adminecomse/db/categoryservices.dart';
import 'package:flutter/material.dart';

enum Page { dashboard, manege }

class Utils {
  static MaterialColor active = Colors.red;
  static MaterialColor notActive = Colors.grey;
  static GlobalKey<FormState> categoryFormkey = GlobalKey();
  static GlobalKey<FormState> brandFormkey = GlobalKey();
  static TextEditingController categoryController = TextEditingController();
  static TextEditingController brandController = TextEditingController();
  static BrandServices brandServices = BrandServices();
  static CategoryServices categoryServices = CategoryServices();
}
