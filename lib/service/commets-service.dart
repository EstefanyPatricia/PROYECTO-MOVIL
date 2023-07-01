import 'package:cloud_firestore/cloud_firestore.dart';


FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getComment() async{
  List comments = [];

  QuerySnapshot querySnapshot = await db.collection('comments').get();
  for (var doc in querySnapshot.docs){
    final  Map<String , dynamic> data = doc.data() as Map<String , dynamic>;
    final comment = {
      "name": data['name'],
      "id": doc.id,
    };

    comments.add(comment);
  }
  print(comments);
  return comments;
}


//funcion guardar name
Future<void> addComment(String name ) async {
  await db.collection("comments").add({"name": name});
}

//Actualizar

Future<void> updateComment(String id, String newName ) async {
  await db.collection("comments").doc(id).set({"name": newName});
}


//Eliminar datos

Future<void> deleteComment( String id) async {
  await db.collection("comments").doc(id).delete();
}