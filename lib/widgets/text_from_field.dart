import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/passwor_visibility_provider .dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) validator;
  final String hintText;
  final bool isPasswordField;

  const CustomTextFormField({super.key, required this.controller, required this.validator, required this.hintText, required this.isPasswordField});



  @override
  Widget build(BuildContext context) {
       final passwordVisibilityProvider = Provider.of<PasswordVisibilityProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(color: Colors.grey),
        controller: controller,
        obscureText: isPasswordField ? !passwordVisibilityProvider.isPasswordVisible : false, // Toggle password visibility
        decoration: InputDecoration(
          hintText: hintText,
         hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.grey.shade300,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), // Rounded corners when focused
            borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), // Rounded corners when enabled
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
          ),
          
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(12.0),
          //   borderSide: BorderSide(color: Colors.blue, width: 2),
          // ),
          suffixIcon: isPasswordField
              ? IconButton(
                  icon: Icon(
                    passwordVisibilityProvider.isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    passwordVisibilityProvider.toggleVisibility(); // Toggle password visibility on button press
                  },
                )
              : null,
        ),
        validator: validator,
      ),
    );
  }
}
