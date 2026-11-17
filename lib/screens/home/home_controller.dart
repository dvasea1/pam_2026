import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_pam/models/order.dart';
import 'package:test_pam/models/product.dart';
import 'package:test_pam/models/user.dart';

import '../../list_items/categories_carousel_list_item.dart';
import '../../list_items/greeting_list_item.dart';
import '../../list_items/header_list_item.dart';
import '../../list_items/list_item.dart';
import '../../list_items/search_list_item.dart';
import '../../list_items/section_list_item.dart';
import '../../models/category.dart';
import '../../resources/app_strings.dart';

class HomeController extends GetxController {
  RxList<ListItem> items = RxList();
  var count = 0.obs;
  var list = [].obs;
  Rxn<String> firstName = Rxn<String>();
  RxString lastName = RxString("");

  late StreamSubscription subscription;

  @override
  void onInit() {
    super.onInit();
    getItems();
    subscription = streamCounter().distinct().listen((value) {
      debugPrint('value from stream: $value');
    });
    firstName.stream.listen((value) {
      debugPrint('firstname $value');
    });

    Order order = Order(id: 1, title: 'First order');
    order = order.copyWith(title: 'First order modified');
    //  createStream();
  }

  void createStream() {
    StreamController<String> controller = StreamController();

    controller.add("Hello");
    controller.add("Hello1");
    controller.add("Hello2");
    controller.add("Hello3");
    controller.add("Hello4");

    controller.stream.listen((value) {
      debugPrint('value from controller: $value');
    });
  }

  Future<int> run() async {
    await Future.delayed(Duration(seconds: 1));
    throw Exception('some error');
  }

  Future<int> func1() async {
    await Future.delayed(Duration(seconds: 1));
    return 1;
  }

  Future<String> func2() async {
    await Future.delayed(Duration(seconds: 4));
    return 'Hello';
  }

  Stream<int> streamCounter() async* {
    int i = 0;
    while (true) {
      await Future.delayed((Duration(seconds: 1)));
      i++;
      yield 1;
    }
  }

  void serializeProduct() {
    Product product = Product(title: 'Product 1', price: 1.2);
    var jsonProduct = jsonEncode(product);
    debugPrint('jsonProduct: $jsonProduct');
    var mapProduct = jsonDecode(jsonProduct);
    Product productAfterDecode = Product.fromJson(mapProduct);
    debugPrint('productAfterDecode: ${productAfterDecode.toJson()}');
  }

  void serializeUser() {
    var userJson = '''
    {
    "first_name": "John",
    "last_name": "Doe"
    }
     ''';

    User user = User.fromJson(jsonDecode(userJson));
    debugPrint('User: ${user.toJson()}');
  }

  Future getItems() async {
    var results = await Future.wait([func1(), func2()]);
    int result1 = results[0] as int;
    String result2 = results[1] as String;
    //await Future.delayed(Duration(seconds: 3));
    items.value = [
      HeaderListItem(locationTitle: 'Halal Lab office', cartCount: 0),
      GreetingListItem(firstName: 'Pam User'),
      SearchListItem(),
      SectionListItem(title: AppStrings.allCategories, rightActionTitle: AppStrings.seeAll),
      CategoriesCarouselItem(
        categories: [
          Category(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiQG3s5bBIJUrsEzZnWL4bb-crGx00QcEUzh8Uq4KiqA&s',
            title: 'Pizza',
            description: 'Starting ',
            price: 70.0,
          ),
          Category(
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ99CL3ZFv2IX_hhVTxMA720lPcY_265CDI9AgdZzYvfw&s=10',
            title: 'Burger',
            description: 'Starting ',
            price: 120.0,
          ),
        ],
      ),
    ];
  }

  @override
  void onClose() {
    subscription.cancel();
  }
}
