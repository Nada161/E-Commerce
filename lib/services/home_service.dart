import 'package:cloud_firestore/cloud_firestore.dart';

class HomeServices{
  final CollectionReference categoryCollectionRef=
  FirebaseFirestore.instance.collection('Categories');

  final CollectionReference productCollectionRef=
  FirebaseFirestore.instance.collection('Products');

  Future<List<QueryDocumentSnapshot>> getCategory()async{
   var value= await categoryCollectionRef.get();
    return value.docs;
  }

  Future <List<QueryDocumentSnapshot>> getProduct()async{
    var value = await productCollectionRef.get();
    return value.docs;
  }


}
