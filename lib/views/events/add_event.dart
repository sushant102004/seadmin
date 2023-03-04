import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController additionalInformationController =
      TextEditingController();
  TextEditingController hostedByController = TextEditingController();
  TextEditingController linkController = TextEditingController();

  PlatformFile? eventPoster;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Event'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
                controller: titleController,
                decoration: const InputDecoration(hintText: 'Title')),
            TextFormField(
                controller: dateController,
                decoration: const InputDecoration(hintText: 'Date')),
            TextFormField(
                controller: timeController,
                decoration: const InputDecoration(hintText: 'Time')),
            TextFormField(
                controller: additionalInformationController,
                decoration:
                    const InputDecoration(hintText: 'Additional Information')),
            TextFormField(
                controller: hostedByController,
                decoration: const InputDecoration(hintText: 'Hosted By')),
            TextFormField(
                controller: linkController,
                decoration: const InputDecoration(hintText: 'Link')),
            ElevatedButton(
              onPressed: () async {
                try {
                  FilePickerResult? result = await FilePicker.platform
                      .pickFiles(
                          allowMultiple: false,
                          allowedExtensions: ['png', 'jpg', 'jpeg'],
                          type: FileType.custom);

                  setState(() {
                    eventPoster = result!.files.first;
                  });
                } catch (e) {
                  Fluttertoast.showToast(msg: e.toString());
                }
              },
              child: const Text('Pick Poster'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text('Add Event'))
          ],
        ),
      ),
    );
  }
}
