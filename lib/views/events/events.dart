import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:seadmin/views/events/add_event.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  TextEditingController titleController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController additionalInformationController =
      TextEditingController();
  TextEditingController hostedByController = TextEditingController();
  TextEditingController linkController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events Section'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const AddEvent());
              },
              icon: const Icon(Icons.add_outlined))
        ],
      ),
      // body: FutureBuilder(
      //     future: eventsController.getAllEvents(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData &&
      //           snapshot.connectionState == ConnectionState.done) {
      //         Fluttertoast.showToast(
      //             msg: 'Total events: ${snapshot.data!.total}');
      //         EventsModel eventsList = EventsModel(
      //             status: snapshot.data!.status,
      //             events: snapshot.data!.events,
      //             total: snapshot.data!.total);

      //         return ListView.builder(
      //             shrinkWrap: true,
      //             itemCount: eventsList.total,
      //             scrollDirection: Axis.vertical,
      //             itemBuilder: ((context, index) {
      //               final userID = eventsList.events![index]!.id;
      //               final title = eventsList.events![index]!.title;
      //               final image = eventsList.events![index]!.image;
      //               final date = eventsList.events![index]!.date;
      //               final time = eventsList.events![index]!.time;
      //               final additionalInformation =
      //                   eventsList.events![index]!.additionalInformation;
      //               final hostedBy = eventsList.events![index]!.hostedBy;
      //               final link = eventsList.events![index]!.link;

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
      //                                     'ID: $userID',
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
      //                                       controller: imageController,
      //                                       decoration: InputDecoration(
      //                                           hintText: image)),
      //                                   TextFormField(
      //                                       controller: dateController,
      //                                       decoration: InputDecoration(
      //                                           hintText: date)),
      //                                   TextFormField(
      //                                       controller: timeController,
      //                                       decoration: InputDecoration(
      //                                           hintText: time)),
      //                                   TextFormField(
      //                                       controller:
      //                                           additionalInformationController,
      //                                       decoration: InputDecoration(
      //                                           hintText:
      //                                               additionalInformation)),
      //                                   TextFormField(
      //                                       controller: hostedByController,
      //                                       decoration: InputDecoration(
      //                                           hintText: hostedBy)),
      //                                   TextFormField(
      //                                       controller: linkController,
      //                                       decoration: InputDecoration(
      //                                           hintText: link)),
      //                                   SizedBox(height: Get.height / 20),
      //                                   ElevatedButton(
      //                                       onPressed: () {
      //                                         eventsController.modifyEvent(
      //                                           userID!,
      //                                           titleController.text.isEmpty
      //                                               ? title!
      //                                               : titleController.text
      //                                                   .toString(),
      //                                           imageController.text.isEmpty
      //                                               ? image!
      //                                               : imageController.text
      //                                                   .toString(),
      //                                           dateController.text.isEmpty
      //                                               ? date!
      //                                               : dateController.text
      //                                                   .toString(),
      //                                           timeController.text.isEmpty
      //                                               ? time!
      //                                               : timeController.text
      //                                                   .toString(),
      //                                           additionalInformationController
      //                                                   .text.isEmpty
      //                                               ? additionalInformation!
      //                                               : additionalInformationController
      //                                                   .text
      //                                                   .toString(),
      //                                           hostedByController.text.isEmpty
      //                                               ? hostedBy!
      //                                               : hostedByController.text
      //                                                   .toString(),
      //                                           linkController.text.isEmpty
      //                                               ? link!
      //                                               : linkController.text
      //                                                   .toString(),
      //                                         );
      //                                       },
      //                                       child: const Text('Update User'))
      //                                 ],
      //                               )
      //                             ],
      //                           ),
      //                         );
      //                       });
      //                 },
      //                 child: ListTile(
      //                     title: Text(eventsList.events![index]!.title ?? ''),
      //                     subtitle:
      //                         Text(eventsList.events![index]!.hostedBy ?? ''),
      //                     trailing:
      //                         eventsList.events![index]!.isCompleted == true
      //                             ? Container(
      //                                 height: 20,
      //                                 width: 20,
      //                                 color: Colors.green,
      //                               )
      //                             : Container(
      //                                 height: 20,
      //                                 width: 20,
      //                                 color: Colors.red)),
      //               );
      //             }));
      //       }
      //       return const Center(child: CircularProgressIndicator());
      //     }),
    );
  }
}
