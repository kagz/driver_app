import 'package:flutter/material.dart';
import 'package:driver_app/utils/utils.dart';

class PageNotification extends StatefulWidget {
  @override
  _PageNotificationState createState() => _PageNotificationState();
}

class _PageNotificationState extends State<PageNotification> {
  Screen size;
  final Color accentColor = Color(0XFFFA2B0F);

  List<ItemModel> items = [
  ItemModel(),
  ItemModel(),
  ItemModel(),
  ItemModel(),
  ];
  @override
  void initState() {
    super.initState();
  }

  Widget _buildItemCardChild(ItemModel item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Icon(Icons.pie_chart, color: accentColor,)
            Column(
              children: <Widget>[
                Container(
                  // margin: EdgeInsets.only(top: size.getWidthPx(60)),
                  child: CircleAvatar(
                    foregroundColor: backgroundColor,
                    maxRadius: size.getWidthPx(50),
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      maxRadius: size.getWidthPx(38),
                      foregroundColor: colorCurve,
                      backgroundImage: NetworkImage(
                          'https://avatars3.githubusercontent.com/u/25382246?s=460&v=4'),
                    ),
                  ),
                ),
                Text(
                  "Ryan Kagwi",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),


              ],
            ),


          ],
        ),
        Column(
          children: <Widget>[
          
        Container(
margin: EdgeInsets.only(left: 58,bottom: 58),
            child: FlatButton(onPressed: null, child: Text("Accept Job", style: TextStyle(color: Colors.white),),),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: [Colors.green, Colors.greenAccent, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
     
      Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.place, color: Colors.grey,),
                  onPressed: () {
                 
                  }),

              Text("To CBD", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),

              IconButton(
                  icon: Icon(Icons.watch, color: Colors.grey,),
                  onPressed: () {
                 
                  }),
              Text("12:08 pm", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
            ],
          ),
        ),
       
      Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

  IconButton(
                  icon: Icon(Icons.directions_run, color: Colors.grey,),
                  onPressed: () {
                 
                  }),
              Text("15 km", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),

              IconButton(
                  icon: Icon(Icons.monetization_on, color: Colors.grey,),
                  onPressed: () {
                 
                  }),
              Text("ksh 300", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
            ],
          ),
        ),

          ],
        ),
        
        
      ],
    );

   
  }

  Widget _buildItemCard(ItemModel item) {
    return Container(
      width: 120,
      height: 220,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      margin: EdgeInsets.only(left: 32, right: 32, top: 2, bottom: 2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1)]),
      child: _buildItemCardChild(item),
    );
  }

  Widget _buildCardsList() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items.elementAt(index);
        return _buildItemCard(item);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Requests",
            style: TextStyle(fontFamily: "Exo2", color: backgroundColor)),
        backgroundColor: colorCurve,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: Stack(
          children: <Widget>[
            _buildCardsList(),
          ],
        ),
      ),
    );
  }
}

class ItemModel {
  // final String title;
  // final int numOne;
  // final int numTwo;

  ItemModel();
}
