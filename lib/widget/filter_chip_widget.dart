import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class Friend {
  String label;
  Color color;
  bool isSelected;

  Friend(this.label, this.color, this.isSelected);
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  List friends = [
    Friend("Cabbage and lettuce", Colors.white, false),
    Friend("Cucumber and tomato", Colors.white, false),
    Friend("Onions and garlic", Colors.white, false),
    Friend("Peppers", Colors.white, false),
    Friend("Potatos", Colors.white, false),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 5.0,
      children: getFilteredFriend(),
    );
  }

  List<Widget> getFilteredFriend() {
    List<Widget> chips = [];
    for (int i = 0; i < friends.length; i++) {
      Widget item = FilterChip(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        label: Text(friends[i].label),
        labelStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 14,
            fontWeight: FontWeight.w500),
        backgroundColor: friends[i].color,
        selected: friends[i].isSelected,
        onSelected: (value) {
          setState(() {
            friends[i].isSelected = value;
          });
        },
        selectedColor: Color(0xffe2cbff),
      );
      chips.add(item);
    }
    return chips;
  }
}
