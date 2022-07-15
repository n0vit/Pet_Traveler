import 'package:flutter/material.dart';

class Topics extends StatefulWidget {
  final List<String> topicNames;
  final double spacing;
  const Topics({Key? key, required this.topicNames, required this.spacing}) : super(key: key);

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  int _selectedIndex = 0;

  _chip(BuildContext context, String labelText, i) {
    return ChoiceChip(
      label: Text(labelText),
      selected: _selectedIndex == i,
      onSelected: (bool selected) {
        setState(() {
          if (selected) {
            _selectedIndex = i;
          }
        });
      },
      padding: const EdgeInsets.symmetric(horizontal: 16),
      elevation: 1,
      labelStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: _selectedIndex == i
              ? Theme.of(context).colorScheme.onSecondaryContainer
              : Theme.of(context).colorScheme.onSurface),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
         ),
      selectedColor: Theme.of(context).colorScheme.secondaryContainer,
      backgroundColor: Theme.of(context).colorScheme.surface,
      disabledColor: Theme.of(context).colorScheme.surface,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> topics = [];
    for (int i = 0; i < widget.topicNames.length; i++) {
      final topic = _chip(context, widget.topicNames[i], i);
      topics.add(topic);
    }

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: widget.spacing,
      runAlignment:  WrapAlignment.start,
      children: topics,
    );
  }
}
