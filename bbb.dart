//HADI.GH
import 'package:flutter/material.dart';


void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      )
  );
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  AnimationController animationController;
  Animation firstAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: Duration(seconds: 2),
        vsync: this
    );

    firstAnimation = Tween(
        begin: 200.0,
        end: 0.0
    ).animate(
        CurvedAnimation(
            parent: animationController,
            curve: Curves.bounceOut)
    );

    animationController.addListener(() {
      setState(() {
      }
    );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Welcome to soccer",style: TextStyle(color: Colors.black87)),
        leading: IconButton(splashColor: Colors.lightGreen,icon: Icon(Icons.sports_volleyball_sharp,color: Colors.black,),onPressed: (){
          animationController.reverse();}
          ),
        shadowColor: Colors.red,
        elevation: 10,
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     color: const Color(0xff7c94b6),
              //     image: const DecorationImage(
              //       image: NetworkImage('https://dkstatics-public.digikala.com/digikala-products/119397770.jpg?x-oss-process=image/resize,m_lfit,h_600,w_600/quality,q_80'),
              //       fit: BoxFit.cover,
              //     ),
              //     border: Border.all(
              //       color: Colors.black,
              //       width: 2,
              //     ),
              //     borderRadius: BorderRadius.circular(12),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(bottom: firstAnimation.value),
                width: 150,
                height: 150,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle
                  ),
                child: Icon(Icons.sports_volleyball,color: Colors.yellowAccent,size: 150,),
              ),
            ]
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        animationController.forward();}
        ,child: Icon(Icons.adjust_sharp,color: Colors.black,),
          splashColor: Colors.teal,backgroundColor: Colors.lightGreenAccent),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        elevation: 10,

        child: Container(
          height: 50,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

