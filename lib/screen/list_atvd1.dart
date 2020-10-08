import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:guia_app/models/user_model.dart';
import 'package:guia_app/screen/home.dart';
import 'package:guia_app/screen/list_all_atvd.dart';
import 'package:guia_app/widgets/info_atvd1.dart';
import 'package:guia_app/widgets/custom_drawer.dart';
import 'package:scoped_model/scoped_model.dart';

class ListAtvd1 extends StatefulWidget {
  @override
  _ListAtvd1State createState() => _ListAtvd1State();
}

class _ListAtvd1State extends State<ListAtvd1> {
  Future getAtividade() async {
    QuerySnapshot query = await Firestore.instance
        .collection("users")
        .document()
        .collection("atividade1")
        .getDocuments();

    return query.documents;
  }

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Container(
            child: FlatButton(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.arrow_back_ios,
                size: 22,
                color: Color(0xFF1F81C7),
                semanticLabel: 'voltar',
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ListAll(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: CustomDrawer(_pageController),
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model) {
          if (model.isLoading)
            return Center(child: CircularProgressIndicator());

          return Container(
            child: Container(
              child: FutureBuilder(
                future: model.getAtividade1(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: Text(
                        "Nennhuma atividade encontrada!",
                        style: TextStyle(
                          color: Color(0xFF1F81C7),
                          fontFamily: 'Poppins',
                        ),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      padding: EdgeInsets.all(25),
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              child: InfoAtvd1(
                                quest1: snapshot.data[index].data["1"],
                                quest2: snapshot.data[index].data["2"],
                                quest3: snapshot.data[index].data["3"],
                              ),
                              onTap: () {},
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
