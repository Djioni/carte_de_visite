import 'package:carte_de_visite/bloc/user_bloc.dart';
import 'package:carte_de_visite/model/user.dart';
import 'package:carte_de_visite/model/user_response.dart';
import 'package:carte_de_visite/ui/nm_box.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserWidgetState();
  }
}

class _UserWidgetState extends State<UserWidget> {

@override
  void initState() {
    super.initState();
    bloc.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserResponse>(
      stream: bloc.subject.stream,
      builder: (context, AsyncSnapshot<UserResponse> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.error != null && snapshot.data.error.length > 0){
            return _buildErrorWidget(snapshot.data.error);
          }
          return _buildUserWidget(snapshot.data);

        } else if (snapshot.hasError) {
          return _buildErrorWidget(snapshot.error);
        } else {
          return _buildLoadingWidget();
        }
      },
    );
  }

  Widget _buildLoadingWidget() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Loading data from API..."),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
      )],
    ));
  }

  Widget _buildErrorWidget(String error) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Error occured: $error", style: TextStyle(color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
      ],
    ));
  }

   Widget _buildUserWidget(UserResponse data) {
    User user = data.results[0];
    return Center(
        child:  Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: nMbox,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Username', style: TextStyle(color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
                  Text("${_capitalizeFirstLetter(user.username)}}", style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w700)),
                ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Email', style: TextStyle(color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
                  Text(user.email, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 16),),
                ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Balance', style: TextStyle(color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
                  Text(user.balance.toString() ,style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 16),),
                ],
            ),
            
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Profile', style: TextStyle(color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
                  Text(user.profile ,style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 16),),
                ],
            ),
            
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Investisseur', style: TextStyle(color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
                  Text(user.investisseur ,style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 16),),
                ],
            ),
            
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
          ],
        )
      ),
    );
  }

  _capitalizeFirstLetter(String text) {
    return text.substring(0, 1).toUpperCase() + text.substring(0, text.length);
  }

}
