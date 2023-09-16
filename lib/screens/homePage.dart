import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:gui_fvm/screens/showSdksScreen.dart';
import 'package:gui_fvm/utils/DataConstants.dart';

import '../widgets/customElevatedButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Version Manager"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: CustomElevatedButton(
            onPressed: () {
              try {
                FilePicker.platform.getDirectoryPath().then(
                  (folderPath) {
                    DataConstants.folderPath = folderPath!;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShowSdksScreen(),
                      ),
                    );
                  },
                );
              } catch (e) {
                log('Error picking folder: $e');
              }
            },
            title: "Select folder containing flutter SDKs",
            backgroundColor: DataConstants.buttonBackground,
            foregroundColor: DataConstants.buttonForeground,
          ),
        ),
      ),
    );
  }
}
