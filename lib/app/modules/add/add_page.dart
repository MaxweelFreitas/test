import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/list_of_cards.dart';
import 'components/option_item.dart';
import 'add_controller.dart';
import 'components/manage_list_of_cards.dart';

class AddPage extends StatefulWidget {
  final String title;
  const AddPage({Key key, this.title = "CRIAÇÃO"}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends ModularState<AddPage, AddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Color(0xff5A5CB7),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 25,
            child: ListView.builder(
              itemCount: controller.options.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    controller.setSelected(index);
                    controller.tabPageController.jumpToPage(index);
                  },
                  child: Observer(
                    builder: (_) {
                      return OptionItem(
                        list: controller.options,
                        index: index,
                        selected: controller.selected,
                      );
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller.tabPageController,
              children: [
                ListOfCards(),
                ManageListOfCards(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
