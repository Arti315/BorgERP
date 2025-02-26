import 'package:borg_erp/providers/passwor_visibility_provider%20.dart';
import 'package:borg_erp/widgets/custom_button.dart';
import 'package:borg_erp/widgets/text_from_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final radioProvider = Provider.of<PasswordVisibilityProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Image.asset("assets/logo.png"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(
                controller: usernameController,
                validator: (String) {},
                hintText: 'username',
                isPasswordField: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(
                controller: passwordController,
                validator: (String) {},
                hintText: 'Password',
                isPasswordField: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Radio<bool>(
                    value:
                        true, // Only one value to toggle between true and false
                    groupValue:
                        radioProvider
                            .selectedValue, // This will hold the selected value
                    onChanged: (bool? value) {
                      if (value != null) {
                        radioProvider
                            .updateSelectedValue(); // Toggle the selected state
                      }
                    },
                  ),
                  Text("Remember Me"),
                ],
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/dashbord");
              },
              child: CustomButton(text: 'Log in', color: Colors.blueGrey)),
          ],
        ),
      ),
    );
  }
}
