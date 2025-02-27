import 'package:flutter/material.dart';

Future<void> showDeleteDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
       title: Center(child: Text("Delete Account",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.red),)),
        content: Text("Are you sure you want to Delete Account?"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Container(
              height: 40,
               width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2,color: Colors.blueGrey)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Yes")),
            ),

          ),
        
                Container(
                  height: 40,
                  width: 90,
              
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
             color: Colors.blueGrey
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("No",style: TextStyle(color: Colors.white,fontSize: 16),)),
            ),

          )
      
            ],
          )
        ],
      );
    },
  );
}
