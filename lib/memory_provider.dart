import 'package:diary/memory.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum MemoryAction {
  edit("Edit", Icons.edit),
  share("Share", Icons.share),
  delete("Delete", Icons.delete_forever);

  final String title;
  final IconData icon;

  const MemoryAction(this.title, this.icon);
}

class MemoryProvider extends ChangeNotifier {
  final Memory memory;

  MemoryProvider(this.memory);

  static final formatter = DateFormat("d MMM yy");

  String get formattedDate => formatter.format(memory.date);

  void onActionSelected(MemoryAction value) {
    switch (value) {
      case MemoryAction.edit:
      // TODO: Show edit screen
      case MemoryAction.share:
      // TODO: Show share menu
      case MemoryAction.delete:
      // TODO: Show delete confirmation dialog
    }
  }
}
