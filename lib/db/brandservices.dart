import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class BrandServices {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  void createBrand(String name) {
    var id = Uuid();
    String brandId = id.v1();
    _firestore.collection('brands').doc(brandId).set(
      {'brand': name},
    );
  }
}
