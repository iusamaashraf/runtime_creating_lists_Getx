import 'package:create_list_using_getx/model/home_page_model.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  Rx<List<DataModel>> showlist = Rx<List<DataModel>>([]);
  List<DataModel> get showlists => showlist.value;

  void updatelist(String title, String description, int id, int number) {
    showlists.add(DataModel(
        title: title, description: description, id: id, number: number));
    update();
    print(showlists.length);
  }
}
