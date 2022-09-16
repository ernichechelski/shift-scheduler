import 'package:flutter/material.dart';

class ShiftsListComponent extends StatefulWidget {
  final List<ShiftsListComponentItem> items;

  ShiftsListComponent({Key? key, this.items = const []}) : super(key: key);

  @override
  _ShiftsListComponentState createState() => _ShiftsListComponentState();
}

class _ShiftsListComponentState extends State<ShiftsListComponent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                    color: widget.items[index].color,
                    border: Border.all(color: widget.items[index].color),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.items[index].title,
                            selectionColor: widget.items[index].color),
                        Text(widget.items[index].subtitle,
                            selectionColor: widget.items[index].color),
                        Switch(
                            value: widget.items[index].isActive,
                            onChanged: (bool value) {
                              setState(() {
                                widget.items[index].isActive = value;
                                widget.items[index].onChanged(value);
                              });
                            })
                      ],
                    ),
                    padding: EdgeInsets.all(10)),
              ));
        });
  }
}

/**
 * Example init:
 *  ShiftsListComponentItem(
 *    "10:00-11:00", 
 *    "Ernest Brzeski", 
 *    Color.fromARGB(255, 237, 27, 12), 
 *    true, 
 *    (bool value) {}
 *  )
 */
class ShiftsListComponentItem {
  String title;
  String subtitle;
  Color color;
  bool isActive;
  Function(bool isActive) onChanged;
  ShiftsListComponentItem(
      this.title, this.subtitle, this.color, this.isActive, this.onChanged);
}
