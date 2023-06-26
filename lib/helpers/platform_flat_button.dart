import 'dart:io';

import 'package:flutter/cupertino.dart' ;
import 'package:flutter/material.dart';

class PlatformFlatButton extends StatelessWidget {
  final Function handler;
  final Widget buttonChild;
  final Color color;
  final ButtonStyle buttonPrimary= ElevatedButton.styleFrom(

    maximumSize:Size(327, 50),
    primary:Colors.cyan,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20),
        )
    ),



  );

  PlatformFlatButton({@required this.buttonChild,@required this.color,@required this.handler});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: this.buttonChild,
            color: this.color,
            onPressed: this.handler,
            borderRadius: BorderRadius.circular(15.0),
          )
        :/*SizedBox(
      height: 50,
      width: 350,
      child:ElevatedButton(style: buttonPrimary
        ,onPressed: (){
          /*Navigator.push(context,
            MaterialPageRoute(
              builder: (context)=>Home(),
            ),
          );*/
        }, child: const Text("Done",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),),

      ),
    );*/


    TextButton(
            style: TextButton.styleFrom(
              primary:Colors.cyan,
              textStyle: TextStyle(
                color: Colors.black,
               // color: this.color,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
              ),
            ),

            child:this.buttonChild,
            onPressed: this.handler,

          );


  }
}
