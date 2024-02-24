import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
 
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Quietplacequiz extends StatefulWidget {
  const Quietplacequiz({Key? key})
      : super(
          key: key,
        );

  _QuietplacequizState createState() => _QuietplacequizState();
}

class _QuietplacequizState extends State<Quietplacequiz> {
 

  late List<ItemModel> items;
  late List<ItemModel>items2;
  
    late int score;
    late bool gameOver;
  
    @override
    void initState() { 
      super.initState();
      initGame();
    }
  
    initGame(){
      gameOver = false;
      score=0;
     items = [
      ItemModel(name: 'draw', value: 'draw', img: 'assets/draw.png'),
      ItemModel(name: 'tv', img: 'tv.png', value: 'tv'),
      ItemModel(name: 'reading', img: 'reading.png', value: 'reading'),
      ItemModel(name: 'sony', img: 'sony.png', value: 'sony'),
    ];
      items2 = List<ItemModel>.from(items);
      items.shuffle();
      items2.shuffle();
    }
  
  
    @override
    Widget build(BuildContext context) {
      if(items.length == 0)
      gameOver = true;
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 147, 147),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Matching Game'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text.rich(TextSpan(
                children: [
                  TextSpan(text: "Score: "),
                  TextSpan(text: "$score", style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ))
                ]
              )
              ),
              if(!gameOver)
              Row(
                children: <Widget>[
                  Column(
                    children: items.map((item) {
                      return Container(
                        margin: const EdgeInsets.all(8.0),
                        child: Draggable<ItemModel>(
                         data: item,
                         childWhenDragging:CircleAvatar(backgroundColor: Colors.white,
backgroundImage: AssetImage(item.img),

                           ), 
                           feedback: CircleAvatar(backgroundColor: Colors.white,backgroundImage: AssetImage(item.img),), 
                           child: CircleAvatar(backgroundColor: Colors.white,backgroundImage: AssetImage(item.img),),
                          // Icon(
                          //   item.img, color: Colors.grey,size: 50.0,),
                          //   feedback: Image(item.img,color: Colors.teal,size: 50,),
                          //   child: Icon(item.img, color: Colors.teal, size:50,),
                          ),
                        );
                    
                      
                    }).toList()
                  ),
                  Spacer(

                  ),
                  Column(
                    children: items2.map((item){
                      return DragTarget<ItemModel>(
                        onAccept: (receivedItem){
                          if(item.value== receivedItem.value){
                            setState(() {
                              items.remove(receivedItem);
                              items2.remove(item);
                              score+=10;
                              item.accepting =false;
                            });

                          }else{
                            setState(() {
                              score-=5;
                              item.accepting =false;

                            });
                          }
                        },
                        onLeave: (receivedItem){
                          setState(() {
                            item.accepting=false;
                          });
                        },
                        onWillAccept: (receivedItem){
                          setState(() {
                            item.accepting=true;
                          });
                          return true;
                        },
                        builder: (context, acceptedItems,rejectedItem) => Container(
                          color: item.accepting? const Color.fromARGB(255, 255, 255, 255):Colors.teal,
                          height: 50,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(8.0),
                          child: Text(item.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                          fontSize: 18.0),),
                          ),
                          
                          
                        );
                      
                    }).toList()

                  ),
                ],
              ),
              if(gameOver)
              Text("GameOver", style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),),
              if(gameOver)
              Center(
                
                 
                
                
              )
  
            ],
          ),
  
        ),
      );
    }
  }
  
  class ItemModel {
    final String name;
    final String value;
    final String img;
    bool accepting;

  ItemModel({required this.name, required this.value, required this.img, this.accepting= false});
  
  }