import 'dart:async';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

// Timer Provider to manage the state of the timer
class TimerProvider extends ChangeNotifier {
  int _hours = 00;
  int _minutes = 00;
  int _seconds = 00;
  Timer? _timer;

  int get hours => _hours;
  int get minutes => _minutes;
  int get seconds => _seconds;
  bool isVisible=false;
  void red_green(){
    isVisible=!isVisible;
    notifyListeners();
  }
  void startTimer() {
    _timer?.cancel(); // Cancel any existing timer
    _seconds = 0;
    _minutes = 0;
    _hours = 0;
    notifyListeners();

    // Start the timer
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _seconds++;
      if (_seconds >= 60) {
        _seconds = 0;
        _minutes++;
      }
      if (_minutes >= 60) {
        _minutes = 0;
        _hours++;
      }
      notifyListeners();
    });
  }

  void stopTimer() {
    _timer?.cancel();
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }


    DateTime _currentDate = DateTime.now();
    String date="";
     String month="";
  // Getters for day, month (as a word), and year
    String get formattedmonth {
    final monthNames = [
      'Jan', 'Feb', 'March', 'April', 'May', 'June',
      'July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'
    ];

    String monthName = monthNames[_currentDate.month - 1]; 
// Get year as 4 digits
    return '$monthName'; 
    
   
  }
      String get formattedate {
 

    String day = _currentDate.day.toString(); 
// Get year as 4 digits
    return '$day'; 
    
   
  }
  String get formattedDate {
    final monthNames = [
      'Jan', 'Feb', 'March', 'April', 'May', 'June',
      'July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'
    ];
    final daysNames = [
    'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'
  ];
    String monthName = monthNames[_currentDate.month - 1]; 
    String daysName = daysNames[_currentDate.weekday - 1]; // Get month name
    String day = _currentDate.day.toString(); // Get day as number
    String year = _currentDate.year.toString(); // Get year as 4 digits
    return '$monthName $day $year $daysName'; 
    
   
  }

  void updateDate() {
    _currentDate = DateTime.now(); // Update current date
    notifyListeners(); // Notify listeners to update UI
  }


  void showCustomBottomSheet(BuildContext context) {
    showMaterialModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This is a custom bottom sheet!', style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the bottom sheet
                  },
                  child: Text('Close Bottom Sheet'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}