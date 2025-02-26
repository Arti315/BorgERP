import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Icon icons;
  final String text;

  const CustomContainer({super.key, required this.icons, required this.text});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0,left:18.0,top: 10,bottom: 03),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(05),
           border: Border.all(color: Colors.white),
                  color: Colors.white,
             boxShadow: [ 
                BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0.0, 0.1)
                    ),
                ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              icons,  // Display the passed icon
            SizedBox(width: 18),  // Add space between icon and text
            Text(
              text,  // Display the passed text
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            ],
          ),
        ),
      ),
    );
  }
}