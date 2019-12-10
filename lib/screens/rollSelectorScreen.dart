
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rollSelectorPage extends StatefulWidget {
  @override
  _rollSelectorPageState createState() => _rollSelectorPageState();
}

class _rollSelectorPageState extends State<rollSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body : CustomScrollView(

        slivers: <Widget>[

          SliverAppBar(


            centerTitle: true,
            elevation: 0.0,
            floating: true,
            pinned: true,

            primary: true,

            backgroundColor: Colors.white,
            iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black),

            expandedHeight: MediaQuery.of(context).size.height *0.40,

            flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
              title: Text('School',style: TextStyle(
                  fontSize: 30.0,color: Colors.black
              ),),

              collapseMode: CollapseMode.parallax,
              background: Image(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQozEg3ovEM6pV8OJP_FGnjDJ46v4ztzPal76tk7Xd0TMTGsbDZ'),
                fit: BoxFit.fitWidth,
              ),
            ),

          )

          ,
          SliverList(

            delegate: SliverChildBuilderDelegate((context,i)=>

                ListTile(
                  title: Text('item 1')
                  ,leading: Icon(Icons.face),

                )

            ),

          )

        ],
      )


    );



    }
  }

