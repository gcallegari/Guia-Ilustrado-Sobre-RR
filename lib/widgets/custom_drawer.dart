import 'package:flutter/material.dart';
import 'package:guia_app/models/user_model.dart';
import 'package:guia_app/screen/login.dart';
import 'package:guia_app/tiles/drawer_tile.dart';
import 'package:scoped_model/scoped_model.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
            color: Color(0xFF1F81C7),
          ),
        );

    return Drawer(
      child: Stack(
        children: <Widget>[
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 64.0, right: 32.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Text(
                        "Guia Ilustrado\nsobre RR",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: ScopedModelDescendant<UserModel>(
                        builder: (context, child, model) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Olá, ${!model.isLoggedIn() ? "" : model.userData["name"]}",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              GestureDetector(
                                child: Text(
                                  !model.isLoggedIn()
                                      ? "Entre ou cadastre-se >"
                                      : "Sair",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  if (!model.isLoggedIn())
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  else
                                    model.signOut();
                                },
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                color: Colors.white,
                height: 20,
              ),
              SizedBox(
                height: 10.0,
              ),
              DrawerTile(Icons.home, "Home", pageController, 0),
              DrawerTile(Icons.list, "Capítulo 1", pageController, 1),
              DrawerTile(Icons.list, "Capítulo 2", pageController, 2),
              DrawerTile(Icons.list, "Capítulo 3", pageController, 3),
              DrawerTile(Icons.list, "Capítulo 4", pageController, 4),
              DrawerTile(Icons.list, "Capítulo 5", pageController, 5),
              DrawerTile(Icons.list, "Capítulo 6", pageController, 6),
              DrawerTile(Icons.list, "Capítulo 7", pageController, 7),
              DrawerTile(Icons.edit, "Atividades", pageController, 8),
              DrawerTile(Icons.assistant, "Sobre a Autora", pageController, 9),
              SizedBox(
                height: 10.0,
              ),
              Divider(),
            ],
          )
        ],
      ),
    );
  }
}
