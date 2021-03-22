import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class About extends StatefulWidget {

  @override
  _About createState() => _About();
}

class _About extends  State<About> {

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF8F7FC),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F7FC),
        elevation: 2,
        iconTheme: IconThemeData(
          color: Color(0xFF0073B1),
          size: 30,
        ),
        centerTitle: true,
        title: Container(
          alignment: Alignment.center,
          child:  Text(
            "About",
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontSize: 25,
              color: Color(0xFF0073B1),
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
        color: Color(0xFFF8F9FB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child:  Text(
                "Verson 1.0.0",
                textAlign: TextAlign.start,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            Container(
              height: 80,
              padding: EdgeInsets.only(left: 20,bottom: 10),
              alignment: Alignment.bottomLeft,
              child:  Text(
                "Help",
                textAlign: TextAlign.start,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF5C6971),
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            Container(
              height: 60,
              margin: EdgeInsets.only(top: 3),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0)
              ),
              child: Material(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
                child: InkWell(
                    splashColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                    onTap: (){},
                    child:Container(
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 20),
                            child:  Text(
                              "App Name",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 30),
                            child:  Text(
                              "Visit Card",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(top: 3),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0)
              ),
              child: Material(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
                child: InkWell(
                    splashColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                    onTap: (){},
                    child:Container(
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 20),
                            child:  Text(
                              "Autor",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 30),
                            child:  Text(
                              "Lemotio Bedel",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(top: 3),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0)
              ),
              child: Material(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
                child: InkWell(
                    splashColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                    onTap: (){},
                    child:Container(
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 20),
                            child:  Text(
                              "Creation Date",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 30),
                            child:  Text(
                              "21-03-2021",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3),
              padding: EdgeInsets.only(top: 5,bottom: 5),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0)
              ),
              child: Material(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                ),
                child: InkWell(
                    splashColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                    onTap: (){},
                    child:Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 20),
                            child:  Text(
                              "Description",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 30,right: 20,bottom: 5),
                            child:  Text(
                              "Test application allowing the consumption of an API",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),
            ),


          ],
        ),
      ) ,
    );
  }
}
