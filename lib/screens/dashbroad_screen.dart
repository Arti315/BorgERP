
import 'package:borg_erp/providers/timer_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class DashbroadScreen extends StatelessWidget {
  const DashbroadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  Provider.of<TimerProvider>(context, listen: false).showCustomBottomSheet(context);
    return Scaffold(
      body:Consumer<TimerProvider>(
          builder: (context, timerProvider, child) {
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                           SizedBox(height: MediaQuery.of(context).size.height*0.09,),
                            Text(
                            '${timerProvider.hours}:${timerProvider.minutes}:${timerProvider.seconds}',
                            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                           Text(
                            timerProvider.formattedDate,
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 10,),
                           timerProvider.isVisible?  GestureDetector(
                            onTap: () {
                              // Start the timer
                              timerProvider.red_green();
                              timerProvider.startTimer();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/green.png",height: 150,width: 150,),
                            ),
                          ):
                             GestureDetector(
                            onTap: () {
                              // Start the timer
                              timerProvider.red_green();
                              timerProvider.stopTimer();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/red.png",height: 150,width: 150,),
                            ),
                          ),
                                        
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/smgreen.png"),
                                   Text(
                            '${timerProvider.hours}:${timerProvider.minutes}:${timerProvider.seconds}',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                     Text(
                            'Check-In',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                          
                                ],
                              ),
                              SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Image.asset("assets/smred.png"),
                                             Text(
                            '${timerProvider.hours}:${timerProvider.minutes}:${timerProvider.seconds}',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                     Text(
                            'Check-out',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                  ],
                                ),
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Image.asset("assets/totalhrs.png"),
                                               Text(
                            '${timerProvider.hours}:${timerProvider.minutes}:${timerProvider.seconds}',
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                     Text(
                            'Hours',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                    ],
                                  ),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)
                      
                    ),
               border: Border.all(color: Colors.white),
                  color: Colors.white,
             boxShadow: [ 
                BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 3.0,
                      offset: Offset(0.0, 0.1)
                    ),
                ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/down.png'),
                      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)
                      
                    ),
                border: Border.all(color: Colors.white),
                  color: Colors.white,
             boxShadow: [ 
                BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 3.0,
                      offset: Offset(0.0, 0.1)
                    ),
                ]
                  ),
          child: Wrap(
          
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/history');
                },
                child: Center(child: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Image.asset('assets/swape.png'),
                )),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) { 
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade300),
                          
                      ),
                      child: new Row(
                             
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
                            color: Colors.grey.withValues(alpha: 0.3),
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
                            Text(  timerProvider.formattedate,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                             Text(timerProvider.formattedmonth,style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 16),),
                          
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
            ],
          ),
        ),
      ) ,
                    ],
                  ),
                )
              ],
            );})
    );
  }
}