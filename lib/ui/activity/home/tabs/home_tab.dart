
import 'package:flutter/services.dart';
import 'package:visit_card/core/models/result/response.dart';
import 'package:visit_card/core/presenters/contracts/home_activity_contract.dart';
import 'package:visit_card/core/presenters/home_activity_presenter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';



class Home extends StatefulWidget {

  @override
  _Home createState() => _Home();
}

class _Home extends  State<Home> implements HomeActivityView {
  HomeActivityPresenter presenter;
  bool loading;
  ResponseApi responseapi;

  @override
  void initState() {
    presenter = HomeActivityPresenter(this);
    loading = true;
    presenter.callApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Orientation currentOrientation = MediaQuery.of(context).orientation;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F7FC),
        elevation: 2,
        iconTheme: IconThemeData(
          color: Color(0xffe46b10),
          size: 30,
        ),
        centerTitle: true,
        title: Container(
          alignment: Alignment.center,
          child:  Text(
            "Home ",
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontSize: 25,
              color: Color(0xFF0073B1),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        actions: [
          Container(
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: Colors.transparent,
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                splashColor: Colors.transparent,
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context) => new AlertDialog(
                      title: new Text('Are you sure?'),
                      content: new Text('Do you want to exit'),
                      actions: <Widget>[
                        new FlatButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: new Text('No'),
                        ),
                        new FlatButton(
                          onPressed: () => SystemNavigator.pop(),
                          child: new Text('Yes'),
                        ),
                      ],
                    ),
                  );
                },
                child: Icon(
                  Icons.logout, size: 30, color: Color(0xFF0073B1),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
          color: Color(0xFFF8F7FC),
          padding: EdgeInsets.only(left: 20,right: 20),
          alignment: Alignment.centerLeft,
          child: (currentOrientation == Orientation.portrait)?
          ListView(
            children: [
              SizedBox(height: 20,),
              _buildCard(),
              SizedBox(height: 20,),


            ],
          ):
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              _buildCard()

            ],
          )
      ),
    );
  }


  /*********************************************************
   *  Widgets
   ********************************************************/


  Widget _buildCard() {
    if (loading) {
      return Center(
          child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: CircularProgressIndicator()
          ));
    }  
    return Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child:  Text(
                        "Overview",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF82858E),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          presenter.callApi();
                        },
                        child: Text(
                          "Reload API",
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 400,
                child: Stack(
                  children: [


                     Card(
                          elevation: 6,
                          margin: EdgeInsets.only(top: 50,left: 10 ,right: 10),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white70, width: 1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                              padding: EdgeInsets.only(top: 60),
                              height: 350,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10,),
                                        Container(
                                          alignment: Alignment.center,
                                          child:  Text(
                                            responseapi.username,
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        GestureDetector(
                                            child: Text(responseapi.email, style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue)),
                                            onTap: () {
                                              // do what you need to do when "Click here" gets clicked
                                            }
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    height: 80,
                                    color: Color(0xFFF3F3F3),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.yellow,size: 15,),
                                              Icon(Icons.star,color: Colors.grey,size: 15,),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Container(
                                          alignment: Alignment.center,
                                          child:  Text(
                                            responseapi.profile,
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF0073B1),
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    color: Colors.white,
                                    padding: EdgeInsets.only(left: 20,right: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child:  Text(
                                                      "Balance",
                                                      textAlign: TextAlign.center,
                                                      overflow: TextOverflow.visible,
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.normal,
                                                        fontStyle: FontStyle.normal,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child:  Text(
                                                      responseapi.balance.toString(),
                                                      textAlign: TextAlign.center,
                                                      overflow: TextOverflow.visible,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.bold,
                                                        fontStyle: FontStyle.normal,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                        Expanded(
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child:  Text(
                                                      "Behavior",
                                                      textAlign: TextAlign.center,
                                                      overflow: TextOverflow.visible,
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.normal,
                                                        fontStyle: FontStyle.normal,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child:  Text(
                                                      responseapi.behavior,
                                                      textAlign: TextAlign.center,
                                                      overflow: TextOverflow.visible,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.bold,
                                                        fontStyle: FontStyle.normal,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF0073B1),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(30)
                                        )
                                    ),
                                  )
                                ],
                              )

                          ),
                        ),


                    Align(
                      alignment: Alignment.topCenter,
                      child:  Container(
                        margin: EdgeInsets.all(5),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/placeholder.png",
                                )
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),


            ],
          ),
        )) ;
  }

  /*********************************************************
   *  Functions
   ********************************************************/

  @override
  void onLoadComplete(ResponseApi result) {
    setState(() {
      responseapi = result;
      loading = false;
    });

  }

  @override
  void toast(String message) => Toast.show(message, context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
}
