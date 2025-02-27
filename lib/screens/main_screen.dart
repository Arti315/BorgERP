import 'package:borg_erp/providers/timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Consumer<TimerProvider>(
          builder: (context, timerProvider, child) {
     return  Column(
       children: [
         Expanded(
           child: SingleChildScrollView(
             child: Stack(
                children: [
                  // Pehla Red Container (Background)
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child:  Row(
                      children: [
             
                      ],
                    )
                  ),
                
                  Container(
                     
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                     
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                            SizedBox(height: 50,),
                          Text(
                            "Hi! 👋  Welcome TO Radha",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  // Dusra BlueGrey Container (Upar wala layer)
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.13, // Red container ke upar shift karne ke liye
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.only(left: 30,right: 30),
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 0.2,
                            blurRadius: 0.2,
                            offset: Offset(0, 1)
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
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
                               SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(Icons.watch_later,color: Colors.green,size: 50,),
                                                          Text(
                                    '00:00',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                  
                                                    Text(
                                    'Punch-In',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                  
                                        ],
                                      ),
                                    
                                       Column(
                                         children: [
                                           Icon(Icons.watch_rounded,color: Colors.red,size: 50,),
                                                                 Text(
                                    '00:00',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                  
                                                      Text(
                                    'Punch-Out',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                  
                                         ],
                                       ),
                                    
                                        Column(
                                          children: [
                                            Icon(Icons.watch_later,color: Colors.blueGrey,size: 50,),
                                                                  Text(
                                    '00:00',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                  
                                                                Text(
                                    '/Hours',
                                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Color(0XFF19596A))),
                                  
                                          ],
                                        )
                                    ],
                                  ),
             
                                    
                        ],
                      ),
                    ),
                  ),
             
              
                ],
              ),
           ),
         ),
     
          Container(
               height: MediaQuery.of(context).size.height*0.35,
               width: double.infinity,
               decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 0.2,
                      blurRadius: 0.2,
                      offset: Offset(0, 1)
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                ),
              child:Padding(
                padding: const EdgeInsets.only(left:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Attendence",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    
                    Text("Current Month",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                  ],
                ),
              ) ,
            ),
       ],
     );
          })
    );
  }
}
