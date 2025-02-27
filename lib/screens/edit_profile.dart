import 'package:borg_erp/widgets/custom_bottom.dart';
import 'package:borg_erp/widgets/custom_button.dart';
import 'package:borg_erp/widgets/text_from_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController =TextEditingController();
    TextEditingController mobileController=TextEditingController();
    TextEditingController addressController=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      ),
      body:Padding(
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
                      Text("    Name*",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        CustomTextFormField(
                          controller: nameController,
                          validator: (String) {
                            return null;
                          },
                          hintText: 'Enter Name',
                          isPasswordField: false,
                        ),
                        Text("    Mobile*",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          CustomTextFormField(
                            controller: mobileController,
                            validator: (String) {
                              return null;
                            },
                            hintText: 'Enter Mobile Number',
                            isPasswordField: false,
                          ),
                          Text("    Address*",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            CustomTextFormField(
                              controller: addressController,
                              validator: (String) {
                                return null;
                              },
                              hintText: 'Enter Address',
                              isPasswordField: false,
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