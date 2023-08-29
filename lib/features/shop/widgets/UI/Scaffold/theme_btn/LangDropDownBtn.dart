import 'package:flutter/material.dart';

class LangDropDownBtn extends StatelessWidget {
  const LangDropDownBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: 0,
      focusColor: Colors.transparent,
      isDense: true,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      elevation: 16,
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      items: const [
        DropdownMenuItem(value: 1, child: Text('eng')),
        DropdownMenuItem(value: 0, child: Text('ru')),
      ],
      onChanged: (int? value) {},
    );
  }
}
