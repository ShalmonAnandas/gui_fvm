import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gui_fvm/utils/DataConstants.dart';
import 'package:gui_fvm/widgets/customText.dart';
import 'package:lottie/lottie.dart';

class ShowSdksScreen extends StatefulWidget {
  const ShowSdksScreen({super.key});

  @override
  State<ShowSdksScreen> createState() => _ShowSdksScreenState();
}

class _ShowSdksScreenState extends State<ShowSdksScreen> {
  Future<int> getItems() async {
    int count =
        await Directory(DataConstants.folderPath).list(recursive: false).length;
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Version Manager"),
      ),
      body: FutureBuilder<int>(
        future: getItems(),
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          return (snapshot.hasData)
              ? (snapshot.data! > 0)
                  ? ListView.builder(
                      itemCount: snapshot.data,
                      itemBuilder: (BuildContext context, int index) {
                        return const Card(
                          child: Text("LMAO"),
                        );
                      },
                    )
                  : Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Lottie.asset("assets/notfound.json",
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.7),
                            const CustomText(title: "NO SDKS FOUND"),
                          ],
                        ),
                      ),
                    )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
