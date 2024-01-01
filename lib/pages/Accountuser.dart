

import 'package:flutter/material.dart';

class AccountSettingsPage extends StatefulWidget {
  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  String name = "John Doe";
  String profileImage = "assets/profile_default.png";

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Settings"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name:",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Profile Image:",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            CircleAvatar(
              radius: 50,
              backgroundImage:
              AssetImage(profileImage), // Use your own logic to set the image
            ),
            SizedBox(height: 16),
            MaterialButton(
              onPressed: () {
                setState(() {
                  name = nameController.text;
                });
               // return Scaffold(
                  //   SnackBar(
                  // content:
                  // Text("Name updated successfully!"),
               // ));
              },
              child:
              Text("Update Name"),
            ),
            MaterialButton(
              onPressed: () {
                // Implement logic to change profile image
                // Scaffold.of(context).showSnackBar(SnackBar(
                //   content:
                //   Text("Profile image updated successfully!"),
                // ));
              },
              child:
              Text("Change Profile Image"),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
      FloatingActionButton.extended(
        onPressed:
            () {
          // Implement logic to create a new account
          // Scaffold.of(context).showSnackBar(SnackBar(
          //   content:
          //   Text("New account created successfully!"),
          // ));
        },
        label:
        Text('Create New Account'),
        icon:
        Icon(Icons.add),
      ),
      bottomNavigationBar:
      BottomAppBar(
      child:
      Row(mainAxisAlignment:
      MainAxisAlignment.spaceEvenly,
      children:[
      IconButton(iconSize :40.0,
      icon :Icon(Icons.delete_forever),
      onPressed :
          () {
        // Implement logic to delete the account
        // Scaffold.of(context).showSnackBar(SnackBar(content :Text("Account deleted successfully!"),));
      },
    ),

    // IconButton(iconSize :40.0,
    // icon :Icon(Icons.edit),
    // onPressed :
    // () {
    // // Implement logic to edit data
    // // Scaffold.of(context).showSnackBar(SnackBar(content :Text("Data edited successfully!"),
    // // ));
    ])));}
}