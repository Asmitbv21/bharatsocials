import 'package:flutter/material.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({Key? key}) : super(key: key);

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Select Language'),
      ),
      body: ListView(
        children: [
          RadioListTile<String>(
            title: const Text('English'),
            value: 'English',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Hindi'),
            value: 'Hindi',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Marathi'),
            value: 'Marathi',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Spanish'),
            value: 'Spanish',
            groupValue: selectedLanguage,
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
            },
          ),
        ],
      ),
    );
  }
}