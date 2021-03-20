import 'package:carte_de_visite/user/models/user_model.dart';
import 'package:carte_de_visite/user/user_service.dart';
import 'package:flutter/material.dart';

import '../locator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<UserModel> _userFuture;

  @override
  void initState() {
    super.initState();
    _userFuture = locator.get<UserService>().getUserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carte de Visite'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FutureBuilder<UserModel>(
                future: _userFuture,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.active:
                    case ConnectionState.waiting:
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                      break;
                    case ConnectionState.none:
                      return Center(
                        child: Text("Verifier votre Connexion Internet"),
                      );
                      break;

                    case ConnectionState.done:
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                            "${snapshot.error}",
                            style: TextStyle(color: Colors.red),
                          ),
                        );
                      }
                      if (snapshot.hasData) {
                        UserModel user = snapshot.data;
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Username: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "${user.username}",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Behavior: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "${user.behavior}",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Balance: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "${user.balance}",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Email: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "${user.email}",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Profile: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "${user.profile}",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      }
                      break;
                    default:
                  }
                  return Container();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
