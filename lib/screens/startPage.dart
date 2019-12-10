import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'rollSelectorScreen.dart';

class startPage extends StatefulWidget {
  @override
  _startPageState createState() => _startPageState();
}



class _startPageState extends State<startPage> with SingleTickerProviderStateMixin{




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      

    body: ListView(
      
    children: <Widget>[
      Container(


        height: MediaQuery.of(context).size.height*0.30 ,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.0),bottomLeft: Radius.circular(10))

        ),

        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
            
          
              
              child: Text(
                'School List'
                ,style: TextStyle(
                  fontSize: 40.0,color: Colors.black
              ),
              ),
            )


            ,
            Container(
            
            padding: EdgeInsets.only(left: 30,right: 30,top: 50),
            child :TextField(

              decoration: InputDecoration(
                icon: Icon(Icons.search,color: Colors.black,)

              ),
            ))
          ],
        ),

      )
      
      ,Container(
        
        height: MediaQuery.of(context).size.height*0.70,
        decoration: BoxDecoration(
          color: Colors.white
              ,borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40)
              ,topRight: Radius.circular(40)
        )





        ),
      

      child :ListView.builder(
        itemBuilder: (BuildContext context, int i )
        {
          return buildSchoolTile('school public school', "", 'School is situated in jaipr', "jhotwara jaipur");
        }
        ,padding: EdgeInsets.all(10.0),
        itemCount: 20,



   
    ))
    ],

    
    ));
  }

  Widget buildSchoolTile(String name,String image,String description,String address)
  {
    return GestureDetector(

      excludeFromSemantics: true,
      onTap: (){

        Navigator.of(context).push( MaterialPageRoute(builder: (context) => rollSelectorPage()));
      },


      child : Container(

      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
          ,border: Border.all(
        color: Colors.black26
            ,width: 1.0
      )

            ,color: Colors.white


      ),

       child :Row(
        mainAxisSize: MainAxisSize.max,

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: 40.0,
          child: Image(

            image: NetworkImage(image),

          ),
          )
          , Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

            Text(name,style: TextStyle(
              color : Colors.black
              ,fontSize: 25.0),
          )
                 ,SizedBox(height: 8,)
        ,Text(description,
      style: TextStyle(
          fontSize: 18,
          color: Colors.black54
      )
          )
        ,SizedBox(height: 8,)
        ,Text(address,
      style: TextStyle(
          fontSize: 14,

          color: Colors.black54
      )
    )
      ]
      )
        ]
      ),

    ));
  }

}
