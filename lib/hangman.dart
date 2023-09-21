import 'package:flutter/material.dart';

class HangMan extends StatefulWidget {
  const HangMan({super.key});

  @override
  State<HangMan> createState() => _HangManState();
}

class _HangManState extends State<HangMan> {
bool _isVisibleHead = false;
bool _isVisibleBody = false;
bool _isVisibleRh = false;
bool _isVisibleLh = false;
bool _isVisibleRl = false;
bool _isVisibleLl = false;
bool _isVisibleF = false;
bool _isVisibleL = false;
bool _isVisibleU = false;
bool _isVisibleT = false;
bool _isVisibleE = false;
bool _isVisibleR = false;
int count =0;
int flag=0;
void displayLetter(String letter){
  setState(() {
    if(count==5){
      Widget okButton = TextButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      AlertDialog alert = AlertDialog(
        title: Text("Game over"),
        content: Text("You are lost"),
        actions: [
          okButton,
        ],
      );
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
      reset();
    }else if(flag==5){
      Widget okButton = TextButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      AlertDialog alert = AlertDialog(
        title: Text("Game over"),
        content: Text("You are won"),
        actions: [
          okButton,
        ],
      );
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
      reset();
    }else{
      if(letter=="F"){
        _isVisibleF =true;
        flag++;
      }
      else if(letter=="L"){
        _isVisibleL =true;
        flag++;
      }
      else if(letter=="U"){
        _isVisibleU =true;
        flag++;
      }
      else if(letter=="T"){
        _isVisibleT =true;
        flag++;
      }
      else if(letter=="E"){
        _isVisibleE =true;
        flag++;
      }
      else if(letter=="R"){
        _isVisibleR =true;
        flag++;
      }else{
        count++;
        if(count == 1){
          _isVisibleHead=true;
        }
        else if(count == 2){
          _isVisibleBody=true;
        }
        else if(count == 3){
          _isVisibleRh=true;
        }
        else if(count == 4){
          _isVisibleLh=true;
        }
        else if(count == 5){
          _isVisibleRl=true;
        }
        else if(count == 6){
          _isVisibleLl=true;
        }

      }

    }

  });

}
void reset(){
  _isVisibleHead = false;
  _isVisibleBody = false;
  _isVisibleRh = false;
  _isVisibleLh = false;
  _isVisibleRl = false;
  _isVisibleLl = false;
  _isVisibleF = false;
  _isVisibleL = false;
  _isVisibleU = false;
  _isVisibleT = false;
  _isVisibleE = false;
  _isVisibleR = false;

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("images/hang.png"),
                      Visibility(
                          visible: _isVisibleHead,
                          child:Image.asset("images/head.png"),
                      ),
                      Visibility(
                        visible: _isVisibleBody,
                        child:Image.asset("images/body.png"),
                      ),
                      Visibility(
                        visible: _isVisibleRh,
                        child:Image.asset("images/ra.png"),
                      ),
                      Visibility(
                        visible: _isVisibleLh,
                        child:Image.asset("images/la.png"),
                      ),
                      Visibility(
                        visible: _isVisibleRl,
                        child:Image.asset("images/rl.png"),
                      ),
                      Visibility(
                        visible: _isVisibleLl,
                        child:Image.asset("images/ll.png"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      buildExpanded(_isVisibleF,"F"),
                      SizedBox(width: 5,),
                      buildExpanded(_isVisibleL,"L"),
                      SizedBox(width: 5,),
                      buildExpanded(_isVisibleU,"U"),
                      SizedBox(width: 5,),
                      buildExpanded(_isVisibleT,"T"),
                      SizedBox(width: 5,),
                      buildExpanded(_isVisibleT,"T"),
                      SizedBox(width: 5,),
                      buildExpanded(_isVisibleE,"E"),
                      SizedBox(width: 5,),
                      buildExpanded(_isVisibleR,"R"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      buildExpandedButton("A"),
                      SizedBox(width: 5,),
                      buildExpandedButton("B"),
                      SizedBox(width: 5,),
                      buildExpandedButton("C"),
                      SizedBox(width: 5,),
                      buildExpandedButton("D"),
                      SizedBox(width: 5,),
                      buildExpandedButton("E"),
                      SizedBox(width: 5,),
                      buildExpandedButton("F"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      buildExpandedButton("G"),
                      SizedBox(width: 5,),
                      buildExpandedButton("H"),
                      SizedBox(width: 5,),
                      buildExpandedButton("I"),
                      SizedBox(width: 5,),
                      buildExpandedButton("J"),
                      SizedBox(width: 5,),
                      buildExpandedButton("K"),
                      SizedBox(width: 5,),
                      buildExpandedButton("L"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      buildExpandedButton("M"),
                      SizedBox(width: 5,),
                      buildExpandedButton("N"),
                      SizedBox(width: 5,),
                      buildExpandedButton("O"),
                      SizedBox(width: 5,),
                      buildExpandedButton("P"),
                      SizedBox(width: 5,),
                      buildExpandedButton("Q"),
                      SizedBox(width: 5,),
                      buildExpandedButton("R"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      buildExpandedButton("S"),
                      SizedBox(width: 5,),
                      buildExpandedButton("T"),
                      SizedBox(width: 5,),
                      buildExpandedButton("U"),
                      SizedBox(width: 5,),
                      buildExpandedButton("V"),
                      SizedBox(width: 5,),
                      buildExpandedButton("W"),
                      SizedBox(width: 5,),
                      buildExpandedButton("X"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 155,),
                      buildExpandedButton("Y"),
                      SizedBox(width: 5,),
                      buildExpandedButton("z"),
                      SizedBox(width: 155,),
                    ],
                  )



                ]
            ),

          ),
        )
    );

  }

  Expanded buildExpandedButton(String letter) {
    return Expanded(
                      child: Container (
                        height: 38, decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                          color: Colors.green),
                        child: ElevatedButton(
                          child: Text(letter,style: TextStyle(color: Colors.black),),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                          onPressed: () {
                            displayLetter(letter);
                          },
                        ),
                      ),
                    );
  }

  Expanded buildExpanded(bool visible,String text) {
    return Expanded(
                  child: Container (
                    height: 38, decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                    color: Colors.green),
                       child: Center (
                          child: Visibility(
                            visible: visible,
                            child: Text(text,style: TextStyle(fontSize: 20,color: Colors.black),),
                          ),
                       ),
                  ),
                );
  }
}
