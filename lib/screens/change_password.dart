import 'package:borg_erp/widgets/custom_button.dart';
import 'package:borg_erp/widgets/text_from_field.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
   ChangePasswordScreen({super.key});
   TextEditingController oldPassController=TextEditingController();
   TextEditingController newPassController=TextEditingController();
   TextEditingController condrimPassController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("    Type Old Password*",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        CustomTextFormField(
                          controller: oldPassController,
                          validator: (String) {
                            return null;
                          },
                          hintText: 'Enter Type Old Password*',
                          isPasswordField: true,
                        ),
                        Text("    Type New Password**",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          CustomTextFormField(
                            controller: newPassController,
                            validator: (String) {
                              return null;
                            },
                            hintText: 'Enter Type Old Password*',
                            isPasswordField: true,
                          ),
                          Text("    Type Confrim Password**",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            CustomTextFormField(
                              controller: condrimPassController,
                              validator: (String) {
                                return null;
                              },
                              hintText: 'Enter Type Old Password*',
                              isPasswordField: true,
                            ),
                    ],
                  ),
                ),
              ),
            ),
             GestureDetector(
              onTap: (){
               // Navigator.pushNamed(context, "/dashbord");
              },
              child: CustomButton(text: 'Save', color: Colors.blueGrey)),
              SizedBox(height: MediaQuery.of(context).size.height*0.1,)
          ],
        ),
      ) ,
    );
  }
}