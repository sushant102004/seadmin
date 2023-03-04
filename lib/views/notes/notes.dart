import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  TextEditingController titleController = TextEditingController();
  TextEditingController shortDescriptionController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController isVerifiedController = TextEditingController();
  TextEditingController downloadLinkController = TextEditingController();
  TextEditingController viewsController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes Section'),
        centerTitle: true,
      ),
      // body: FutureBuilder(
      //     future: notesController.getAllNotes(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData &&
      //           snapshot.connectionState == ConnectionState.done) {
      //         Fluttertoast.showToast(
      //             msg: 'Total notes: ${snapshot.data!.total}');
      //         NotesModel notesList = NotesModel(
      //             status: snapshot.data!.status,
      //             notes: snapshot.data!.notes,
      //             total: snapshot.data!.total);

      //         return ListView.builder(
      //             shrinkWrap: true,
      //             itemCount: notesList.total,
      //             scrollDirection: Axis.vertical,
      //             itemBuilder: ((context, index) {
      //               final notesID = notesList.notes![index]!.id;
      //               final title = notesList.notes![index]!.title;
      //               final shortDescription =
      //                   notesList.notes![index]!.shortDescription;
      //               final description = notesList.notes![index]!.description;
      //               final isVerified = notesList.notes![index]!.isVerified;
      //               final subject = notesList.notes![index]!.subject;
      //               final downloadLink = notesList.notes![index]!.downloadLink;
      //               final views = notesList.notes![index]!.views.toString();

      //               return InkWell(
      //                 onTap: () async {
      //                   showModalBottomSheet(
      //                       context: context,
      //                       builder: (builder) {
      //                         return Padding(
      //                           padding: const EdgeInsets.all(8.0),
      //                           child: Wrap(
      //                             children: [
      //                               Column(
      //                                 children: [
      //                                   Text(
      //                                     'ID: $notesID',
      //                                     style: const TextStyle(
      //                                         fontWeight: FontWeight.bold,
      //                                         fontSize: 18),
      //                                   ),
      //                                   SizedBox(height: Get.height / 30),
      //                                   TextFormField(
      //                                       controller: titleController,
      //                                       decoration: InputDecoration(
      //                                           hintText: title)),
      //                                   TextFormField(
      //                                       controller:
      //                                           shortDescriptionController,
      //                                       decoration: InputDecoration(
      //                                           hintText: shortDescription)),
      //                                   TextFormField(
      //                                       controller: descriptionController,
      //                                       decoration: InputDecoration(
      //                                           hintText: description)),
      //                                   TextFormField(
      //                                       controller: subjectController,
      //                                       decoration: InputDecoration(
      //                                           hintText: subject)),
      //                                   TextFormField(
      //                                       controller: isVerifiedController,
      //                                       decoration: InputDecoration(
      //                                           hintText:
      //                                               isVerified.toString())),
      //                                   TextFormField(
      //                                       controller: downloadLinkController,
      //                                       decoration: InputDecoration(
      //                                           hintText: downloadLink)),
      //                                   TextFormField(
      //                                       controller: viewsController,
      //                                       decoration: InputDecoration(
      //                                           hintText: views.toString())),
      //                                   SizedBox(height: Get.height / 20),
      //                                   ElevatedButton(
      //                                       onPressed: () {
      //                                         notesController.modifyNotes(
      //                                             notesID!,
      //                                             titleController.text.isEmpty
      //                                                 ? title!
      //                                                 : titleController.text
      //                                                     .toString(),
      //                                             shortDescriptionController
      //                                                     .text.isEmpty
      //                                                 ? shortDescription!
      //                                                 : shortDescriptionController
      //                                                     .text
      //                                                     .toString(),
      //                                             descriptionController
      //                                                     .text.isEmpty
      //                                                 ? description!
      //                                                 : descriptionController
      //                                                     .text
      //                                                     .toString(),
      //                                             subjectController.text.isEmpty
      //                                                 ? subject!
      //                                                 : subjectController.text
      //                                                     .toString(),
      //                                             isVerifiedController
      //                                                     .text.isEmpty
      //                                                 ? isVerified.toString()
      //                                                 : isVerifiedController
      //                                                     .text
      //                                                     .toString(),
      //                                             downloadLinkController
      //                                                     .text.isEmpty
      //                                                 ? downloadLink!
      //                                                 : downloadLinkController
      //                                                     .text
      //                                                     .toString(),
      //                                             viewsController.text.isEmpty
      //                                                 ? views
      //                                                 : viewsController.text
      //                                                     .toString());
      //                                       },
      //                                       child: const Text('Update Notes'))
      //                                 ],
      //                               )
      //                             ],
      //                           ),
      //                         );
      //                       });
      //                 },
      //                 child: ListTile(
      //                     title: Text(notesList.notes![index]!.title ?? ''),
      //                     subtitle: Text(
      //                         notesList.notes![index]!.uploadedBy!.email ?? ''),
      //                     trailing: notesList.notes![index]!.isVerified == true
      //                         ? Container(
      //                             height: 20,
      //                             width: 20,
      //                             color: Colors.green,
      //                           )
      //                         : Container(
      //                             height: 20, width: 20, color: Colors.red)),
      //               );
      //             }));
      //       }
      //       return const Center(child: CircularProgressIndicator());
      //     }),
    );
  }
}
