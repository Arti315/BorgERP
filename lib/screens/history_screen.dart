import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios)),
        title: Text("All History"),
      ),
      body:  Padding(
        padding: const EdgeInsets.only(left: 18.0,top: 10,right: 18.0),
        child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) { 
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                            
                        ),
                        child: Row(
                               
                                  children: <Widget>[
                                    Container(
                      height: 60,
                      width: 8,
                      color: Colors.green
                      
                      ),
                      Container(
                        margin: EdgeInsets.all(08),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(  "26",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                               Text("Feb",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 16),),
                            
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                                         RichText(
                    text: TextSpan(
                      text: "Start Shift",
                          style: TextStyle(
                        color:Colors.green,
                        fontSize: 14,
                      fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " - 08:45 AM",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),  
                               RichText(
                    text: TextSpan(
                      text: "End Shift",
                          style: TextStyle(
                        color:Colors.red,
                         fontSize: 14,
                      fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " - 09:45 PM",
                          style: TextStyle(
                             color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  )   
                                  
                              
                        ],
                      )
                
                                  ],
                                )
                      ),
                    );
                   },),
      ),
    );
  }
}