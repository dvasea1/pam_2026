import 'package:flutter/material.dart';
import 'package:test_pam/round_button_widget.dart';
import 'package:test_pam/title_widget.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  // final TextEditingController _controller = TextEditingController(text: 'Sunt un input');

  String? inputText;

  @override
  Widget build(BuildContext context) {
    debugPrint('Build sa apelat pentru CounterWidget');
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          onTap: (){
            debugPrint('tap');
          },
          leading: Container(
              height: 50,
              width: 50,
              child: Image.network('https://utm.md/wp-content/uploads/2022/03/utm-main.jpg')),
          title: Text('Universitatea Tehnica'),
          trailing: Icon(Icons.twelve_mp_sharp),
        ),
        GestureDetector(
          onTap: () {
            debugPrint('Counter $_counter');
            setState(() {
              _counter++;
              //_controller.clear();
            });
          },
          child: Text('Apasa', style: TextStyle(fontSize: 18)),
        ),
        Text('Eu sunt contor, valoarea este: $_counter'),
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 20),
          width: 200,
          height: 200,
          child: Image.network('https://utm.md/wp-content/uploads/2022/03/utm-main.jpg', fit: BoxFit.cover),
        ),
        TextField(
          //controller: _controller,
          onChanged: (String? newValue) {
            debugPrint('Valoarea din input este: $newValue');
            inputText = newValue;
            setState(() {});
          },
        ),
        TitleWidget(title: 'Valoarea din input este: $inputText'),

        RoundButtonWidget(
          onTap: (){

          },
          title: 'Apasa',
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        ),
        Text('Content'),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    // _controller.dispose();
  }
}
