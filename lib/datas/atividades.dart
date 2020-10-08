import 'package:cloud_firestore/cloud_firestore.dart';

class Atividades{
  String idAtividade;
  String quest1;
  String quest2;
  String quest3;

  Atividades();

  Atividades.fromDocument(DocumentSnapshot document) {
    idAtividade = document.documentID;
    quest1 = document.data["1"];
    quest2 = document.data["2"];
    quest3 = document.data["3"];

  }

  Map<String, dynamic> toMap() {
    return {
      "idAtividade": idAtividade,
    };
  }
}