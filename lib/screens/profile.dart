import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _contactController = TextEditingController();
  final _bloodGroupController = TextEditingController();
  final _genderController = TextEditingController();

  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            ProfileTextField(label: "Name", controller: _nameController, placeholder: "Name", isEditing: _isEditing),
            ProfileTextField(label: "Username", controller: _usernameController, placeholder: "Username", isEditing: _isEditing),
            ProfileTextField(label: "Email", controller: _emailController, placeholder: "example@exaple.com", isEditing: _isEditing),
            ProfileTextField(label: "Contact no", controller: _contactController, placeholder: "+91 0000000000", isEditing: _isEditing),
            ProfileTextField(label: "Blood Group", controller: _bloodGroupController, placeholder: "B+", isEditing: _isEditing),
            ProfileTextField(label: "Gender", controller: _genderController, placeholder: "Female", isEditing: _isEditing),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isEditing = !_isEditing;
                });
              },
              style: ElevatedButton.styleFrom(
                
                  backgroundColor:  Color(0xFFCDEBF7),
                ),

              child: Text(_isEditing ? "Save Profile" : "Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String placeholder;
  final bool isEditing;

  ProfileTextField({required this.label, required this.controller, required this.placeholder, required this.isEditing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          TextFormField(
            controller: controller,
            readOnly: !isEditing,
            decoration: InputDecoration(
              hintText: placeholder,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
