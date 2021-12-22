// ignore_for_file: must_be_immutable

import 'package:create_list_using_getx/controller/home_page_controller.dart';
import 'package:create_list_using_getx/model/home_page_model.dart';
import 'package:create_list_using_getx/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddDataPage extends StatelessWidget {
  AddDataPage({Key? key}) : super(key: key);
  final _dataController = Get.put((HomePageController()));
  final TextEditingController titlecon = TextEditingController();
  TextEditingController descriptioncon = TextEditingController();
  TextEditingController idcon = TextEditingController();
  TextEditingController contactcon = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void inputvalidade() {
    if (formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.pink[100],
        body: SafeArea(
            child: SizedBox.expand(
                child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                title: 'Title',
                keyboardType: TextInputType.name,
                controller: titlecon,
              ),
              CustomTextField(
                title: 'Description',
                keyboardType: TextInputType.name,
                controller: descriptioncon,
              ),
              CustomTextField(
                title: 'Id',
                keyboardType: TextInputType.number,
                controller: idcon,
              ),
              CustomTextField(
                title: 'Contact Number',
                keyboardType: TextInputType.number,
                controller: contactcon,
              ),
              ElevatedButton(
                onPressed: () {
                  // _dataController.showlists.add(DataModel(
                  //   title: titlecon.text,
                  //   description: descriptioncon.text,
                  //   id: int.parse(idcon.text),
                  //   number: int.parse(contactcon.text),
                  // ));
                  _dataController.updatelist(
                    titlecon.text,
                    descriptioncon.text,
                    int.parse(idcon.text),
                    int.parse(contactcon.text),
                  );
                  //ßprint(_dataController.showlists.length);
                },
                child: const Text('Add to list'),
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey, primary: Colors.pink[100]),
              )
            ],
          ),
        ))));
  }
}
