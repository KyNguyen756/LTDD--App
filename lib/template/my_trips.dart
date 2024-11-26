import 'package:flutter/material.dart';

class My_Trips extends StatefulWidget{

  @override
  _My_Trips createState() => _My_Trips();
}

class _My_Trips extends State<My_Trips> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140),
        child: AppBar(
          toolbarHeight: 140,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          flexibleSpace: Image.asset(
            'img/CauRong.png',
            fit: BoxFit.cover,
          ),
          
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: DefaultTabController(
              initialIndex: 0,
              length: 4,
              child: TabBar(
                tabs: const[
                  Tab(
                    text: "Current Trip",
                  ),
                  Tab(
                    text: "Next Trip",
                  ),
                  Tab(
                    text: "Past Trip",
                  ),
                  Tab(
                    text: "Wishlist",
                  )
                ]
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(
                  child: Text("text"),
                ),
                Center(
                  child: Text("text"),
                ),
                Center(
                  child: Text("text"),
                ),
                Center(
                  child: Text("text"),
                )
              ]
              )
          )
        ],
      ),
    );
  }
}