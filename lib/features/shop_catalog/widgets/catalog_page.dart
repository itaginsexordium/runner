import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  final pug = const SizedBox(height: 30);
  @override
  Widget build(BuildContext context) {
    ListTileTitleAlignment? titleAlignment;
    return Container(
        child: Column(children: [
      pug,
      Divider(
        color: Theme.of(context).primaryColor,
        thickness: 5,
        endIndent: 340,
        indent: 40,
        height: 0,
      ),
      Divider(
        height: 0,
        color: Theme.of(context).primaryColor,
        thickness: 2,
        endIndent: 340,
      ),
      ListTile(
          titleAlignment: titleAlignment,
          leading: DropdownButton(
            value: 0,
            // focusColor: Colors.transparent,
            // isDense: true,
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            // elevation: 16,
            underline: Container(
              height: 2,
              color: Colors.transparent,
            ),
            items: const [
              DropdownMenuItem(value: 0, child: Text('Сортировать')),
              DropdownMenuItem(value: 1, child: Text('eng')),
              DropdownMenuItem(value: 2, child: Text('ru')),
            ],
            onChanged: (int? value) {},
          ),
          trailing: TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent.shade100,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {},
              icon: const Text('Фильтры'),
              label: const Icon(TablerIcons.adjustments_horizontal))),
  
      // pug,
      ListTile(
          dense: true,
          title: Text('Теги:'),
          subtitle: Row(
            children: [
              TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white54,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(100, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {},
                label: const Icon(
                  Icons.close,
                  size: 15,
                ),
                icon: const Text(
                  'тег 1',
                  style: TextStyle(fontSize: 13.5),
                ),
              ),
              const SizedBox(width: 5),
              TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white54,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(100, 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {},
                label: const Icon(
                  Icons.close,
                  size: 15,
                ),
                icon: const Text(
                  'тег 1',
                  style: TextStyle(fontSize: 13.5),
                ),
              ),
            ],
          )),
              Divider(
        color: Theme.of(context).primaryColor,
        thickness: 5,
        indent: 370,
        height: 0,
        endIndent: 30,
      ),
      Divider(
        height: 0,
        color: Theme.of(context).primaryColor,
        thickness: 2,
        indent: 370,
      ),
      Container(
        height: 480,
        child: ListView.builder(
            itemCount:
                10, // Здесь itemCount должен быть задан числом элементов в списке
            itemBuilder: (BuildContext context, int index) {
              return const ListTile(
                leading: CircleAvatar(child: Text('A')),
                title: Text('Headline'),
                subtitle: Text('Supporting text'),
                trailing: Icon(Icons.favorite_rounded),
              );
            }),
      ),
    ]));
  }
}
