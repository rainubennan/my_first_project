import 'package:flutter/material.dart';

class Back_Press extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async{
      return await showDialog(context: context,
          builder: (context)=> AlertDialog(
            title: Text("Exit App!!"),
            content: Text("Do you really want to exit"),
            actions: [
              ElevatedButton(onPressed: () =>
                Navigator.of(context).pop(false),
      child: Text("No"),
      ),
      ElevatedButton(
      onPressed: () => Navigator.of(context).pop(true),
      //return true when click on "Yes"
      child:const Text('Yes'),
      ),
      ],
      ),
      )  ?? false; //if showDialouge had returned null, then return false
    }
    return WillPopScope(
        onWillPop: showExitPopup, //call function on back button press
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Override Back Button"),
            backgroundColor: Colors.redAccent,
          ),
          body: const Center(
            child: Text("Override Back Buttton"),
          )
          ),);
    }

  }
