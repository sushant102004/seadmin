import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:seadmin/views/events/events.dart';
import 'package:seadmin/views/notes/notes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController accountStatusController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Ease Admin Panel'),
        centerTitle: true,
        // leading: IconButton(icon: const Icon(Icons.menu), onPressed: (){
        //   Drawer();
        // },),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  Get.to(const Home());
                },
                child: const Text('Home', style: TextStyle(fontSize: 22))),
            const SizedBox(height: 20),
            InkWell(
                onTap: () {
                  Get.to(const Notes());
                },
                child: const Text('Notes', style: TextStyle(fontSize: 22))),
            const SizedBox(height: 20),
            InkWell(
                onTap: () {
                  Get.to(const Events());
                },
                child: const Text('Events', style: TextStyle(fontSize: 22)))
          ],
        ),
      ),
      // body: FutureBuilder(
      //     future: usersController.getAllUsers(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData &&
      //           snapshot.connectionState == ConnectionState.done) {
      //         Fluttertoast.showToast(
      //             msg: 'Total Users: ${snapshot.data!.total}');
      //         UsersModel usersList = UsersModel(
      //             status: snapshot.data!.status,
      //             users: snapshot.data!.users,
      //             total: snapshot.data!.total);

      //         return ListView.builder(
      //             shrinkWrap: true,
      //             itemCount: usersList.total,
      //             scrollDirection: Axis.vertical,
      //             itemBuilder: ((context, index) {
      //               final userID = usersList.users![index]!.id;
      //               final name = usersList.users![index]!.name;
      //               final email = usersList.users![index]!.email;
      //               final accountStatus =
      //                   usersList.users![index]!.accountStatus;
      //               final college = usersList.users![index]!.college;
      //               final phoneNumber = usersList.users![index]!.phoneNumber;

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
      //                                       controller: nameController,
      //                                       decoration: InputDecoration(
      //                                           hintText: name)),
      //                                   TextFormField(
      //                                       controller: emailController,
      //                                       decoration: InputDecoration(
      //                                           hintText: email)),
      //                                   TextFormField(
      //                                       controller: accountStatusController,
      //                                       decoration: InputDecoration(
      //                                           hintText: accountStatus)),
      //                                   TextFormField(
      //                                       controller: collegeController,
      //                                       decoration: InputDecoration(
      //                                           hintText: college)),
      //                                   TextFormField(
      //                                       controller: phoneNumberController,
      //                                       decoration: InputDecoration(
      //                                           hintText:
      //                                               phoneNumber.toString())),
      //                                   SizedBox(height: Get.height / 20),
      //                                   ElevatedButton(
      //                                       onPressed: () {
      //                                         usersController.modifyUser(
      //                                             userID!,
      //                                             nameController.text.isEmpty
      //                                                 ? name!
      //                                                 : nameController.text
      //                                                     .toString(),
      //                                             emailController.text.isEmpty
      //                                                 ? email!
      //                                                 : emailController.text
      //                                                     .toString(),
      //                                             accountStatusController
      //                                                     .text.isEmpty
      //                                                 ? accountStatus!
      //                                                 : accountStatusController
      //                                                     .text
      //                                                     .toString(),
      //                                             collegeController.text.isEmpty
      //                                                 ? college!
      //                                                 : collegeController.text
      //                                                     .toString(),
      //                                             phoneNumberController
      //                                                     .text.isEmpty
      //                                                 ? phoneNumber.toString()
      //                                                 : phoneNumberController
      //                                                     .text
      //                                                     .toString());
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
      //                     title: Text(usersList.users![index]!.name ?? ''),
      //                     subtitle: Text(usersList.users![index]!.email ?? ''),
      //                     trailing:
      //                         usersList.users![index]!.accountStatus == 'active'
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
    );
  }
}
